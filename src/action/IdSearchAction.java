package action;

import java.util.List;

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
		System.out.println("아이디를 찾을 핸드폰 번호 : " + phone_num);
		
		List<String> idList = memberDao.idSearch(phone_num);
		if(idList.size()==0) {
			message = "errorPhoneNum";
		}
		request.setAttribute("message", message);
		request.setAttribute("idList", idList);
		
		return "/idpwSearch/idSearch.jsp";
	}

}
