package svc;

import java.sql.Connection;
import dao.BoardDAO;
import static db.JdbcUtil.*;
public class BoardLoginProService {

	public boolean isArticleWriter(int board_num, String pass) throws Exception {
		// TODO Auto-generated method stub
		
		boolean isArticleWriter = false;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		isArticleWriter = boardDAO.iscollectuser(board_num, pass);
		close(con);
		return isArticleWriter;
		
	}

}
