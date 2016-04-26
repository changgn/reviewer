package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.*;


public class ModifyProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
	
		String id = (String)request.getSession().getAttribute("id");
		
		//회원 수정 입력폼에서 정보들을 가져옵니다 .
		String name=request.getParameter("name");
		String birth=request.getParameter("birth");
		String phone_num=request.getParameter("phone_num");
		String email=request.getParameter("email");
		
		
		MembersVo m = new MembersVo();
		// 받아온 정보들을 DB에 저장
		
		return "/logon/modifyPro.jsp";
	
	}

}
