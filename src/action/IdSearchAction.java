package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;
import vo.MembersVo;

public class IdSearchAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
	
		MemberDao memberDao= new MemberDao();
		String message = null;
		String phone_num = (String)request.getParameter("phone_num");
		
		MembersVo id = memberDao.idSearch(phone_num);
		if(id==null) {
			message = "errorPhoneNum";
		}
		request.setAttribute("message", message);
		request.setAttribute("id", id.getId());
		
		return "/idpwSearch/idSearch.jsp";
	}

}
