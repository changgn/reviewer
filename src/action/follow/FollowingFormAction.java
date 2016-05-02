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
		
		// 팔로잉 폼으로부터 받은 id
		String from_id = request.getParameter("id");
		String id = request.getParameter("toId");
		
		// 객체 생성
		List<String> toIdList = null;
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		toIdList = followdao.getlistto(from_id);
		
		

		request.setAttribute("id", from_id);
		request.setAttribute("toIdList", toIdList);
		
		return "/follow/followingForm.jsp";
	}
}
