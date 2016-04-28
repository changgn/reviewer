package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IdPwSearchNewAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String message = request.getParameter("message");
		request.setAttribute("message", message);
	
		return "/idpwSearch/idpwSearchNew.jsp";
	}

}
