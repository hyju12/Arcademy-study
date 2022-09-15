<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
</head>
<body>
	<h3>로그인결과</h3>
	<%
   String id = request.getParameter("ID"); 
   String pw = request.getParameter("PW");
   
	session.setAttribute("ID", id);
	session.setAttribute("PASSWORD", pw);
%> 
<% 
   Connection conn = null; 
   Statement stmt = null;
   try{
	   Class.forName("com.mysql.jdbc.Driver");
	   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/d","root","0000");
	   stmt = conn.createStatement();
	   ResultSet rs = stmt.executeQuery("select * from user where user_id = '"+id+"';");
	   if(rs.next()){
		   String password = rs.getString("user_pw");
		   
				if(password.equals(pw)){					
					out.println("로그인이 되었습니다.");

				}
				else{
				out.println("비밀번호가 틀렸습니다.");
			}
			}
			else{
				out.println("아이디가 존재하지 않습니다.");
			}
   }
   
   finally{
	   try{
		   stmt.close();
	   }
	   catch(Exception e){
		   System.out.println("1번 오류");
	   }
	   try{
		   conn.close();
	   }
	   catch(Exception e){
		   System.out.println("2번 오류");
	   }
   }

 %>
 <a href="qna_board_write.jsp">글쓰러가기</a>

</body>
</html>