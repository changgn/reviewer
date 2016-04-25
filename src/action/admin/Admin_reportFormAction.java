package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class Admin_reportFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String id = (String)request.getSession().getAttribute("id");
		
		// 게시글이 신고 받은 수
		int report_num = Integer.parseInt((String) request.getSession().getAttribute("report_num"));
        // DB에서 리스트를 전해받을 리스트 선언
        /*List articleList = null;*/
        //DB연동
        /*BoardDBBean dbPro = BoardDBBean.getInstance()*/
        // 전체 회원 수를 DB에서 세어 count에 저장
        /*count = dbPro.getArticleCount();*/
       
        /*if (count > 0) { // 회원이 있다면
            articleList = dbPro.getArticles();//현재 페이지에 해당하는 글 목록
        } else { // 회원이 없으면
            articleList = Collections.EMPTY_LIST;
        }*/

        //해당 뷰에서 사용할 속성
        request.setAttribute("id", id); // 작성자 id
        request.setAttribute("report_num", report_num); // 추천수
		
		return "/admin_reportForm.jsp";
	}

}
