package action.follow;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.FollowDao;

public class FollowingFormAction implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		// 로그인 아이디
		/*String my_id = (String)request.getSession().getAttribute("id");*/
		String my_id = "bal2";
		// 프로필 페이지로부터 받은 id
		String from_id = request.getParameter("id");
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		
		// 내가 팔로우한 팔로잉 목록
		List<String> mytoIdList = followdao.getlistfrom(my_id);
		
		// 프로필 페이지 id의 팔로잉 목록
		List<String> toIdList = followdao.getlistto(from_id);
		
/*		List<HashMap> list = new ArrayList<>();*/

		// 팔로워 아이디를 키로 check값 저장 
/*		Map<String, String> check = new HashMap<String, String>();*/
/*		for(String FollowVoTo : toIdList){
			for(String FollowVoMy : mytoIdList){
				if(FollowVoTo.equals(FollowVoMy))
					check.put("check", FollowVoTo);
					list.add((HashMap) check);
			}
		}
		System.out.println(list);
		
		request.setAttribute("list", list);
		request.setAttribute("toIdList", toIdList);*/
		// 프로필 페이지 id의 팔로잉 목록
/*		List<String> toIdList = null;
		toIdList = followdao.getlistfrom(from_id);
		// 내가 팔로우한 팔로잉 목록
		List<String> mytoIdList = null;
		mytoIdList = followdao.getlistto(my_id);*/
		// followcheck
/*		Map<Iterator<String>, String> check = new HashMap<Iterator<String>, String>();
		Iterator<String> myToList = mytoIdList.iterator();
		Iterator<String> toList = toIdList.iterator();
		while(toList.hasNext()){
			if(toList.next()==null){
				break;
			}else{
				while(myToList.hasNext()){
					if(myToList.next()==null){
						break;
					}else{
						if(toList.equals(myToList)){
							check.put(toList, "1");
						}else{
							check.put(toList, "0");
						}	
					}
				}
			}
		}
		System.out.println(check);
		
		request.setAttribute("cehck", check); // 1이면 팔로우 상대, 0이면 팔로우 안한상대
*/		request.setAttribute("id", from_id);
		request.setAttribute("toIdList", toIdList);
		
		return "/follow/followingForm.jsp";
	}
}
