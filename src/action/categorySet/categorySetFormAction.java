package action.categorySet;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import vo.CategoryVo;
import vo.MembersCategoryVo;
import mvc.dao.CategoryDao;
import mvc.dao.MembersCategoryDao;

public class categorySetFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		// 로그인한 id값 가져오기
		String id = (String) request.getSession().getAttribute("id");
		id = "bal";
		int CategoryListSize = 0;

		// dao 인스턴스 생성
		MembersCategoryDao membersCategoryDao = MembersCategoryDao.getInstance();
		CategoryDao categoryDao = CategoryDao.getInstance();
		
		//Vo들을 담기위한 list 변수생성
		List<MembersCategoryVo> membersCategoryList = null;
		List<CategoryVo> CategoryList = new ArrayList<CategoryVo>();
		
		// 해당 id의 카테고리id 가져오기
		membersCategoryList = membersCategoryDao.getCategoryID(id);
		
		// 카테고리id로 카테고리 정보 가져오기
		for(MembersCategoryVo vo : membersCategoryList) {
			CategoryVo Category = categoryDao.getOne(vo.getCategory_id());
			CategoryList.add(Category);
		}
		
		CategoryListSize = CategoryList.size();
		
		// 뷰에서 사용할 Attribute 추가
		request.setAttribute("CategoryListSize", CategoryListSize);
		request.setAttribute("CategoryList", CategoryList);
		
        return "/categorySet/categorySetForm.jsp";//해당 뷰
	}

}
