package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IdSearchNewAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		
		String phone_num = (String)request.getParameter("phone_num");
		
		String id= ""; //데이터 베이스 쿼리를 통해 아이디값 가져와서 저장
		
		return "idSearchNew.jsp";
	}

}
