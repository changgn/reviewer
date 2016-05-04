package action.follow;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;
import vo.FollowVo;

public class FollowerProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		// 로그인 아이디
		String from_id = (String)request.getSession().getAttribute("id");
		
		String follow = request.getParameter("follow");
		String to_id = request.getParameter("id"); // 

		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		// 나의 팔로잉 목록
		List<String> myToList = null;
		myToList = followdao.getlistto(from_id);
		
		FollowVo followvp = null;
		followvp.setFrom_id(from_id);
		followvp.setTo_id(to_id);
		System.out.println(followvp);
		
/*		// Iterator객체
		Iterator<String> MyList = myToList.listIterator();
		*/
		if(from_id!=null) {
			FollowDao followDao = FollowDao.getInstance();
			if(follow.equals("follow")){
				FollowVo followVo = new FollowVo(from_id, to_id);
				int n = followDao.insert(followVo);
				if(n>0) {
					System.out.println(from_id + "가" + to_id + "를 팔로우");
				} else {
					System.out.println("팔로우 실패");
				}
			}
			if(follow.equals("unfollow")){
				FollowVo followVo = new FollowVo(from_id, to_id);
				int n = followDao.delete(followVo);
				if(n>0) {
					System.out.println(from_id + "가" + to_id + "를 언팔로우");
				} else {
					System.out.println("언팔로우 실패");
				}
			}
		}
		System.out.println(myToList);
		System.out.println(to_id);
		System.out.println(from_id);
		
		request.setAttribute("id", to_id);
		return "/follow/followerPro.jsp";
	}

}
