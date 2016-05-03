package action.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;
import vo.BoardVo;

public class Admin_popularityFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		// 인스턴스 생성
		BoardDao boarddao = BoardDao.getInstance();
		// 객체 생성
		List<BoardVo> boardList = null;
		
		boardList = boarddao.getPopularityList();

		System.out.println(boardList);
		request.setAttribute("boardList", boardList);
		return "/administrator/admin_popularityForm.jsp";
	}

}
