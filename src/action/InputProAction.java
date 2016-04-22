package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class InputProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		//회정 정보를 가져온다. 
		String id=request.getParameter("id") ;
		String passwd=request.getParameter("passwd");
		String name= request.getParameter("name");
		String email = request.getParameter("email");
		String phone_num=request.getParameter("phone_num");
		String gender = request.getParameter("gender");
		
		//DB 객체에 저장 set을 이용해서 
		
		return "/logon/inputPro.jsp";
	}

}
