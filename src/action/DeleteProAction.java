package action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;


public class DeleteProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		MemberDao dao = new MemberDao();
		HashMap map = new HashMap();
		
		String id = (String)request.getSession().getAttribute("id");
		String passwd = request.getParameter("passwd");
		
		map.put("id", id);
		map.put("passwd", passwd);
		dao.deletePro(map);
		
		return "/logon/deletePro.jsp";
	}

}
