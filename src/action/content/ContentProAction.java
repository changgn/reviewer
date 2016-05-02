package action.content;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.ComentDao;
import vo.ComentVo;

public class ContentProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		// 파라미터 값 받아오기
		Integer board_num = Integer.parseInt(request.getParameter("board_num"));
		String id = (String) request.getSession().getAttribute("id");
		String content = request.getParameter("comment_textarea");
		
		ComentVo comentVo = new ComentVo();
		
		comentVo.setBoard_num(board_num);
		comentVo.setId(id);
		comentVo.setContent(content);
		
		ComentDao comentDao = ComentDao.getInstance();
		int check = comentDao.insert(comentVo);
		if(check>0) {
			System.out.println("댓글 저장 완료");
		} else {
			System.out.println("댓글 저장 실패");
		}
		
		request.setAttribute("board_num", board_num);
        return "/content/contentPro.jsp";//해당 뷰
	}

}
