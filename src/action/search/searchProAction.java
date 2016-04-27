package action.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.MembersCategoryDao;
import vo.MembersCategoryVo;

public class searchProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		// 검색할 카테고리 갯수 가져오기
		String addcount = request.getParameter("addcount");
		
		// 검색할 내용 가져오기
		String searchContent = request.getParameter("searchContent");

		if(addcount != null) {
			int addcount_int = Integer.parseInt(addcount);
			if(addcount_int != 0) {
				for(int i=1; i<addcount_int+1; i++) {
					String addname = "add" + i;
					String category_id = request.getParameter(addname);
				}
			}
		}
        return "/search/searchPro.jsp";//해당 뷰
	}

}
