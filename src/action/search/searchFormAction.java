package action.search;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import vo.CategoryVo;
import vo.MembersCategoryVo;
import mvc.dao.CategoryDao;
import mvc.dao.MembersCategoryDao;

public class searchFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		
		
        return "/search/searchForm.jsp";//해당 뷰
	}

}
