<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="project_CSS/basic.css">
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
<%
	String num = request.getParameter("num");
	String nick = request.getParameter("nick");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
%>
<body>
	<div>
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
		<section style="border-top: 2px solid black;">
			<form action="db_Cnt_change.jsp"> 
				<div style="padding: 20px;">
					<p style="text-align: center; font-size: 30px">글수정</p>
				</div>
				<div style="border-top: 1px solid gray; border-bottom: 1px solid gray; height: 100px; padding-top: 20px; margin-bottom: 10px;">
					<div style="margin-left: 15px; margin-bottom: 10px;">작성자: <%=nick%></div>
					<div style="margin-left: 28px;">
						제목: <input type="text" maxlength="45" name="title" value=<%=title%> style="width: 900px; height: 50px; font-size: 20px;">
					</div>
				</div>
				<div style="height: 650px; border-bottom: 2px solid black;">
				<table style="margin: 0 auto;">
					<tr>
						<th>내용:</th>
						<td><textarea name="content" style="width: 882px; height: 600px; padding: 10px; resize: none"><%=content%></textarea></td>
						<td><input type='hidden' name="num" value=<%=num%>></td>
					</tr>
				</table>
				</div>
				<input type="submit" value="저장하기">
				<input type="button" value="돌아가기" onclick="location.href ='board_Main.jsp'">
			</form>
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
					231-21 202호<br> 이메일 : qwer1234@ naver.com
				</address>
				<address id="adr">문의 가능 시간 : 09:00 ~ 18:00 (주말, 공휴일 제외)</address>
			</div>
		</footer>
	</div>
</body>
</html>