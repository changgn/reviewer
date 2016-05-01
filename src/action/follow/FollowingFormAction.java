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
		
		// 프로필페이지로부터 받은 id
		String profileId = (String) request.getParameter("id");
		
		// 팔로우 체크
		int cn = 0;
		List<String> FollowingList = null;
		
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
			
		// 객체 생성
		FollowingList = followdao.getlistto(profileId);
		cn=1;
		
		request.setAttribute("cn", cn);
		request.setAttribute("profileId", profileId);
		request.setAttribute("FollowingList", FollowingList);
		
		return "/follow/followingForm.jsp";
	}
}
