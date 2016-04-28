package action.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;
import vo.BoardVo;
import vo.MembersCategoryVo;

public class MainFormAction implements CommandAction {
	
		@Override
		public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
			request.setCharacterEncoding("UTF-8");
			
			BoardDao boardDao = BoardDao.getInstance();
			List<BoardVo> boardList = null;
			
			String login_status =  (String)request.getSession().getAttribute("login_status");	//로그인 세션
			if(login_status==null){
				login_status = "2";	// 로그인 안된 상태
			}
			if(login_status=="2"){
				
				boardList = boardDao.getList();
				
			}else{
				
				
			}
			
			
			
			request.setAttribute("boardList", boardList);
			
			return "/main/mainForm.jsp";
			
		}
	
}
