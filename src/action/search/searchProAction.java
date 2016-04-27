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
		
        return "/search/searchPro.jsp";//해당 뷰
	}

}
