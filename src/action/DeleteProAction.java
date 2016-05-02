package action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;
import vo.MembersVo;


public class DeleteProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String id = (String)request.getSession().getAttribute("id");
		String passwd = request.getParameter("passwd");
		
		MemberDao dao = new MemberDao();
		
		String savedPasswd = dao.getPasswdById(id);
		
		if(passwd.equals(savedPasswd)){	// 입력한 비밀번호와 저장된 비밀번호가 같을 경우
			
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("id", id);
			map.put("passwd", passwd);
			dao.deletePro(map);
			
			request.getSession().invalidate();
			
		} else {	// 입력한 비밀번호와 저장된 비밀번호가 다를 경우
			request.setAttribute("errorPasswd", "errorPasswd");
		}

		return "/logon/deletePro.jsp";
	}

}
