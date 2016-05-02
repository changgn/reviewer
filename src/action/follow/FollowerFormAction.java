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
		String my_id = "bal1";
		// 프로필페이지로부터 받은 id
		String to_id = request.getParameter("id");
		System.out.println("to_id : " + to_id);
		
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		
		// 내가 팔로우한 팔로잉 목록
		List<String> mytoIdList = null;
		mytoIdList = followdao.getlistto(my_id);
		
		// 프로필 페이지 id의 팔로워 목록
		List<String> fromIdList = null;
		fromIdList = followdao.getlistfrom(to_id);
		
		// followcheck
		Map<Iterator<String>, String> check = new HashMap<Iterator<String>, String>();
		Iterator<String> myToList = mytoIdList.iterator();
		Iterator<String> fromList = fromIdList.iterator();
		while(fromList.hasNext()){
			if(fromList.next()==null){
				break;
			}else{
				while(myToList.hasNext()){
					if(myToList.next()==null){
						break;
					}else{
						if(fromList.equals(myToList)){
							check.put(fromList, "1");
						}else{
							check.put(fromList, "0");
						}	
					}
				}
			}
		}
		System.out.println(check.get(fromList));
		
		
		// 해당 뷰에서 사용할 속성
		request.setAttribute("cehck", check.get(fromList)); // 1이면 팔로우 상대, 0이면 팔로우 안한상대
		request.setAttribute("id", to_id); // 팔로워 아이디
		request.setAttribute("fromIdList", fromIdList); // 나를 팔로우 한 팔로워 목록
		
		return "/follow/followerForm.jsp";
	}
}