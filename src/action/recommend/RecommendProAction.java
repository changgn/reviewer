package action.recommend;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;
import mvc.dao.RecommendDao;

public class RecommendProAction implements CommandAction {
	 @Override
	 public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		 request.setCharacterEncoding("UTF-8");
		 String board_num_str = request.getParameter("board_num");
		 
			String board_num = request.getParameter("board_num");
			
			RecommendDao recommendDao = RecommendDao.getInstance();
			recommendDao.updateByRecommendNum(board_num);
		 
		 
		 return "/recommend/recommendPro.jsp";
	 }
	
	 
//	 @Override
//	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
//		String board_num_str = request.getParameter("board_num");
//		
//		if(board_num_str != null){
//			Integer board_num = Integer.parseInt(board_num_str);
//			BoardDao boardDao = BoardDao.getInstance();
//			int reportupdateok = boardDao.updateReportByBoardNum(board_num);
//			if(reportupdateok > 0){
//				request.setAttribute("reportok", "reportok");
//			}else{
//
//				request.setAttribute("reportok", "reportfalse");
//			}
//		}
//		
//		
//		return "/content/reportPro.jsp";//해당 뷰
//	}
	 
	 
}
