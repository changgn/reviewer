package action.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.MemberDao;
import vo.MembersVo;

public class Admin_memberFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		// 아이디 목록을 구한다
		// 아이디를 조건으로 reg_date와 recommend_num를 구한다.
		
		MemberDao memberdao = MemberDao.getInstance();
		List<MembersVo> memberlist = null;
		memberlist = memberdao.getMemberListVo();
		
		
		System.out.println(memberlist);
		
		int count = 0;
		count = memberdao.count();
		System.out.println(count);
		request.setAttribute("count", count);
		request.setAttribute("memberList", memberlist);

        return "/administrator/admin_memberForm.jsp";//해당 뷰
	}



}
