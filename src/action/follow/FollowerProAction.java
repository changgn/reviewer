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
		String fId = request.getParameter("id"); // 팔로워 수정을 할 id,
		String check = request.getParameter("check"); // 체크값

		if(check=="0"){
		}else{
			followdao.removeto(fId);
		}
		System.out.println(check);
		return "/follow/followerPro.jsp";
	}

}
