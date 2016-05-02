package action.follow;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;

public class FollowerFormAction implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		// 로그인 아이디
		String fromid = (String)request.getSession().getAttribute("id");
		// 프로필페이지로부터 받은 id
		String to_id = request.getParameter("id");
		System.out.println("to_id : " + to_id);
		
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		
		// 내가 팔로우한 팔로잉 목록
		List<String> toIdList = null;
		toIdList = followdao.getlistto(fromid);
		
		// 프로필 페이지 id의 팔로워 목록
		List<String> fromIdList = null;
		fromIdList = followdao.getlistfrom(to_id);
		
		// followcheck
		HashMap check = new HashMap();
		List<String> myToList = new ArrayList();
		List<String> idFromList = new ArrayList();
		myToList.addAll(toIdList);
		idFromList.addAll(fromIdList);		
		Iterator<String> toList = myToList.iterator();
		Iterator<String> fromList = idFromList.iterator();
		while(toList.hasNext()){
			while(fromList.hasNext()){
				if(toList==fromList){
					check.put(fromList, 1);
				}else{
					check.put(fromList, 0);
				}
			}
		}
		
		
/*		for( int i = 0; i < toIdList.size(); i++){
			if(fromIdList.equals(toIdList)){
				check = 1;
			}else{
				check = 0;
			}
		}*/
		
		
		// 해당 뷰에서 사용할 속성
		request.setAttribute("cehck", check); // 1이면 팔로우 상대, 0이면 팔로우 안한상대
		request.setAttribute("id", to_id); // 팔로워 아이디
		request.setAttribute("fromIdList", fromIdList); // 나를 팔로우 한 팔로워 목록
		
		return "/follow/followerForm.jsp";
	}
}