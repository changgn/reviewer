package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;

public class AdminDelete implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String board_num = request.getParameter("board_num");
		
		BoardDao boardDao = BoardDao.getInstance();
		boardDao.removeByBoardNum(board_num);

		request.setAttribute("errorId", "errorId");

        return "/content/deleteContent.jsp";//해당 뷰
	}
}
