<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<jsp:useBean id="act" class="prj_java.DB_Action"></jsp:useBean>
<%
	String id = request.getParameter("id"); //아이디 불러오기
	// java 파일 연결
	String rs = act.id_check(id);
	if (rs.equals("1")) {
		out.print("1");
	} else {
		out.print("0");
	}
%>