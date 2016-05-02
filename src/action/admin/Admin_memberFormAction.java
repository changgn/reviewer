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
		
		// 회원 아이디 리스트
		List<String> memberList = null;
		memberList = memberdao.getMemberList();
		// 추천수 리스트
		List<Integer> getRecommedNum = null;
		// 가입일 리스트
		List<Date> getRegDate = null;
		getRecommedNum = memberdao.getRecommedNum(memberList);
		getRegDate = memberdao.getRegDate(memberList);
		
		Iterator<String> memberIdRecList = memberList.iterator();
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
						continue;
					}else{
						rec.put(memberIdRecList, getRecommedNumList);
					}
					continue;
				}
				System.out.println("getRecommedNumList check");
			}
			System.out.println("memberIdRecList check");
		}
		System.out.println(reg.get(memberIdRecList));
		
		while(memberIdRegList.hasNext()){
			if(memberIdRegList.next()==null){
				break;
			}else{
				while(getRegDateList.hasNext()){
					if(getRegDateList.next()==null){
						continue;
					}else{
						reg.put(memberIdRegList, getRegDateList);
					}
					continue;
				}
				System.out.println("getRegDateList check");
			}
			System.out.println("memberIdRegList check");
		}
		System.out.println(rec.get(getRegDateList));
		
		request.setAttribute("memberList", memberList);
		request.setAttribute("memberIdRecList", reg.get(memberIdRecList));
		request.setAttribute("memberIdRegList", rec.get(memberIdRegList));
		
        return "/administrator/admin_memberForm.jsp";//해당 뷰
	}



}
