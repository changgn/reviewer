package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;

public class Admin_deleteAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String id = (String)request.getSession().getAttribute("id");
		String board_num = request.getParameter("board_num");
		
		if(id.equals("admin")){
			BoardDao boardDao = BoardDao.getInstance();
			boardDao.removeByBoardNum(board_num);
		}

        return "/administrator/admin_Delete.jsp";//해당 뷰
	}
}
