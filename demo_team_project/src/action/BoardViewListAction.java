package action;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.BoardPopularListService;
import vo.ActionForward;
import vo.ClassBoardBean;
import vo.PageInfo;

 public class BoardViewListAction implements Action {
	 
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 
		ArrayList<ClassBoardBean> PopularList=new ArrayList<ClassBoardBean>();
		ArrayList<ClassBoardBean> RecentList=new ArrayList<ClassBoardBean>();	
		
		int page=1;
		int limit=6;
	
		BoardPopularListService boardListService = new BoardPopularListService();
		
		PopularList = boardListService.getPopularList(page, limit);
		RecentList = boardListService.getRecentList(page, limit);
		
		request.setAttribute("PopularList", PopularList);
		request.setAttribute("RecentList", RecentList);
		
		ActionForward forward= new ActionForward();
   		forward.setPath("/class_list.jsp");
   		return forward;
   		
	 }
	 
 }