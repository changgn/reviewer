package action.follow;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;
import vo.FollowVo;

public class FollowerFormAction implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		// 프로필페이지로부터 받은 id
		String to_id = request.getParameter("id");
		System.out.println("to_id : " + to_id);
		
		// 팔로우 체크
		int cn = 0;
		List<String> fromIdList = null;
		
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		
		fromIdList = followdao.getlistfrom(to_id);
		
		cn=1;
			
		request.setAttribute("cn", cn);
		request.setAttribute("id", to_id);
		request.setAttribute("fromIdList", fromIdList);
		
		return "/follow/followerForm.jsp";
	}
}