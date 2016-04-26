package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;
import vo.MembersVo;

public class PwSearchAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		// pw(비밀번호)를 찾기위해 값을 가져온다.
		MembersVo m = new MembersVo();
		
		String id = (String) request.getParameter("id");
	    String phone_num = (String) request.getParameter("phone_num2");
		String email = (String) request.getParameter("email");
		
		m.setId(id);
		m.setPhone_num(phone_num);
		m.setEmail(email);
		
		MemberDao memberDao = new MemberDao();
		
		memberDao.pwSearch(m);
		
//		String id= ""; //데이터 베이스 쿼리를 통해 아이디값 가져와서 저장
//		String passwd = "" ; //데이터 베이스 쿼리를 통해 아이디값 가져와서 저장

//		request.setAttribute("id", id);
//		request.setAttribute("phone_num", phone_num);
//		request.setAttribute("email", email);
		
		return "/idpwSearch/pwSerach.jsp";
	}

}
