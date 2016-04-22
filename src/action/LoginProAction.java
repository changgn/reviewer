package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoginProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		//데이터 베이스 로그인 처리 
		
		/*if(){
		request.getSession().setAttribute("id", id);
		}
		*/
		
		return "/logon/loginPro.jsp";
	}

}
