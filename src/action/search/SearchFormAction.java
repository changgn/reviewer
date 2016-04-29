package action.search;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;
import vo.BoardVo;

public class SearchFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String login_status =  (String)request.getSession().getAttribute("login_status");	// 로그인 상태값 가져오기
		if(login_status==null){	
			// 로그인 상태값이 없으면 비로그인 상태값 저장
			login_status = "2";
			request.getSession().setAttribute("login_status", login_status);
		}
		
		BoardDao boardDao = BoardDao.getInstance();
		List<BoardVo> boardList = null;
		int firstCheck = 0;
		
		// 검색할 카테고리 갯수 가져오기
		String addcount = request.getParameter("addcount");
		if(addcount == null) {addcount = "0";}
		int addcount_int = Integer.parseInt(addcount);
		
		// 검색할 내용 가져오기
		String searchContent = request.getParameter("searchContent");
		int searchCount = 0;

		if(searchContent != null) {
			// 처음 실행이 아닐 시
			firstCheck = 1;
			if(addcount_int != 0) {	
				// 카테고리를 선택했을 때
				for(int i=1; i<addcount_int+1; i++) {
					String addname = "add" + i;
					// 검색할 카테고리 ID 가져오기
					String category_id = request.getParameter(addname);
					System.out.println("검색할 카테고리 id : " + category_id);
				}
				System.out.println("검색할 카테고리 수 : " + addcount_int);
				System.out.println("검색할 내용 : " + searchContent);
			} else {	
				// 카테고리를 선택하지 않았을 때
				System.out.println("검색할 카테고리 수 : " + addcount_int);
				System.out.println("검색할 내용 : " + searchContent);
				boardList = boardDao.getList();
			}
		}
		if(boardList!=null) {
			searchCount = boardList.size();
		} 
		request.setAttribute("searchCount", searchCount);
		request.setAttribute("firstCheck", firstCheck);
		request.setAttribute("boardList", boardList);
		
        return "/search/searchForm.jsp";//해당 뷰
	}

}
