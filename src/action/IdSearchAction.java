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
		
		String phone_num = (String)request.getParameter("phone_num");
		
		 MembersVo id = memberDao.idSearch(phone_num);
	
		 request.setAttribute("id", id.getId());
		
		return "/idpwSearch/idSearch.jsp";
	}

}
