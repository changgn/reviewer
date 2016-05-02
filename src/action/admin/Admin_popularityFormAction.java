package action.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;

public class Admin_popularityFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		BoardDao boarddao = BoardDao.getInstance();
		List<String> boardList = null;
		boardList = boarddao.getPopularityList();
		System.out.println(boardList);
		
		request.setAttribute("boardList", boardList);
		return "/administrator/admin_popularityForm.jsp";
	}

}
