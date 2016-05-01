package action.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;
import mvc.dao.MembersCategoryDao;
import vo.BoardVo;

public class MainFormAction implements CommandAction {
	
		@Override
		public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
			request.setCharacterEncoding("UTF-8");
			String id = (String)request.getSession().getAttribute("id"); // 로그인 한 id
			String login_status =  (String)request.getSession().getAttribute("login_status");	//로그인 상태
			
			BoardDao boardDao = BoardDao.getInstance();
			MembersCategoryDao membersCategoryDao = MembersCategoryDao.getInstance();
			List<BoardVo> boardList = null;
			List<String> categoryIdList = null;
			
			if(login_status==null){
				login_status = "2";	// 로그인 안된 상태
				request.getSession().setAttribute("login_status", login_status);
			}
			
			if(login_status=="2"){ // 로그인 안된 경우
				
				//모든 게시글을 가져온다
				boardList = boardDao.getList();
				
			}else{ // 로그인 된 경우
				
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
			
			request.setAttribute("boardList", boardList);
			
			return "/main/mainForm.jsp";
			
		}
	
}
