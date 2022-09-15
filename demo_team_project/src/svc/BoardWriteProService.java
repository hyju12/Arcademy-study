package svc;

import java.sql.Connection;
import dao.ClassBoardDAO;
import vo.ClassBoardBean;
import static db.JdbcUtil.*;
public class BoardWriteProService {

	public boolean registArticle(ClassBoardBean boardBean) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		ClassBoardDAO boardDAO = ClassBoardDAO.getInstance();
		boardDAO.setConnection(con);
		int insertCount = boardDAO.insertArticle(boardBean);
		
		if(insertCount > 0){
			commit(con);
			isWriteSuccess = true;
			
		}
		else{
			rollback(con);
		}
		
		close(con);

		return isWriteSuccess;
		
	}

}
