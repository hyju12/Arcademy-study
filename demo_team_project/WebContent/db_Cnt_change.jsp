<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="update" class="prj_java.DB_Action2"></jsp:useBean>
<body>
<%
String nick = request.getParameter("nick");
String title = request.getParameter("title");
String content = request.getParameter("content");
String num = request.getParameter("num");

update.change(nick, title, content, num);

response.sendRedirect("board_Main.jsp");
%>
</body>
</html>