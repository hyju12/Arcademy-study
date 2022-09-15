package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;
import dao.ClassBoardDAO;
import vo.ClassBoardBean;

public class BoardPopularListService {

	public int getListCount() throws Exception{
		int listCount = 0;
		Connection con = getConnection();
		ClassBoardDAO boardDAO = ClassBoardDAO.getInstance();
		boardDAO.setConnection(con);
		listCount = boardDAO.selectListCount();
		close(con);
		return listCount;
		
	}

	public ArrayList<ClassBoardBean> getPopularList(int page, int limit) throws Exception{
		
		ArrayList<ClassBoardBean> popularList = null;
		
			Connection con = getConnection();
			ClassBoardDAO boardDAO = ClassBoardDAO.getInstance();
			boardDAO.setConnection(con);
			popularList = boardDAO.PopularselectArticleList(page,limit);
			close(con);	
			return popularList;
	}

	public ArrayList<ClassBoardBean> getRecentList(int page, int limit) throws Exception{
		
		ArrayList<ClassBoardBean> recentList = null;
		
			Connection con = getConnection();
			ClassBoardDAO boardDAO = ClassBoardDAO.getInstance();
			boardDAO.setConnection(con);
			recentList = boardDAO.NewselectArticleList(page,limit);
			close(con);	
			return recentList;
		
	}
	
}
