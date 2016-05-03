package action.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.MemberDao;
import vo.FollowVo;
import vo.MembersVo;

public class Admin_memberFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		// 아이디 목록을 구한다
		// 아이디를 조건으로 reg_date와 recommend_num를 구한다.
		
		MemberDao memberdao = MemberDao.getInstance();
		
		List<HashMap> everyMemberList = new ArrayList<>();
		List<FollowVo> ml =null;
		ml = memberdao.getMemberListVo();
		for(FollowVo vo : ml){
			HashMap<String, Object> memberMap = new HashMap<String, Object>();
			memberMap.put("member", vo);
			everyMemberList.add(memberMap);
		}

		request.setAttribute("member", everyMemberList);
		
/*		Iterator<String> memberIdRecList = memberList.iterator();
		Iterator<String> memberIdRegList = memberList.iterator();
		Iterator<Integer> getRecommedNumList = getRecommedNum.iterator();
		Iterator<Date> getRegDateList = getRegDate.iterator();
		// 아이디를 키로 추천수와 가입일을 매핑 
		Map<Iterator<String>, Iterator<Date>> reg = new HashMap<Iterator<String>, Iterator<Date>>();
		Map<Iterator<String>, Iterator<Integer>> rec = new HashMap<Iterator<String>, Iterator<Integer>>();
		while(memberIdRecList.hasNext()){
			if(memberIdRecList.next()==null){
				break;
			}else{
				while(getRecommedNumList.hasNext()){
					if(getRecommedNumList.next()==null){
						break;
					}else{
						rec.put(memberIdRecList, getRecommedNumList);
					}
				}
			}
		}
		System.out.println(reg.get(memberIdRecList));
		
		while(memberIdRegList.hasNext()){
			if(memberIdRegList.next()==null){
				break;
			}else{
				while(getRegDateList.hasNext()){
					if(getRegDateList.next()==null){
						break;
					}else{
						reg.put(memberIdRegList, getRegDateList);
					}
				}
			}
		}*/
/*		System.out.println(rec.get(getRegDateList));
		
		request.setAttribute("memberList", memberList);
		request.setAttribute("memberIdRecList", memberIdRecList);
		request.setAttribute("memberIdRegList", memberIdRegList);
		request.setAttribute("memberIdRecListMap", reg);
		request.setAttribute("memberIdRegListMap", rec);
		*/
		
        return "/administrator/admin_memberForm.jsp";//해당 뷰
	}



}
