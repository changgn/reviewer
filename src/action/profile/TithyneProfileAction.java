package action.profile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.MemberDao;

public class TithyneProfileAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
MemberDao memberDao = new MemberDao();
		
		String id = (String) request.getSession().getAttribute("id"); // id값
		id = "bal";
		
		String category_id = (String) request.getSession().getAttribute("category_id"); // 관심카테고리
		String from_id = (String) request.getSession().getAttribute("from_id"); // 팔로워
		String to_id = (String) request.getSession().getAttribute("to_id"); // 팔로잉
		String recommend_num = (String) request.getSession().getAttribute("recommend_num"); // 추천수
		String screp_num = (String) request.getSession().getAttribute("screp_num"); //스크랩
		String writer = (String) request.getSession().getAttribute("writer"); // 작성자
		String follow = (String) request.getSession().getAttribute("follow"); // 팔로우
		String write_date = (String) request.getSession().getAttribute("write_date"); // 몇분전
		String content = (String) request.getSession().getAttribute("content"); // 글메뉴
		String coment_num = (String) request.getSession().getAttribute("coment_num"); // 댓글
		String photo = (String) request.getSession().getAttribute("photo"); // 사진
		
		
		
		return "/profile/tithyneProfile.jsp";
	}

}
