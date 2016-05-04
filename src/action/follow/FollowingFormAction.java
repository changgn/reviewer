package action.follow;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;

public class FollowingFormAction implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		// 로그인 id
		String my_id = (String)request.getSession().getAttribute("id");
		// 프로필 페이지로부터 받은 id
		String from_id = request.getParameter("id");
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		
		// 내가 팔로우한 팔로잉 목록
		List<String> mytoIdList = followdao.getlistfrom(my_id);
		
		// 프로필 페이지 id의 팔로잉 목록
		List<String> toIdList = followdao.getlistto(from_id);

		request.setAttribute("id", from_id);
		
		request.setAttribute("toIdList", toIdList);
		
		return "/follow/followingForm.jsp";
	}
}
