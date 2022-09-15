<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page trimDirectiveWhitespaces="true"%>
<jsp:useBean id="act" class="prj_java.DB_Action"></jsp:useBean>
<%
	String nick = request.getParameter("nick");
	// java 파일 연결
	String rs = act.id_check(nick);
	if (rs.equals("1")) {
		out.print("1");
	} else {
		out.print("0");
	}
%>