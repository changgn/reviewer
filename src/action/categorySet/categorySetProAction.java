package action.categorySet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.MembersCategoryDao;
import vo.MembersCategoryVo;

public class categorySetProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub

		// 로그인한 id값 가져오기
		String id = (String) request.getSession().getAttribute("id");
		id = "bal";
		
		// 지울 카테고리 id값 가져오기
		String delCategory = request.getParameter("delCategory");

		// 추가할 카테고리 갯수 가져오기
		String addcount = request.getParameter("addcount");

		
		// dao 인스턴스 생성
		MembersCategoryDao membersCategoryDao = MembersCategoryDao.getInstance();
		
		if(addcount != null) {
			int addcount_int = Integer.parseInt(addcount);
			if(addcount_int != 0) {
				int addedcount = 0;
				for(int i=1; i<addcount_int+1; i++) {
					String addname = "add" + i;
					String category_id = request.getParameter(addname);
					MembersCategoryVo vo = new MembersCategoryVo(id, category_id);
					addedcount += membersCategoryDao.insert(vo);
				}
				System.out.println(id + "의 추가된 카테고리 갯수 : " + addedcount);
			}
		}
		
		if(delCategory != null) {		
			// add_ 부분 제거
			delCategory = delCategory.substring(4);
			MembersCategoryVo vo = new MembersCategoryVo(id, delCategory);
			int deleteOk = membersCategoryDao.delete(vo);
			
			if(deleteOk==0){
				System.out.println("카테고리 삭제 실패");
			} else {
				System.out.println(id + "의 " + delCategory + " 카테고리 삭제 성공" );
			}
		}
		
        return "/categorySet/categorySetPro.jsp";//해당 뷰
	}

}
