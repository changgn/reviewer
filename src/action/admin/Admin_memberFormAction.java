package action.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import vo.MembersVo;

public class Admin_memberFormAction implements CommandAction {

	@SuppressWarnings("unused")
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		/** Member 객체 생성 */
		MembersVo member = new MembersVo();
		
		// 객체 생성 ""의 이름으로 정보를 가져와 변수 안에 저장하여 사용하기 위해 설정
		String id = "id";
		String reg_date = "reg_date";
		
		// 추천한 수
		int recommend_num = Integer.parseInt("recommend_num");
		
		
        // DB에서 리스트를 전해받을 리스트 선언
        
        //DB연동 
		
        // 전체 회원 수를 DB에서 세어 count에 저장

        //해당 뷰에서 사용할 속성
        request.setAttribute("id", id);
        request.setAttribute("recommend_num", recommend_num); // 추천수
        request.setAttribute("reg_date", reg_date); // 회원가입일
       
        return "/admin_memberForm.jsp";//해당 뷰
	}



}
