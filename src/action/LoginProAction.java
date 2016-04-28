package action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.dao.MemberDao;
import vo.MembersVo;



public class LoginProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		MemberDao memberDao = new MemberDao();
		HashMap<String,String> hashMap = new HashMap();
		MembersVo vo = null;
		hashMap.put("id", id);
		hashMap.put("passwd", passwd); 
		
		vo =memberDao.loginPro(hashMap);
		
		if(vo == null){
			String message="아이디와 비밀 번호가 일치 하지 않습니다.";
		}else{
			request.getSession().setAttribute("login",id );
		}
		
		return "/logon/loginPro.jsp";
	}

}
