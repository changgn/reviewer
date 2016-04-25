package action.follow;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class FollowerFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		// 
		String id1 = (String)request. getParameter("id");
		
		// 
		String id2 = (String)request.getSession().getAttribute("id");
		
		String from_id = (String)request.getSession().getAttribute("from_id");
		
		request.setAttribute("id", id1);
		request.setAttribute("id2", id2);
		request.setAttribute("from_id", from_id);
		
		return "followerForm.jsp";
	}
}
