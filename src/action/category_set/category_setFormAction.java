package action.category_set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class category_setFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		// 로그인한 id값 가져오 
		Object id = request.getSession().getAttribute("");
		
		// 해당 id의 카테고리 정보 가져오기
		
		//
        return "/category_set/category_setForm.jsp";//해당 뷰
	}

}
