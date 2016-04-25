package action.categorySet;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import vo.MembersCategoryVo;
import mvc.dao.MembersCategoryDao;

public class categorySetFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		// 로그인한 id값 가져오기
		String id = (String) request.getSession().getAttribute("id");
		id = "bal";

		// dao 인스턴스 생성
		MembersCategoryDao dao = MembersCategoryDao.getInstance();
		
		// MembersCategoryVo들을 담기위한 list 변수생성
		List<MembersCategoryVo> membersCategoryList = null;
		
		// 해당 id의 카테고리 정보 가져오기
		membersCategoryList = dao.getCategoryID(id);
		
		// 뷰에서 사용할 Attribute 추가
		request.setAttribute("list", membersCategoryList);
		
        return "/categorySet/categorySetForm.jsp";//해당 뷰
	}

}
