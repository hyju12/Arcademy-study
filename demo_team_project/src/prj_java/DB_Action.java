package prj_java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB_Action {

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs;

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

	public void register(UserDTO dto) {
		open();
		String command = String.format("insert into userDTO values ('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s');",
				dto.getUid(), dto.getUnick(), dto.getUpw(), dto.getUname(), dto.getUbirth(), dto.getUph(), dto.getUmail(), dto.getUadr());
		try {
			stmt.executeUpdate(command);
		}catch (Exception e) {
		}finally {
			connectclose();
		}
	}
	public String id_check(String id) {
		open();
		String result = null;
		try {
			ResultSet rs = stmt.executeQuery("select uid from userDTO where uid = '" + id + "';"); // �о���ڴ�
			if(rs.next())
			{
				result= "1";
			}
			else
			{
				result= "0";
			}
		}catch (Exception e) {
		}finally {
			connectclose();
		}
		return result;
	}

	public String nick_check(String nick) {
		open();
		String result = null;
		try {
			ResultSet rs = stmt.executeQuery("select unick from userDTO where unick = '" +nick + "';"); // �о���ڴ�
			if(rs.next())
			{
				result= "1";
			}
			else
			{
				result= "0";
			}
		}catch (Exception e) {
		}finally {
			connectclose();
		}
		return result;
	}
	
	public String login_check(String id, String pw) {
		open();
		String result= null;
		
		try {
			ResultSet rs = stmt.executeQuery("select * from userDTO where uid ='"+ id+"';");
			if(rs.next()) {
				String id1 =rs.getString("uid");
				String pw1 = rs.getString("upw");
				String nick = rs.getString("unick");
				if(id.equals(id1)&&pw.equals(pw1)){
					result=nick;
				}
				else {
					result= "0";
				}
				
			}
			else {
				result= "0";
			}
		}catch (Exception e) {
		}finally {
			connectclose();
		}
		return result;
		
	}

}
