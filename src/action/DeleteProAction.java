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
		MembersVo vo = new MembersVo();
		MemberDao dao = new MemberDao();
		HashMap map = new HashMap();
		
		String id = (String)request.getSession().getAttribute("id");
		String passwd = request.getParameter("passwd");
		
		map.put("id", id);
		map.put("passwd", passwd);
		dao.deletePro(map);
		
		vo = dao.deleteCf(id);
		
		if(vo==null){
			String smessage = "삭제 성공 하셨습니다.";
			request.setAttribute("smessage", smessage);
		}else{
			String fmessage ="삭제 실패했습니다.";
			request.setAttribute("fmessage", fmessage);
		}
		
		return "/logon/deletePro.jsp";
	}

}
