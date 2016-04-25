package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class Admin_reportProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		// 한글 인코딩
		request.setCharacterEncoding("UTF-8");
		
/*		// 데이터 처리할 객체 생성
		BoardDataBean article = new BoardDataBean();*/
		
		// 데이터 처리, 신고 게시글 삭제 시 DB 목록에서 제거


		// DB처리
/*		BoardDBBean dbPro = BoardDBBean.getInstance();
		dbPro.insertArticle(article);*/

		// 사용 속성
		
		return "/admin_reportPro.jsp";
	}

}
