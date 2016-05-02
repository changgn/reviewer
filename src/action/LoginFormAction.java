package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoginFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String login_status =  (String)request.getSession().getAttribute("login_status");	//로그인 상태값 가져오기
		
		if(login_status==null){
			login_status = "2";	// 로그인 안된 상태
			request.getSession().setAttribute("login_status", login_status);
		}
		
		String message = request.getParameter("message");
		request.setAttribute("message", message);
		request.setAttribute("login_status", login_status);
		
		return "/logon/loginForm.jsp";
	}

}
