package action.main;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;
import mvc.dao.CategoryDao;
import mvc.dao.ComentDao;
import mvc.dao.MembersCategoryDao;
import mvc.dao.PhotoDao;
import vo.BoardVo;
import vo.CategoryVo;
import vo.PhotoVo;

public class MainFormAction implements CommandAction {
	
		@Override
		public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
			request.setCharacterEncoding("UTF-8");
			String id = (String)request.getSession().getAttribute("id"); // 로그인 한 id
			String login_status = (String)request.getSession().getAttribute("login_status");	//로그인 상태
			
			BoardDao boardDao = BoardDao.getInstance();
			PhotoDao photoDao = PhotoDao.getInstance();
			ComentDao comentDao = ComentDao.getInstance();
			CategoryDao categoryDao = CategoryDao.getInstance();
			MembersCategoryDao membersCategoryDao = MembersCategoryDao.getInstance();
			
			List<BoardVo> boardList = null;
			List<HashMap> allBoardList = new ArrayList<>();
			List<String> categoryIdList = null;
			
			if(login_status==null){
				login_status = "2";	// 로그인 안된 상태
				request.getSession().setAttribute("login_status", login_status);
			}
			if(login_status.equals("2")){ // 로그인 안된 경우
				
				//모든 게시글을 가져온다
				boardList = boardDao.getList();
				
			} else { // 로그인 된 경우
				// 로그인 한 아이디의 카테고리 정보를 가져온다
				categoryIdList = membersCategoryDao.getCategoryIdById(id);
				
				if(categoryIdList.size() == 0){ // 로그인 한 아이디의 카테고리 정보가 없을 경우
					
					//모든 게시글을 가져온다
					boardList = boardDao.getList();
				} else { // 로그인 한 아이디의 카테고리 정보가 있을 경우
					
					//카테고리 정보에 따른 게시글을 가져온다
					boardList = boardDao.getListByCategoryId(categoryIdList);
				}
				
			}
			if(boardList!=null)	{
				for(BoardVo vo : boardList) {
					HashMap<String, Object> boardMap = new HashMap<String, Object>();
					PhotoVo photo = photoDao.getOneByBoardNum(vo.getBoard_num());
					CategoryVo category = categoryDao.getOne(vo.getCategory_id());
					String commentCount = comentDao.getCountByBoardNum(vo.getBoard_num());
					if(commentCount==null)	commentCount="0";
					boardMap.put("board", vo);
					boardMap.put("photo", photo);
					boardMap.put("category", category);
					boardMap.put("commentCount", commentCount);
					allBoardList.add(boardMap);
				}
			}
			
			request.setAttribute("allBoardList", allBoardList);
			return "/main/mainForm.jsp";
			
		}
	
}
