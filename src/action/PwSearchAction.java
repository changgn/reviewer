package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;
import vo.MembersVo;

public class PwSearchAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		MemberDao memberDao= new MemberDao();
		
		String id = (String) request.getParameter("id");
	    String phone_num = (String) request.getParameter("phone_num2");
		String email = (String) request.getParameter("email");
		
		MembersVo vo = new MembersVo();
		
		vo.setPhone_num(phone_num);
		vo.setId(id);
		vo.setEmail(email);
		
		MembersVo passwdVo = memberDao.pwSearch(vo);
		
		String passwd = null;
		String message = null;
		if(passwdVo!=null){
			passwd = passwdVo.getPasswd();
		} else {
			message = "incorrect";
		}
		
		request.setAttribute("passwd", passwd);
		request.setAttribute("message", message);
		
		return "/idpwSearch/pwSearch.jsp";
	}

}
