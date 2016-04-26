package action.profile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;
import mvc.dao.CategoryDao;
import mvc.dao.ComentDao;
import mvc.dao.FollowDao;
import mvc.dao.MemberDao;
import mvc.dao.PhotoDao;
import mvc.dao.ScrepDao;

public class MyProfileAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		MemberDao memberDao = new MemberDao();
		
		String id = (String) request.getSession().getAttribute("id"); // id값
		String category_id = (String) request.getSession().getAttribute("category_id"); // 관심카테고리
		String from_id = (String) request.getSession().getAttribute("from_id"); // 팔로워
		String to_id = (String) request.getSession().getAttribute("to_id"); // 팔로잉
		String board_num = (String) request.getSession().getAttribute("board_num"); // 게시글
		String screp_num = (String) request.getSession().getAttribute("screp_num"); //스크랩
		String writer = (String) request.getSession().getAttribute("writer"); // 작성자
		String follow = (String) request.getSession().getAttribute("follow"); // 팔로우
		String write_date = (String) request.getSession().getAttribute("write_date"); // 몇분전
		String content = (String) request.getSession().getAttribute("content"); // 글메뉴
		String coment_num = (String) request.getSession().getAttribute("coment_num"); // 댓글
		String photo = (String) request.getSession().getAttribute("photo"); // 사진
		
		CategoryDao categoryDao = CategoryDao.getInstance();
		FollowDao followDao = new FollowDao();
		BoardDao boardDao = new BoardDao();
		ScrepDao screptDao = new ScrepDao();
		ComentDao comentDao = new ComentDao();
		PhotoDao photoDao = new PhotoDao();
		
		int recommend_num = Integer.parseInt((String) request.getSession().getAttribute("recommend_num"));
		// 추천 수
		
		request.setAttribute("id", id);
		request.setAttribute("from_id", from_id);
		request.setAttribute("to_id", to_id);
		request.setAttribute("board_num", board_num);
		request.setAttribute("screp_num", screp_num);
		request.setAttribute("writer", writer);
		request.setAttribute("follow", follow);
		request.setAttribute("writer", writer);
		request.setAttribute("content", content);
		request.setAttribute("coment_num", coment_num);
		request.setAttribute("photo", photo);
		
		
		return "/profile/myProfile.jsp";
	}

}
