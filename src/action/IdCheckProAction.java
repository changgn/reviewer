package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;
import vo.MembersVo;

public class IdCheckProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		
		String ch=null;
		MemberDao memberdao = new MemberDao();
		
		ch = memberdao.idCheck(id);
		
		request.setAttribute("idch", ch);
		
		
		return "/logon/idCheckForm.jsp";
	}

}
