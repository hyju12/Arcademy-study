<%@page import="prj_java.CntDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
</head>
<body>
<jsp:useBean id="act" class="prj_java.DB_Action2"></jsp:useBean>
<%

String cate = request.getParameter("category");
String search = request.getParameter("search");

String command = "select * from contents where " + cate + " like '%" + search + "%';";

ArrayList<CntDTO> list = act.search(command);
request.setAttribute("list", list);

RequestDispatcher dispatcher = request.getRequestDispatcher("board_Search.jsp");
dispatcher.forward(request, response);

%>
</body>
</html>