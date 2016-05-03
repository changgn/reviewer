package action.admin;

import java.util.ArrayList;
import java.util.HashMap;
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
		
		BoardDao boarddao = BoardDao.getInstance();
		List<BoardVo> boardList = null;
		boardList = boarddao.getPopularityList();
		List<HashMap> allBoardList = new ArrayList<>();
		System.out.println(boardList);
		
		for(BoardVo vo : boardList) {
			HashMap<String, Object> boardMap = new HashMap<String, Object>();
			boardMap.put("board", vo);
			allBoardList.add(boardMap);
		}
		
		request.setAttribute("boardList", allBoardList);
		return "/administrator/admin_popularityForm.jsp";
	}

}
