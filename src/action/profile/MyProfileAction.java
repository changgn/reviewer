package action.profile;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;
import mvc.dao.CategoryDao;
import mvc.dao.ComentDao;
import mvc.dao.FollowDao;
import mvc.dao.MemberDao;
import mvc.dao.MembersCategoryDao;
import mvc.dao.PhotoDao;
import mvc.dao.ScrepDao;
import vo.CategoryVo;
import vo.FollowVo;
import vo.MembersCategoryVo;

public class MyProfileAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
	/*	MemberDao memberDao = new MemberDao();
		MembersCategoryDao membersCategoryDao = MembersCategoryDao.getInstance();
		
		List category = null;
		
		String id = (String) request.getSession().getAttribute("id"); // id값

		category= membersCategoryDao.getlistById(id);//id 값을 통하여 카테고리 리스트를 가져온다.
		*/
		String id = (String) request.getSession().getAttribute("id");
		MembersCategoryDao membersCategoryDao = MembersCategoryDao.getInstance();
		CategoryDao categoryDao = CategoryDao.getInstance();
		
		// Vo들을 담기위한 list 변수생성
		List<MembersCategoryVo> membersCategoryList = null;
		List<CategoryVo> CategoryList = new ArrayList<CategoryVo>();
		
		// 해당 id의 카테고리id 가져오기
		membersCategoryList = membersCategoryDao.getlistById(id);
		// 카테고리id로 카테고리 가져오기
				for(MembersCategoryVo vo : membersCategoryList) {
					CategoryVo Category = categoryDao.getOne(vo.getCategory_id());
					CategoryList.add(Category);
				}
				request.setAttribute("CategoryList", CategoryList);
				
				
				/*Iterator it = null;
				it = CategoryList.iterator();
				while(it.hasNext()){
					String cate= it.next().toString();
					request.setAttribute("cate", cate);
				} */
				String from_id="id";
				String to_id="id";
				
				FollowVo fvo= new FollowVo();
				fvo.setFrom_id(from_id);
				fvo.setTo_id(to_id);
				
				int followerCount = 0;
				int folloingCount = 0;			
				
				FollowDao followdao = FollowDao.getInstance();
				
				//팔로워
				followerCount =followdao.countfrom(fvo);
				
				//팔로잉
				folloingCount = followdao.countto(fvo);
				
				
				
				
		return "/profile/myProfile.jsp";
	}

}
