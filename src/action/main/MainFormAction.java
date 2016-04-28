package action.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;

public class MainFormAction implements CommandAction {
	
		@Override
		public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
			request.setCharacterEncoding("UTF-8");
			
			
			return "/main/mainForm.jsp";
			
		}
	
}
