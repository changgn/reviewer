package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;



public class LoginProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String selectedPasswd = null;
		String message = null;
		
		MemberDao memberDao = new MemberDao();
		
		selectedPasswd = memberDao.loginPro(id);
		if(selectedPasswd == null){ 
			// 입력한 ID의 레코드가 없을 경우 => 일치하는 ID 없음
			// 에러 메시지 저장
			message = "errID";
			request.setAttribute("message", message);
			
		} else { // 입력한 ID의 레코드가 있을 경우 => ID 일치
			if(selectedPasswd.equals(passwd)) { // 입력한 비밀번호와 select한 비밀번호가 같을 경우
				
				// 로그인
				// 해당 ID 세션에 저장
				request.getSession().setAttribute("id",id); 
				
				// 로그인 상태값 변경
				if(id.equals("admin")){	
					
					// 관리자 계정일 경우 = 0
					request.getSession().setAttribute("login_status", "0");
				} else { 
					
					// 일반 계정일 경우 = 1
					request.getSession().setAttribute("login_status", "1");
				}
			} else {
				// 입력한 비밀번호와 select한 비밀번호가 다를 경우
				// 에러 메시지 저장
				message = "errPwd";
				request.setAttribute("message", message);
			}
		}
		
		return "/logon/loginPro.jsp";
	}

}
