package svc;

import java.sql.Connection;
import dao.ClassBoardDAO;
import vo.ClassBoardBean;
import static db.JdbcUtil.*;
public class BoardApplyProService {

	public boolean registArticle(ClassBoardBean applyBean) throws Exception{
		
		boolean isWriteSuccess = false;
		Connection con = getConnection();
		ClassBoardDAO boardDAO = ClassBoardDAO.getInstance();
		boardDAO.setConnection(con);
		int insertCount = boardDAO.insertApplyArticle(applyBean);
		
		if(insertCount > 0){
			commit(con);
			isWriteSuccess = true;
			
		}
		else{
			isWriteSuccess = false;
			rollback(con);
		}
		
		close(con);

		return isWriteSuccess;
		
	}

}
