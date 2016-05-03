package action.follow;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;
import vo.FollowVo;

public class FollowProAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");

		String from_id = (String) request.getSession().getAttribute("id");
		String follow = request.getParameter("follow");
		String to_id = request.getParameter("to_id");
		
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
		request.setAttribute("id", to_id);
		return "/follow/followPro.jsp";
	}

}
