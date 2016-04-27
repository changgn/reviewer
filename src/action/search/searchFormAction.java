package action.search;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class searchFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		int firstCheck = 0;
		// 검색할 카테고리 갯수 가져오기
		String addcount = request.getParameter("addcount");
		if(addcount == null) {addcount = "0";}
		int addcount_int = Integer.parseInt(addcount);
		
		// 검색할 내용 가져오기
		String searchContent = request.getParameter("searchContent");

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
			}
		}
		
		request.setAttribute("firstCheck", firstCheck);
		
        return "/search/searchForm.jsp";//해당 뷰
	}

}
