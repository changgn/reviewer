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
import vo.PhotoVo;
import vo.ScrepVo;

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
				
				String from_id=request.getParameter("id");
				String to_id=request.getParameter("id");

				

				
				int followerCount = Integer.valueOf(followdao.countfrom(from_id));
				int folloingCount = Integer.valueOf(followdao.countto(to_id));			
				
				//팔로워
				followerCount =followdao.countfrom(from_id);
				request.setAttribute("followerCount", followerCount);
				//팔로잉
				folloingCount = followdao.countto(to_id);
				request.setAttribute("folloingCount", folloingCount);
				
				String paramId= request.getParameter("id");
				
				request.setAttribute("paramId", paramId);
				
				
				
				
	/*			//게시글
				BoardDao boardDao = BoardDao.getInstance();
				BoardVo vo = new BoardVo();
				
				int board_num = 0;
				System.out.println(id);
				board_num = boardDao.getRecentBoardNumById(id);
			
				request.setAttribute("board_num", board_num);
				*/
			
				/*// 변수 생성
				List<PhotoVo> photoList = null;
				BoardVo board = new BoardVo();
				
				// 인스턴스 생성
				PhotoDao photoDao = PhotoDao.getInstance();
		
				
				// 게시물 번호로 정보 가져오기
				board = boardDao.getByBoardNum(board_num);
				photoList = photoDao.getListByBoardNum(board_num);
				
				if(board != null) { // 가져온 게시글 정보가 있다면
					request.setAttribute("board", board);
				}
				if(photoList != null) { // 가져온 사진 정보가 있다면
					request.setAttribute("photoList", photoList);
				}
				
				//스크랩
				ScrepDao screpDao = new ScrepDao();
				ScrepVo screpVo = new ScrepVo();
				
				screpVo.setId(id);
				*/
			
				
				return "/profile/myProfile.jsp";
	}

}
