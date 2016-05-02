package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;
import vo.*;


public class ModifyProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
	
		//회원 수정 입력폼에서 정보들을 가져옵니다 .
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name=request.getParameter("name");
		String birth=request.getParameter("birth");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String phone_num=request.getParameter("phone_num");
		
		MemberDao dao = new MemberDao();
		MembersVo m = new MembersVo();
		
		m.setId(id);
		m.setPasswd(passwd);
		m.setName(name);
		m.setBirth(birth);
		m.setGender(gender);
		m.setEmail(email);
		m.setPhone_num(phone_num);
		
		int n = dao.modifyPro(m);
		if(n>0) {
			System.out.println("회원 정보 수정 성공");
		} else {
			System.out.println("회원 정보 수정 실패");
		}
		
		return "/logon/modifyPro.jsp";
	
	}

}
