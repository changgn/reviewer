package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import vo.BoardVo;

public class Admin_popularityFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		BoardVo bv = new BoardVo();
		

		String id = bv.getId();
		int rec_num = bv.getRecommend_num();
		
		request.setAttribute("id", id);
		request.setAttribute("rec_num", rec_num); // 추천수

		return "/administrator/admin_popularityForm.jsp";
	}

}
