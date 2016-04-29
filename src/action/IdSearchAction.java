package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;

public class IdSearchAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
	
		MemberDao memberDao = new MemberDao();
		String message = null;
		String phone_num = request.getParameter("phone_num");
		System.out.println(phone_num);
		
		String id = memberDao.idSearch(phone_num);
		if(id==null) {
			message = "errorPhoneNum";
		}
		request.setAttribute("message", message);
		request.setAttribute("id", id);
		
		return "/idpwSearch/idSearch.jsp";
	}

}
