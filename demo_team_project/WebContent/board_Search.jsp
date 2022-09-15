<%@page import="prj_java.CntDTO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 검색결과</title>
<link rel="stylesheet" type="text/css" href="project_CSS/board_Main.css">
</head>
<jsp:useBean id="act" class="prj_java.DB_Action2"></jsp:useBean>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$( document ).ready( function() {
	  var navOffset = $( 'nav' ).offset();
	  $( window ).scroll( function() {
	    if ( $( document ).scrollTop() > navOffset.top ) {
	      $( 'nav' ).addClass( 'active' );
	    }
	    else {
	      $( 'nav' ).removeClass( 'active' );
	    }
	  });
	});
</script>
<body>
	<div>
		<header>
			<div>
				<span>이리온</span>
			</div>
			<div>
				<span>마이페이지 </span> <span>|</span> <span>로그아웃</span>
			</div>
		</header>
		<nav>
			<div>
				<ul>
					<li>반려동물자랑</li>
					<li>교육관리</li>
					<li>커뮤니티</li>
					<li>위치안내</li>
					<li>중고물품</li>
					<li>돌봄신청</li>
					<li>실종신고센터</li>
				</ul>
			</div>
		</nav>
	</div>
	<section>
		<p>커뮤니티</p>
		<form action="db_Search.jsp">
			<div
				style="float: right; margin-bottom: 20px; border: 3px solid #ffc491; height: 30px; border-radius: 5px;">
				<select name="category" style="border: 0; border-right: 2px solid #cfcfcf; text-align: center; font-size: 14px;">
					<option value="cnt_title">제목</option>
					<option value="cnt_content">내용</option>
					<option value="cnt_nick">작성자</option>
				</select> 
				<input type="text" name="search" placeholder="검색어를 입력하세요" style="border: 0;border-right: 2px solid #c7c7c7; width: 300px; margin-top: 7px; font-size: 14px;">
				<input type="submit" value="검색"style="border: 0; background-color: white;  width: 50px; font-size: 14px;">
			</div>
		</form>
		<table>
			<colgroup>
				<col width="60">
				<col width="*">
				<col width="80">
				<col width="120">
			</colgroup>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<%
				ArrayList<CntDTO> list1 = act.admin();
			
				for (int i = 0; i < list1.size(); i++) {
					out.print("<tr style='background: #fff6db;'>");
					out.print("<td><span style='color:red;'>공지</span></td>");
					out.print("<td style='text-align: left;'><a id='title' href='board_Detail.jsp?num=" + list1.get(i).getCnt_num() + "&nick=" + list1.get(i).getCnt_nick() + "&date=" + list1.get(i).getCnt_date() + "&title=" + list1.get(i).getCnt_title() + "&content=" + list1.get(i).getCnt_content() + "'>" + list1.get(i).getCnt_title()
							+ "</a></td>");
					out.print("<td>" + list1.get(i).getCnt_nick() + "</td>");
					out.print("<td>" + list1.get(i).getCnt_date() + "</td>");
					out.print("</tr>");
				}
			%>
			<%
			List<CntDTO> list =(ArrayList)request.getAttribute("list");
				for (int i = 0; i < list.size(); i++) {
					out.print("<tr>");
					out.print("<td>" + (list.size() - i) + "</td>");
					out.print("<td style='text-align: left;'><a id='title' href='board_Detail.jsp?num=" + list.get(i).getCnt_num() + "&nick=" + list.get(i).getCnt_nick() + "&date=" + list.get(i).getCnt_date() + "&title=" + list.get(i).getCnt_title() + "&content=" + list.get(i).getCnt_content() + "'>" + list.get(i).getCnt_title()
							+ "</a></td>");
					out.print("<td>" + list.get(i).getCnt_nick() + "</td>");
					out.print("<td>" + list.get(i).getCnt_date() + "</td>");
					out.print("</tr>");	
				}
			%>

		</table>
		<input type="button" value="글쓰기" onclick="location.href ='board_Writing.jsp'">
	</section>
	<footer>
		<div>
			<ul>
				<li>고객센터</li>
				<li>1:1문의</li>
				<li>공지사항</li>
				<li>유기견보호센터</li>
				<li>반려동물 보호단체</li>
			</ul>
			<address>
				대표자 : 김호동<br> 전화번호 : 010-1234-5678<br> 주소 : 서울특별시 강동구 천호동
				231-21 202호<br> 이메일 : qwer1234@naver.com
			</address>
			<address id="adr">문의 가능 시간 : 09:00 ~ 18:00 (주말, 공휴일 제외)</address>
		</div>
	</footer>
</body>
</html>