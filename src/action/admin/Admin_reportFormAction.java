package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import vo.BoardVo;

public class Admin_reportFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		
		BoardVo bv = new BoardVo();
		
		String id = bv.getId();
		int rep_num = bv.getReport_num();
		
		request.setAttribute("id", id);
		request.setAttribute("rep_num", rep_num); // 신고수
        
		return "/adminstrator/admin_reportForm.jsp";
	}

}
