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
		
		// 로그인 id
	/*	String from_id = (String)request.getSession().getAttribute("id");*/
		// 프로필페이지로부터 받은 id
		String from_id = "bal";
		String to_id = request.getParameter("id");
		
		System.out.println("to_id : " + to_id);
		
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		FollowVo followvo = new FollowVo();
		

		// 프로필 페이지 id의 팔로워 목록
		List<String> fromIdList = null;
		fromIdList = followdao.getlistfrom(to_id);
		
		System.out.println(fromIdList);
		// 팔로우 상태 저장
		if(from_id!=null) {
			List<String> folloingList = followdao.getlistto(from_id);
			boolean followCheck = false;
			if(folloingList!=null) {
				for(String following : folloingList) {
					if(following.equals(to_id)) {
						followCheck = true;
						break;
					}
				}
			}
			request.setAttribute("followCheck", followCheck);
		}
/*		if(to_id!=null){
			if(to_id.equals(mytoIdList)){ // 프로필 페이지로부터 받은 id가 같으면
				followdao.delete(followvo);
			}else{ // 다르면
				followdao.insert(followvo); // 내 팔로잉 목록에 추가
			}
		}*/
		
		// 해당 뷰에서 사용할 속성
		request.setAttribute("id", to_id); // 페이지 Id
		request.setAttribute("fromIdList", fromIdList); // 페이지 Id를 팔로우 한 팔로워 목록
		
		return "/follow/followerForm.jsp";
	}
}