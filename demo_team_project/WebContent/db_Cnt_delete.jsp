<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:useBean id="delete" class="prj_java.DB_Action2"></jsp:useBean>
<body>
<%
String num = request.getParameter("num");

delete.delete(num);

response.sendRedirect("board_Main.jsp");
%>
</body>
</html>