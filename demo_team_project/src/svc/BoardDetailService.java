package svc;

import java.sql.Connection;
import dao.ClassBoardDAO;
import vo.ClassBoardBean;
import static db.JdbcUtil.*;

public class BoardDetailService {

	public ClassBoardBean getArticle(int board_num) throws Exception{
		// TODO Auto-generated method stub
		
		ClassBoardBean article = null;
		Connection con = getConnection();
		ClassBoardDAO boardDAO = ClassBoardDAO.getInstance();
		boardDAO.setConnection(con);
		int updateCount = boardDAO.updateReadCount(board_num);
		
		if(updateCount > 0){
			commit(con);
		}
		else{
			rollback(con);
		}
		
		article = boardDAO.selectArticle(board_num);
		close(con);
		return article;
		
	}

}
