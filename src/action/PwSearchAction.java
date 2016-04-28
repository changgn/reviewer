package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;
import vo.MembersVo;

public class PwSearchAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		MemberDao memberDao= new MemberDao();
		
		String id = (String) request.getParameter("id");
	    String phone_num = (String) request.getParameter("phone_num2");
		String email = (String) request.getParameter("email");
		
		MembersVo vo = new MembersVo();
		
		vo.setPhone_num(phone_num);
		vo.setId(id);
		vo.setEmail(email);
		
		MembersVo passwdVo = memberDao.pwSearch(vo);
		
		String passwd= passwdVo.getPasswd();
		
		request.setAttribute("passwd", passwd);
		
		request.setAttribute("id", id);
		request.setAttribute("phone_num", phone_num);
		request.setAttribute("email", email);
		
		return "/idpwSearch/pwSerach.jsp";
	}

}
