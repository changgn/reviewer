package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class Admin_popularityProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		// 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
/*		// 데이터 처리할 객체 생성
		BoardDataBean article = new BoardDataBean();*/
		
		// 데이터 처리 :: 인기 게시글 삭제 시 DB 목록에서 제거 메소드 필요

/*        int num = Integer.parseInt(request.getParameter("num"));
        String pageNum = request.getParameter("pageNum");
        String passwd = request.getParameter("passwd");*/
        
		// D
/*		BoardDBBean dbPro = BoardDBBean.getInstance();
		dbPro.insertArticle(article);*/

		// 사용 속성
/*        request.setAttribute("pageNum", new Integer(pageNum));
        request.setAttribute("check", new Integer(check));*/
		
		return "admin_popularityPro.jsp";
	}

}
