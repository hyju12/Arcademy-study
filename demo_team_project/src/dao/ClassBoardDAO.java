package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.DataSource;
import vo.ClassBoardBean;

public class ClassBoardDAO {

	DataSource ds;
	Connection con;
	private static ClassBoardDAO boardDAO;

	private ClassBoardDAO() {
	}

	public static ClassBoardDAO getInstance(){
		if(boardDAO == null){
			boardDAO = new ClassBoardDAO();
		}
		return boardDAO;
	}

	public void setConnection(Connection con){
		this.con = con;
	}

	public int updateReadCount(int board_num){

		PreparedStatement pstmt = null;
		int updateCount = 0;
		String sql="update class_board set class_readcount = "+
				"class_readcount+1 where class_num = "+board_num;

		try{
			pstmt=con.prepareStatement(sql);
			updateCount = pstmt.executeUpdate();
		}catch(SQLException ex){
			System.out.print(ex);
		}
		finally{
			close(pstmt);

		}

		return updateCount;

	}
	
	public int selectListCount() {

		int listCount= 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try{
			pstmt=con.prepareStatement("select count(*) from class_board");
			rs = pstmt.executeQuery();

			if(rs.next()){
				listCount=rs.getInt(1);
			}
		}catch(Exception ex){
			System.out.println(ex);

		}finally{
			close(rs);
			close(pstmt);
		}

		return listCount;

	}
	
	public int insertArticle(ClassBoardBean article){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		String unick = null;
		
		int insertCount=0;
		
		try {
			
			sql="insert into class_board (class_nick,class_name,class_title,";
			sql+="class_content, class_address, class_time,"+
					"class_area,class_salary,class_infor,"+
					"class_subject,class_date,class_readcount,class_file) "
					+ "values(?,?,?,?,?,?,?,?,?,?,now(),0,?)";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, article.getClass_nick());
			pstmt.setString(2, article.getClass_name());
			pstmt.setString(3, article.getClass_title());
			pstmt.setString(4, article.getClass_content());
			pstmt.setString(5, article.getClass_address());
			pstmt.setString(6, article.getClass_time());
			pstmt.setString(7, article.getClass_area());
			pstmt.setString(8, article.getClass_salary());
			pstmt.setString(9, article.getClass_infor());
			pstmt.setString(10, article.getClass_subject());
			pstmt.setString(11, article.getClass_file());
			
			insertCount=pstmt.executeUpdate();

		}catch(Exception ex){
			System.out.println(ex);
		}finally{
			close(rs);
			close(pstmt);
		}
		return insertCount;
	}
	
	public int insertApplyArticle(ClassBoardBean article){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		String uid = null;
		
		int insertCount=0;
		
		try {
			
			sql="insert into class_apply (uid, class_num)";
			sql+="values (?,?)";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, article.getID());
			pstmt.setInt(2, article.getClass_num());
			
			insertCount=pstmt.executeUpdate();

		}catch(Exception ex){
			System.out.println(ex);
		}finally{
			close(rs);
			close(pstmt);
		}
		return insertCount;
	}
	

	public ClassBoardBean selectArticle(int board_num){

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ClassBoardBean ClassBoardBean = null;

		try{
			pstmt = con.prepareStatement(
					"select * from class_board where class_num = ?");
			pstmt.setInt(1, board_num);
			rs= pstmt.executeQuery();

			if(rs.next()){
				ClassBoardBean = new ClassBoardBean();
				ClassBoardBean.setClass_num(rs.getInt("class_num"));
				ClassBoardBean.setClass_title(rs.getString("class_title"));
				ClassBoardBean.setClass_address(rs.getString("class_address"));
				ClassBoardBean.setClass_area(rs.getString("class_area"));
				ClassBoardBean.setClass_readcount(rs.getInt("class_readcount"));
				ClassBoardBean.setClass_content(rs.getString("class_content"));
				ClassBoardBean.setClass_infor(rs.getString("class_infor"));
				ClassBoardBean.setClass_file(rs.getString("class_file"));
				ClassBoardBean.setClass_name(rs.getString("class_name"));
				ClassBoardBean.setClass_subject(rs.getString("class_subject"));
				ClassBoardBean.setClass_infor(rs.getString("class_infor"));
				ClassBoardBean.setClass_salary(rs.getString("class_salary"));
				ClassBoardBean.setClass_time(rs.getString("class_time"));
				ClassBoardBean.setClass_nick(rs.getString("class_nick"));
		}
		}catch(Exception ex){
			System.out.println(ex);
		}finally{
			close(rs);
			close(pstmt);
		}

		return ClassBoardBean;

	}

	public ArrayList<ClassBoardBean> PopularselectArticleList(int page,int limit){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String board_list_sql="select * from class_board order by class_readcount desc,class_title asc limit ?, ?";
		
		ArrayList<ClassBoardBean> articleList = new ArrayList<ClassBoardBean>();
		ClassBoardBean board = null;
		int startrow=(page-1)*10; 

		try{
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, limit);
			rs = pstmt.executeQuery();

			while(rs.next()){
				board = new ClassBoardBean();
				board.setClass_num(rs.getInt("class_num"));
				board.setClass_title(rs.getString("class_title"));
				board.setClass_address(rs.getString("class_address"));
				board.setClass_area(rs.getString("class_area"));
				board.setClass_readcount(rs.getInt("class_readcount"));
				board.setClass_content(rs.getString("class_content"));
				board.setClass_infor(rs.getString("class_infor"));
				board.setClass_file(rs.getString("class_file"));
				board.setClass_name(rs.getString("class_name"));
				board.setClass_subject(rs.getString("class_subject"));
				board.setClass_infor(rs.getString("class_infor"));
				board.setClass_salary(rs.getString("class_salary"));
				board.setClass_time(rs.getString("class_time"));
				board.setClass_nick(rs.getString("class_nick"));
				articleList.add(board);
			}

		}catch(Exception ex){
			System.out.println(ex);
		}finally{
			close(rs);
			close(pstmt);
		}

		return articleList;

	}
	
	
	
	public ArrayList<ClassBoardBean> NewselectArticleList(int page, int limit){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String board_list_sql="select * from class_board order by class_date desc,class_title asc limit ?, ?";
		
		ArrayList<ClassBoardBean> articleList = new ArrayList<ClassBoardBean>();
		ClassBoardBean board = null;
		int startrow=(page-1)*10; 

		try{
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startrow);
			pstmt.setInt(2, limit);
			rs = pstmt.executeQuery();

			while(rs.next()){
				board = new ClassBoardBean();
				board.setClass_num(rs.getInt("class_num"));
				board.setClass_title(rs.getString("class_title"));
				board.setClass_address(rs.getString("class_address"));
				board.setClass_area(rs.getString("class_area"));
				board.setClass_readcount(rs.getInt("class_readcount"));
				board.setClass_content(rs.getString("class_content"));
				board.setClass_infor(rs.getString("class_infor"));
				board.setClass_file(rs.getString("class_file"));
				board.setClass_name(rs.getString("class_name"));
				board.setClass_subject(rs.getString("class_subject"));
				board.setClass_infor(rs.getString("class_infor"));
				board.setClass_salary(rs.getString("class_salary"));
				board.setClass_time(rs.getString("class_time"));
				board.setClass_nick(rs.getString("class_nick"));
				articleList.add(board);
			}

		}catch(Exception ex){
			System.out.println(ex);
		}finally{
			close(rs);
			close(pstmt);
		}

		return articleList;

	}
	

	public boolean isArticleBoardWriter(int board_num,String pass){

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String board_sql="select * from board where BOARD_NUM=?";
		boolean isWriter = false;

		try{
			pstmt=con.prepareStatement(board_sql);
			pstmt.setInt(1, board_num);
			rs=pstmt.executeQuery();
			rs.next();

			if(pass.equals(rs.getString("BOARD_PASS"))){
				isWriter = true;
			}
		}catch(SQLException ex){
			System.out.println(ex);
		}
		finally{
			close(pstmt);
		}

		return isWriter;

	}
}
