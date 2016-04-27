package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class Admin_reportFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		// 로그인한 id값
		String id = (String) request.getSession().getAttribute("id");
		// 게시글이 추천 받은 수

        //해당 뷰에서 사용할 속성
		request.setAttribute("id", id);

        
		return "/admin_reportForm.jsp";
	}

}
