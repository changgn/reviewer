package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class Admin_memberFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String pageNum = request.getParameter("pageNum"); // 페이지 번호

		// pageNum이 null이면 1로 저장
        if (pageNum == null) {
            pageNum = "1";
        }
        // 한 페이지의 보여줄 회원 수
        int pageSize = 15;
        // 기준페이지번호
        int standardPageNumber = Integer.parseInt(pageNum); 
        // 한 페이지의 시작글 번호
        int startWriteNumber = (standardPageNumber - 1) * pageSize + 1; 
        // 한 페이지의 마지막 글번호
        int endWriteNumber = standardPageNumber * pageSize;
        // 전체 회원의 수를 저장할 변수 선언
        int count = 0;
        // 글목록에 표시할 회번호 변수 선언
        int number=0;

        // DB에서 리스트를 전해받을 리스트 선언
        /*List articleList = null;*/
        //DB연동
        /*BoardDBBean dbPro = BoardDBBean.getInstance()*/
        // 전체 글의 수를 DB에서 세어 count에 저장
        /*count = dbPro.getArticleCount();*/
       
        /*if (count > 0) { // 글이 있다면
            articleList = dbPro.getArticles(startWriteNumber, endWriteNumber);//현재 페이지에 해당하는 글 목록
        } else { // 글이 없으면
            articleList = Collections.EMPTY_LIST;
        }*/

        // 글목록에 표시할 글번호 저장
        number=count-(pageSize-1)*pageSize;
        
        //해당 뷰에서 사용할 속성
        request.setAttribute("standardPageNumber", new Integer(standardPageNumber)); // 기준번호
        request.setAttribute("startWriteNumber", new Integer(startWriteNumber)); // 페이지 시작번호
        request.setAttribute("endWriteNumber", new Integer(endWriteNumber)); // 페이지 끝번호
        request.setAttribute("count", new Integer(count)); // 전체 글 수
        request.setAttribute("pageSize", new Integer(pageSize)); // 페이지 크기
        request.setAttribute("number", new Integer(number)); // 회원목록 글번호
/*        request.setAttribute("articleList", articleList);*/ // 리스트
       
        return "/admin_memberForm.jsp";//해당 뷰
	}

}
