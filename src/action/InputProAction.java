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
		request.setCharacterEncoding("UTF-8");
		
		MembersVo membersvo = new MembersVo();
		MemberDao memberDao= new MemberDao();
		
		//회원 정보를 가져온다. 
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
		
		MembersVo cf1= memberDao.deleteCf(id);
		//request.setAttribute("MemberVo", cf1);
		if(cf1 != null){
			String smessage="회원 가입에 성공하셨습니다.";
			request.setAttribute("smessage", smessage);
		}else{
			String fmessage="회원 가입에 실패하셨습니다.";
			request.setAttribute("fmessage", fmessage);
		}
		 
		return "/logon/inputPro.jsp";
	}

}
