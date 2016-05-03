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
		// 로그인 아이디
		/*String from_id = (String)request.getSession().getAttribute("id");*/
		String from_id = "bal1";
		
		FollowDao followdao = FollowDao.getInstance(); // 팔로우 처리클래스 객체
		
		String to_id = request.getParameter("id"); // 

		// 나의 팔로잉 목록
		List<String> myToList = null;
		myToList = followdao.getlistto(from_id);
		
		FollowVo follow = null;
		follow.setFrom_id(from_id);
		follow.setTo_id(to_id);
		System.out.println(follow);
		
		// Iterator객체
		Iterator<String> MyList = myToList.listIterator();
		
		// Id를 키로 체크 값저장할 객체
		while(MyList.hasNext()){ // MyList저장소에 이동할 것이 있다면 true, 없으면 false 리턴 
			if(myToList.equals(to_id)){// my의 값과 you의 값이 같으면 
				followdao.delete(follow); // 내 팔로잉 목록에서  해당 Id 삭제
			}else{ // 다르면
				followdao.insert(follow); // 내 팔로잉 목록에 추가
			}
		}
		System.out.println(myToList);
		System.out.println(to_id);
		System.out.println(from_id);
		
		request.setAttribute("id", to_id);
		return "/follow/followerPro.jsp";
	}

}
