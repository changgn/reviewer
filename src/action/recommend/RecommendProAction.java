package action.recommend;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import mvc.dao.BoardDao;

public class RecommendProAction implements CommandAction {
	 @Override
	 public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable{
		 request.setCharacterEncoding("UTF-8");
		 String boardnum = request.getParameter("board_num");
		 System.out.println(boardnum);
		 
		 if(boardnum != null){
			 Integer board_num = Integer.parseInt(boardnum);
			 BoardDao boardDao = BoardDao.getInstance();
			 int recommendupdate = boardDao.updateRecommendByBoardNum(board_num);
			 System.out.println(recommendupdate);
			 if(recommendupdate > 0 ){
				 
				 request.setAttribute("recommendok", "recommendok");
			 }else {
				 request.setAttribute("recommendok", "recommendfalse");
			 }
			 
		 }
		 
		 
		 return "/recommend/recommendPro.jsp";
	 }
	 
}
