package action.profile;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;
import mvc.dao.CategoryDao;
import mvc.dao.ComentDao;
import mvc.dao.FollowDao;
import mvc.dao.MemberDao;
import mvc.dao.MembersCategoryDao;
import mvc.dao.PhotoDao;
import mvc.dao.ScrepDao;
import vo.BoardVo;
import vo.CategoryVo;
import vo.FollowVo;
import vo.MembersCategoryVo;

public class MyProfileAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
	/*	MemberDao memberDao = new MemberDao();
		MembersCategoryDao membersCategoryDao = MembersCategoryDao.getInstance();
		
		List category = null;
		
		String id = (String) request.getSession().getAttribute("id"); // id값

		category= membersCategoryDao.getlistById(id);//id 값을 통하여 카테고리 리스트를 가져온다.
		*/
		String id = (String) request.getSession().getAttribute("id");
		MembersCategoryDao membersCategoryDao = MembersCategoryDao.getInstance();
		CategoryDao categoryDao = CategoryDao.getInstance();
		
		// Vo들을 담기위한 list 변수생성
		List<MembersCategoryVo> membersCategoryList = null;
		List<CategoryVo> CategoryList = new ArrayList<CategoryVo>();
		
		// 해당 id의 카테고리id 가져오기
		membersCategoryList = membersCategoryDao.getlistById(id);
		// 카테고리id로 카테고리 가져오기
				for(MembersCategoryVo vo : membersCategoryList) {
					CategoryVo Category = categoryDao.getOne(vo.getCategory_id());
					CategoryList.add(Category);
				}
				request.setAttribute("CategoryList", CategoryList);
				
				
				/*Iterator it = null;
				it = CategoryList.iterator();
				while(it.hasNext()){
					String cate= it.next().toString();
					request.setAttribute("cate", cate);
				} */
				FollowDao followdao = FollowDao.getInstance();
				FollowVo fvo= new FollowVo();
				
				String from_id=request.getParameter("from_id");
				String to_id=request.getParameter("to_id");

				
				fvo.setFrom_id(from_id);
				fvo.setTo_id(to_id);
				
				int followerCount = followdao.countfrom(fvo);;
				int folloingCount = followdao.countto(fvo);;			
				
				//팔로워
				followerCount =followdao.countfrom(fvo);
				request.setAttribute("followerCount", followerCount);
				//팔로잉
				folloingCount = followdao.countto(fvo);
				request.setAttribute("folloingCount", folloingCount);
				
				//스크랩
				
				//게시글
				BoardDao boarddao = BoardDao.getInstance();
				BoardVo vo = new BoardVo();
				
				int board_num = 0;
				String contents ="";
				board_num = boarddao.getRecentBoardNumById(id);
				
				request.setAttribute("board_num", board_num);
				
			
				contents =boarddao.getContents(board_num);
				request.setAttribute("contents", contents);
		return "/profile/myProfile.jsp";
	}

}
