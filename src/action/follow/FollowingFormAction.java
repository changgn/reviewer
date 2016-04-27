package action.follow;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;
import mvc.dao.MemberDao;
import vo.FollowVo;

public class FollowingFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		// 로그인한 id 가져오기
		String id = (String) request.getSession().getAttribute("id");
		
		// 프로필페이지로부터 받은 id
		String profileId = (String) request.getParameter("id");
		
		// 팔로우 체크
		int cn = 0;
		
		
		if(id==profileId){ // 내 페이지에서 보는 팔로워. 즉, 나를 팔로우 한 목록 요청
			MemberDao memberdao = MemberDao.getInstance(); // 멤버 처리클래스 객체
			FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
			
			// 팔로우 저장클래스 타입의 팔로우 리스트 객체 생성
			List<FollowVo> FollowList = new ArrayList<FollowVo>();
			
			for(FollowVo vo : FollowList){
				FollowVo to_id = followdao.getlistfrom(to_id);
				FollowList.add(to_id);
			}
			cn=1;
					
			request.setAttribute("cn", cn);
			request.setAttribute("id", id);
			request.setAttribute("FollowList", FollowList);
			
			return "followerForm.jsp";
		} else{ // 다른 사람의 팔로워. 즉, 다른사람을 팔로우한 사람들의 목록 요청
			MemberDao memberdao = MemberDao.getInstance(); // 멤버 처리클래스 객체
			FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
			
			// 팔로우 저장클래스 타입의 팔로우 리스트 객체 생성
			List<FollowVo> FollowList = new ArrayList<FollowVo>();
			
			for(FollowVo vo : FollowList){
				FollowVo to_id = followdao.getlistfrom(to_id);
				FollowList.add(to_id);
			}
			cn=1;
					
			request.setAttribute("cn", cn);
			request.setAttribute("id", profileId);
			request.setAttribute("FollowList", FollowList);
			
			return "followerForm.jsp";
		}
	}

}
