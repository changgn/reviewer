package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;
import vo.*;


public class ModifyFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
	
		String id = (String)request.getSession().getAttribute("id");
	
		MemberDao memberDao = new MemberDao();
		
		MembersVo membersVo = memberDao.modifyForm(id);
		
		
		
		
		/*아이디값으로 나머지 정보가져와서 설정*/
	/*	LogonDBBean manager = LogonDBBean.getInstance();
		MembersVo membersvo = manager.getMember(id);
		*/
		request.setAttribute("m", membersVo);
	
		
		
		return "/logon/modifyForm.jsp";
	}

}
