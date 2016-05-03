package action.admin;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.MemberDao;

public class Admin_memberFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		// 아이디 목록을 구한다
		// 아이디를 조건으로 reg_date와 recommend_num를 구한다.
		
		MemberDao memberdao = MemberDao.getInstance();
		List<String> memberlist = null;
		memberlist = memberdao.getMemberList();
		
		List<Integer> getRecommedNum = memberdao.getRecommedNum(memberlist);
		List<Date> getRegDate = memberdao.getRegDate(memberlist);
		
/*		List<HashMap> everyMemberList = new ArrayList<>();
		List<MembersVo> ml =null;
		ml = memberdao.getMemberListVo();
		for(MembersVo vo : ml){
			HashMap<String, Object> memberMap = new HashMap<String, Object>();
			memberMap.put("member", vo);
			everyMemberList.add(memberMap);
		}
		System.out.println(everyMemberList);
		
		int count = memberdao.count();

		System.out.println(count);
		
		
		request.setAttribute("count", count);
		request.setAttribute("everyMemberList", everyMemberList);
		*/
		Iterator<String> memberIdRecList = memberlist.iterator();
		Iterator<String> memberIdRegList = memberlist.iterator();
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
						if(memberIdRecList.next().equals(getRecommedNumList)){
							rec.put(memberIdRecList, getRecommedNumList);
						}
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
						if(memberIdRegList.next().equals(getRegDateList)){
							reg.put(memberIdRegList, getRegDateList);
						}
					}
				}
			}
		}
		System.out.println(rec);
		System.out.println(reg);
		System.out.println(memberlist);
		

		request.setAttribute("memberList", memberlist);
		request.setAttribute("memberIdRecList", memberIdRecList);
		request.setAttribute("memberIdRegList", memberIdRegList);
		request.setAttribute("memberIdRecListMap", reg);
		request.setAttribute("memberIdRegListMap", rec);
		
		
        return "/administrator/admin_memberForm.jsp";//해당 뷰
	}



}
