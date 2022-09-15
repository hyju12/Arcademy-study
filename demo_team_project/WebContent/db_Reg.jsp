<%@page import="prj_java.UserDTO"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="act" class="prj_java.DB_Action"></jsp:useBean>
<%
	String id = request.getParameter("hidden_id");
	String nick = request.getParameter("hidden_nick");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String birth = request.getParameter("year") + "년" + request.getParameter("month") + "월"
			+ request.getParameter("day") + "일";
	String phone = request.getParameter("ph1") + request.getParameter("ph2") + request.getParameter("ph3");
	String email = request.getParameter("email") + request.getParameter("hidden_email");
	String adr = request.getParameter("ad1") + " " + request.getParameter("ad2") + " "
			+ request.getParameter("ad3");

	UserDTO dto = new UserDTO();

	dto.setUid(id);
	dto.setUnick(nick);
	dto.setUpw(pw);
	dto.setUname(name);
	dto.setUbirth(birth);
	dto.setUph(phone);
	dto.setUmail(email);
	dto.setUadr(adr);
	//JAVA클래스 연결 DB 저장
	act.register(dto);

	response.sendRedirect("signup_Success.html");
%>