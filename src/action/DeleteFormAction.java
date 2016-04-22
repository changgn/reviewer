package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class DeleteFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String id= request.getParameter("id");
		request.getSession().setAttribute("id", id);
		
		//id를 이용하여 회원 정보를 불러온다. 
		return "/logon/deleteForm.jsp";
	}

}
