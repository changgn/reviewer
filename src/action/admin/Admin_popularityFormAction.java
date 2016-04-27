package action.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;

public class Admin_popularityFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String id = (String) request.getSession().getAttribute("id");
		
		// 게시글이 추천 받은 수


        //해당 뷰에서 사용할 속성
		request.setAttribute("id", id); // 로그인 아이디

		return "/admin_popularityForm.jsp";
	}

}
