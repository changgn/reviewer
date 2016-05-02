package action.admin;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.MemberDao;
import vo.MembersVo;

public class Admin_memberFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
		String myid = (String) request.getSession().getAttribute("id");
		/** Member 객체 생성 */
		MembersVo member = new MembersVo();
		
		MemberDao md = new MemberDao();
		
		// 객체 생성 ""의 이름으로 정보를 가져와 변수 안에 저장하여 사용하기 위해 설정
		String id = member.getId();
		Date reg_date = member.getReg_date();
		int recommend_num = member.getRecommend_num();
		
		int count = md.count(member);
		
        //해당 뷰에서 사용할 속성
		request.setAttribute("count",count); // 회원수
		request.setAttribute("myid", myid); //내 아이디
        request.setAttribute("id", id); // 회원아이디
        request.setAttribute("recommend_num", recommend_num); // 추천수
        request.setAttribute("reg_date", reg_date); // 회원가입일
       
        return "/administrator/admin_memberForm.jsp";//해당 뷰
	}



}
