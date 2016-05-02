package action.content;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;

public class DeleteContentAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String id = (String)request.getSession().getAttribute("id");
		String writer = request.getParameter("id");
		String board_num = request.getParameter("board_num");
		
		if(id.equals(writer)) { // 작성자와 로그인한 아이디가 같으면
			BoardDao boardDao = BoardDao.getInstance();
			boardDao.removeByBoardNum(board_num);
		} else {
			request.setAttribute("errorId", "errorId");
		}
        return "/content/deleteContent.jsp";//해당 뷰
	}
}
