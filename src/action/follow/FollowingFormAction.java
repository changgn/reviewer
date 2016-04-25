package action.follow;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class FollowingFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String id = (String)request.getSession().getAttribute("id");
		
		request.setAttribute("id", id);
		
		return "followingForm.jsp";
	}

}
