package action.follow;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;

public class FollowerFormAction implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
	/*	// 로그인 아이디
		String my_id = (String)request.getSession().getAttribute("id");*/
		String from_id = "bal1";
		// 프로필페이지로부터 받은 id
		String to_id = request.getParameter("id");
		System.out.println("to_id : " + to_id);
		
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		
		// 내가 팔로우한 팔로잉 목록
		List<String> mytoIdList = null;
		mytoIdList = followdao.getlistto(from_id);
		// 프로필 페이지 id의 팔로워 목록
		List<String> fromIdList = null;
		fromIdList = followdao.getlistfrom(to_id);
		// check값을 넣을 map객체 생성

		// 해당 뷰에서 사용할 속성
		
		request.setAttribute("mytoIdList", mytoIdList); // 로그인 Id의 팔로잉 목록
		request.setAttribute("id", to_id); // 페이지 Id
		request.setAttribute("fromIdList", fromIdList); // 페이지 Id를 팔로우 한 팔로워 목록
		
		return "/follow/followerForm.jsp";
	}
}