package action.follow;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;
import vo.BoardVo;
import vo.FollowVo;
import vo.MembersVo;

public class FollowerProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String myid = (String) request.getSession().getAttribute("id");
		String from_id = request.getParameter("from_id");



		FollowDao fd = new FollowDao(myid);
		
		
		fd.addfrom(from_id);
	
		
		fd.removefrom(from_id);

		
		return "followerPro.jsp";
	}

}
