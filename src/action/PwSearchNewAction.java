package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PwSearchNewAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String id = (String) request.getParameter("id");
	    String phone_num = (String) request.getParameter("phone_num");
		String email = (String) request.getParameter("email");
		
		String passwd = "" ; //데이터 베이스 쿼리를 통해 아이디값 가져와서 저장
		
		return "pwSearchNew.jsp";
	}

}
