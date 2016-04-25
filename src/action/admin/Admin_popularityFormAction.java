package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class Admin_popularityFormAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		// 객체 생성 ""의 이름으로 정보를 가져와 변수 안에 저장하여 사용하기 위해 설정
		String id = (String)request.getSession().getAttribute("id");
		
		// 게시글이 추천 받은 수
		int recommend_num = Integer.parseInt((String) request.getSession().getAttribute("recommend_num"));
        
		// DB에서 인기 게시글을 전해받을 리스트 선언

        //해당 뷰에서 사용할 속성
        request.setAttribute("id", id);
        request.setAttribute("recommend_num", recommend_num); // 추천수
        
		return "/admin_popularityForm.jsp";
	}

}
