package prj_java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DB_Action2 {
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs;
	
	ArrayList <CntDTO> list = new ArrayList <CntDTO> ();
	ArrayList <CntDTO> list2 = new ArrayList <CntDTO> ();
	
	public void open() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_team", "root", "0000");
			stmt = conn.createStatement();
		}catch(Exception e) {
		}
	}
	public void connectclose() {
		try {
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public ArrayList <CntDTO> admin() // 공지만 빼오기
	{
		try
		{
			open();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from contents where cnt_nick='관리자' order by cnt_num desc;");
			while(rs.next())
			{
				CntDTO cnt = new CntDTO();
				cnt.setCnt_num(rs.getInt(1));
				cnt.setCnt_nick(rs.getString(2));
				cnt.setCnt_date(rs.getString(3));
				cnt.setCnt_title(rs.getString(4));
				cnt.setCnt_content(rs.getString(5));
				
				list2.add(cnt);
			}
		}catch (Exception e)
		{
			System.out.println(e);
			}
		finally
		{
			connectclose();
		}
		return list2;
	}
	
	
	public ArrayList <CntDTO> printAll() // 공지빼고 띄우기
	{
		try
		{
			open();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from contents where not cnt_nick='관리자' order by cnt_num desc;");
			while(rs.next())
			{
				CntDTO dto = new CntDTO();
				dto.setCnt_num(rs.getInt(1));
				dto.setCnt_nick(rs.getString(2));
				dto.setCnt_date(rs.getString(3));
				dto.setCnt_title(rs.getString(4));
				dto.setCnt_content(rs.getString(5));
				
				list.add(dto);
			}
		}catch (Exception e)
		{
			System.out.println(e);
			}
		finally
		{
			connectclose();
		}
		return list;
	}
	
	public void input(String nick, String title, String content)
	{
		try
		{
			open();
			stmt = conn.createStatement();
			String command = String.format("insert into contents (cnt_nick, cnt_date, cnt_title, cnt_content) values ('%s', current_date(), '%s', '%s');", nick, title, content);
			int rowNum = stmt.executeUpdate(command);
		}catch (Exception e)
		{
			System.out.println(e);
		}
		finally
		{
			connectclose();
		}
	}
	
	public void change(String nick, String title, String content, String num)
	{
		try
		{
			open();
			stmt = conn.createStatement();
			String command = String.format("update contents set cnt_title='%s', cnt_content='%s', cnt_date=current_date() where cnt_nick= '" + nick + "' and cnt_num= " + num + ";", title, content);
			int rowNum = stmt.executeUpdate(command);
		}catch (Exception e)
		{
			System.out.println(e);
		}
		finally
		{
			connectclose();
		}
	}
	
	public void delete(String num)
	{
		try
		{
			open();
			stmt = conn.createStatement();
			String command = String.format("delete from contents where cnt_num= %s",num);
			int rowNum = stmt.executeUpdate(command);
		}catch (Exception e)
		{
			System.out.println(e);
		}
		finally
		{
			connectclose();
		}
	}
	public ArrayList<CntDTO> search(String command){
		ArrayList<CntDTO> list = new ArrayList<>();
		open();
		try {
			ResultSet rs = stmt.executeQuery(command);

			while(rs.next()) {
				CntDTO dto = new CntDTO();
				dto.setCnt_num(rs.getInt(1));
				dto.setCnt_nick(rs.getString(2));
				dto.setCnt_date(rs.getString(3));
				dto.setCnt_title(rs.getString(4));
				dto.setCnt_content(rs.getString(5));

				list.add(dto);		
			}
		}catch(Exception e) {}
		finally {
			connectclose();

		}
		return list;
	}
}
