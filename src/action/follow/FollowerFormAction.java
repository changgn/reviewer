package action.follow;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;
import vo.FollowVo;

public class FollowerFormAction implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		// 로그인 아이디
		String id = (String)request.getSession().getAttribute("id");
		// 프로필페이지로부터 받은 id
		String to_id = request.getParameter("id");
		System.out.println("to_id : " + to_id);
		
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		
		// 로그인 id의 팔로잉 목록
		List<String> toIdList = null;
		toIdList = followdao.getlistto(id);
		
		// 프로필 페이지 id의 팔로워 목록
		List<String> fromIdList = null;
		fromIdList = followdao.getlistfrom(to_id);
		
		for( int i = 0; i < toIdList.size(); i++){
			if(fromIdList.equals(toIdList)){
				return id; 
			}else{
			}
		}
		
		// 해당 뷰에서 사용할 속성
		request.setAttribute("id", to_id);
		request.setAttribute("toIdList", toIdList);	// 내가 팔로우한 팔로잉 목록
		request.setAttribute("fromIdList", fromIdList); // 나를 팔로우 한 팔로워 목록
		
		return "/follow/followerForm.jsp";
	}
}