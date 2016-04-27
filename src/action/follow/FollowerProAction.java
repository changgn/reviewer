package action.follow;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;
import vo.FollowVo;

public class FollowerProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		// 로그인 id
		String id = (String) request.getSession().getAttribute("id");
		
		FollowDao followdao = new FollowDao();
		
		return "followerPro.jsp";
	}

}
