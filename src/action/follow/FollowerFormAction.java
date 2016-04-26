package action.follow;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;
import vo.FollowVo;
import vo.MembersVo;

public class FollowerFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		// 로그인한 id 가져오기
		String id = (String) request.getSession().getAttribute("id");
		
		FollowVo vo = new FollowVo();
		FollowDao dao = new FollowDao();
		
		List from_id = dao.getListFrom(vo);
		
		request.setAttribute("id",id);
		request.setAttribute("from_id", from_id);
		
		
		return "followerForm.jsp";
	}
}
