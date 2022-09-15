<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="act" class="prj_java.DB_Action"></jsp:useBean>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//java 연결
		String rs = act.login_check(id, pw);
		if(rs.equals("0")){
			out.print("다시 로그인을 해주세요");
		}
		else{
			session.setAttribute("nick", rs);
			session.setAttribute("id",id);
			
			
			response.sendRedirect("board_Main.jsp");
		}
		
	%>
</body>
</html>