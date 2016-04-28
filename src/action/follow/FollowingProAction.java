package action.follow;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;
import vo.FollowVo;

public class FollowingProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String myid = (String) request.getSession().getAttribute("id");
		String to_id = request.getParameter("to_id");

		FollowDao fd = new FollowDao(myid);
		
		
		fd.addfrom(to_id);
	
		
		fd.removefrom(to_id);

		
		return "followingPro.jsp";
	}

}
