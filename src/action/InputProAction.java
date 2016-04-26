package action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;
import vo.*;



public class InputProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		MembersVo membersvo = new MembersVo();
		MemberDao memberDao= new MemberDao();
		
		
		//회정 정보를 가져온다. 
		String id=request.getParameter("id") ;
		String passwd=request.getParameter("passwd");
		String name= request.getParameter("name");
		String email = request.getParameter("email");
		String phone_num=request.getParameter("phone_num");
		String gender = request.getParameter("gender");
		String birth = request.getParameter("birth");
		Date date= new Date();
		
		//DB 객체에 저장 set을 이용해서 
		membersvo.setId(id);
		membersvo.setPasswd(passwd);
		membersvo.setName(name);
		membersvo.setEmail(email);
		membersvo.setBirth(birth);
		membersvo.setGender(gender);
		membersvo.setPhone_num(phone_num);
		membersvo.setReg_date(date);
		
		memberDao.inputPro(membersvo);
		
		return "/logon/inputPro.jsp";
	}

}
