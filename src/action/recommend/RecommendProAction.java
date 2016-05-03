package action.recommend;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.RecommendDao;

public class RecommendProAction implements CommandAction {
	 @Override
	 public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		 request.setCharacterEncoding("UTF-8");
		 
			String board_num = request.getParameter("board_num");
			
			RecommendDao recommendDao = RecommendDao.getInstance();
			recommendDao.updateByRecommendNum(board_num);
		 
		 
		 return "/recommend/recommendPro.jsp";
	 }
	
}
