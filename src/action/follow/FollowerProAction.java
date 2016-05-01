package action.follow;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;

public class FollowerProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		String fId = request.getParameter("id"); // 팔로우 Id
		String check = request.getParameter("check"); // 체크값, 제이쿼리로 비교

		if(check=="1"){
			followdao.addto(fId);
		}else{
			followdao.removeto(fId);
		}
		
		return "/follow/followerPro.jsp";
	}

}
