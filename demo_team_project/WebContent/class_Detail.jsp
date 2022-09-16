<%@page import="prj_java.CntDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.ClassBoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ClassBoardBean article = (ClassBoardBean) request.getAttribute("article");
	String boardNum = request.getParameter("board_num");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 메인</title>
<link rel="stylesheet" type="text/css" href="">
</head>
<jsp:useBean id="act" class="prj_java.DB_Action2">
</jsp:useBean>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="slick/slick.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css" href="slick/slick-theme.css" />
<script type="text/javascript">
	$(document).ready(

			function() {

				var navOffset = $('nav').offset();
				$(window).scroll(function() {
					if ($(document).scrollTop() > navOffset.top) {
						$('nav').addClass('active');
					} else {
						$('nav').removeClass('active');
					}
				});

				$('#category').click(
						function() {
							$('section>div:nth-child(2)>div:nth-child(2)').css(
									"visibility", "visible")
						});

				$('.multiple-items').slick({
					dots : true,
					infinite : false,
					speed : 300,
					slidesToShow : 3,
					slidesToScroll : 1
				});
				
				$('#class_button').click({
					alert("클래스 작성이 저장되었습니다. 내 클래스 현황은 마이페이지에서 확인 가능합니다'");	
					
				});
				

			});

	function addLike(obj) {
		if (obj.style.color == "red") {
			$(obj).html("<i class='xi-heart-o xi-2x'></i>");
			$(obj).css("color", "black");
		} else {
			$(obj).html("<i class='xi-heart xi-2x'></i>");
			$(obj).css("color", "red");
		}
	}
</script>
<style>
@font-face /*메인 글꼴*/ {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'Happiness-Sans-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Regular.woff2')
		format('woff2');
	font-weight: 400;
	font-style: normal;
}

@font-face {
	font-family: 'Cafe24Ssurround';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24Ssurround.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: Happiness-Sans-Regular;
	margin: 0;
	padding: 0;
}

body {
	margin: 0px;
}

ul {
	margin: 0 auto;
	width: 1000px;
	font-weight: bolder;
}

li {
	list-style: none;
	float: left;
}

/* Header CSS */
header {
	width: 1000px;
	height: 100px;
	margin: 0 auto;
}

header>div:nth-child(1) {
	width: 150px;
	height: 50px;
	margin: 5px;
	float: left;
	margin-left: 400px;
	margin-top: 10px;
	font-size: 40px;
}

header>div:nth-child(1)>span {
	font-family: 'yg-jalnan';
}

header>div:nth-child(2) {
	float: right;
	margin-top: 20px;
	margin-left: 20px;
	font-size: 15px;
	color: darkblue;
	font-weight: bold;
}

/* Menu(Navigation Bar) */
nav {
	width: 100%;
	z-index: 999;
	background: white;
}

nav li {
	display: flex;
	justify-content: space-around;
	align-items: center;
	width: 142px;
	height: 50px;
	transition: 0.35s;
}

nav>div>ul>li:hover {
	background-color: rgba(255, 110, 1, 1.0);
	color: white;
}

nav>div {
	height: 50px;
	margin: 0 auto;
	border-top: 3px solid #ddd;
	border-bottom: 3px solid rgba(255, 110, 1, 1.0);
}

/* Footer CSS */
footer {
	height: 180px;
	margin: 0 auto;
}

footer>div {
	width: 1000px;
	height: 30px;
	margin: 0 auto;
}

footer>div>ul {
	height: 40px;
	margin: 0px auto;
	width: 1000px;
	margin: 0 auto;
	display: flex;
	justify-content: space-around;
	align-items: center;
}

footer>div>ul>li {
	list-style: none;
	float: left;
	margin-left: 50px;
	margin-right: 50px;
	font-size: 15px;
}

address {
	font-style: normal;
	font-size: 12px;
	float: left;
	width: 400px;
	height: 100px;
	margin-top: 15px;
	margin-left: 55px;
	color: '#747474';
	line-height: 190%;
}

#adr {
	margin-left: 80px;
	text-align: right;
}

img {
	width: 450px;
	height: 450px;
	margin: 10px;
}

.active {
	position: fixed;
	top: 0px;
}

section {
	display: block;
	position: relative;
	margin: 50px auto;
	width: 1000px;
	height: 1000px;
	background: white;
}

p {
	font-size: 16px;
	color: gray;
}

table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
}

a {
	padding-left: 35px;
	font-size: 14px;
	text-decoration: none;
	color: black;
}

table tr th {
	padding: 15px 0 15px 0;
	background: #eee;
	font-family: none;
}

table tr {
	width: 100%;
	border-bottom: 1px solid #ddd;
}

table tr td {
	padding: 10px 0 10px 0;
	text-align: center;
}

.active {
	position: fixed;
	top: 0px;
}

/* Menu(Navigation Bar) */
nav {
	width: 100%;
	z-index: 999;
	background: white;
}

nav li {
	display: flex;
	justify-content: space-around;
	align-items: center;
	width: 142px;
	height: 50px;
	transition: 0.35s;
}

nav>div>ul>li:hover {
	background-color: rgba(255, 110, 1, 1.0);
	color: white;
}

nav>div {
	height: 50px;
	margin: 0 auto;
	border-top: 3px solid #ddd;
	border-bottom: 3px solid rgba(255, 110, 1, 1.0);
}

/*  Middle contents */
section>div:nth-child(1)>a {
	color: rgba(255, 110, 1, 1.0);
	border-color: rgba(255, 110, 1, 1.0);
	border-style: solid;
	background: white;
	width: 150px;
	height: 50px;
	padding: 0;
	margin: 0;
	font-weight: bolder;
	font-size: 18px;
	margin-left: 30px;
	margin-right: 260px;
	display: inline-flex;
	align-items: center;
	justify-content: center;
	border-radius: 10px;
}

}
section>div:nth-child(1) {
	display: inline-flex;
	align-items: baseline;
	justify-content: space-between;
}

.first_div {
	width: 320px;
	height: 50px;
}

section>div:nth-child(1)>span {
	font-size: 35px;
	font-weight: bold;
}

section>div:nth-child(2)>div>input[type=button] {
	color: rgba(255, 110, 1, 1.0);
	border: 1px solid rgba(255, 110, 1, 1.0);
	border-bottom-color: black;
	width: 200px;
	height: 50px;
	padding: 0;
	margin: 0;
	font-size: 16px;
	font-weight: bolder;
	background-color: white;
}

section>div:nth-child(2)>div:nth-child(1) {
	width: 150px;
	margin-right: 10px;
	float: left;
}

section>div:nth-child(2)>div:nth-child(2) {
	width: 1000px;
	float: left;
	display: flex;
	justify-content: space-between;
}

section>div:nth-child(2) {
	margin-top: 30px;
	margin-bottom: 30px;
	height: 50px;
}

#category {
	margin-left: -50px;
}

}
.multiple-items {
	border: 1px solid black;
	width: 1200px;
	height: 200px;
	display: inline-block;
	margin-left: -50px;
}

.div_style2 {
	border: 1px dotted #8C8C8C;
	width: 350px !important;
	height: 180px;
	float: left;
	margin: 10px 0 0 10px;
	background-color: white;
}

.div_style2 input[type=button] {
	width: 60px;
	height: 30px;
	border-radius: 21px;
	border: 1px solid black;
	font-weight: bolder;
	font-size: 14px;
}

.div_style2 img {
	width: 150px;
	height: 150px;
	margin: 10px;
}

.div_style2 div {
	height: 100%;
	float: left;
}

.div_style2 div:nth-child(2) {
	background-color: light-gray;
}

.div_style2 div:nth-child(2) * {
	margin-top: 20px;
}

.p_style {
	margin: 0;
	font-size: 16px;
	display: flex;
	justify-content: flex-start;
}

form>div {
	width: 1000px;
	height: 100px;
	margin-top: 50px;
}

section>div:nth-child(1)>div {
	float: right;
	border: 4px double rgba(255, 110, 1, 1.0);
	height: 40px;
	border-radius: 5px;
}

select[name=category] {
	border: 0;
	border-right: 2px solid #cfcfcf;
	text-align: center;
	height: 30px;
	font-size: 14px;
}

form>div:first-child>div:first-child>span {
	font-weight: bolder;
	font-size: 25px;
}

form>div:first-child {
	border-bottom: 3px solid #f0f3f8;
	display: flex;
	align-items: center;
}

form>div:nth-child(1) a {
	float: right;
}

#content {
	font-size: 17px;
}

.locationBtn {
	font-size: 40px;
}

.area {
	width: 500px;
	height: 500px;
	float: left
}

#class_button {
	color: rgba(255, 110, 1, 1.0);
	border: 3px solid #f0f3f8;
	width: 500px;
	height: 50px;
	padding: 0;
	margin: 0;
	font-size: 20px;
	font-weight: bolder;
	background-color: white;
	margin: 0 auto;
}

.area div {
	display: flex;
	align-items: center;
	height: 90px;
	border-bottom: 3px solid #f0f3f8;
	overflow: hidden;
    text-overflow: ellipsis;
    justify-content: flex-start;
}

.suv_span {
	font-size: 25px;
	font-weight: bolder;
}

#suv_span1{
	width: 70px;
}

#suv_span2{
	width: 120px;
}

form>div:nth-child(1)>div:nth-child(2) {
	font-size: 13px;
	height: 20px;
	width: 130px;
	margin-top: 20px;
	color: darkgray;
	display: flex;
	align-items: flex-end;
	justify-content: right;
}

#content>span {
	line-height: 30px;
}

</style>
<body>
	<div>
		<header>
			<div>
				<span>이리온</span>
			</div>
			<div>
				<span>마이페이지 </span> <span>|</span> <span><a
					href="main_Index.html">로그아웃</a></span>
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
		<div>
			<span>교육관리</span><a href="class_Writing.jsp">클래스등록</a>
		</div>
		<form action="ClassboardApplyPro.bo">
			<div>
				<div>
					<span><%=article.getClass_title()%> </span> <a class="heartBtn"
						onclick="addLike(this)"><i class='xi-heart-o xi-2x'></i></a> </span>
				</div>
			</div>
			<div style="width: 1000px">
				<div class="area">
					<img alt="클래스 이미지" src="mainimg/<%=article.getClass_file()%>">
				</div>
				<div class="area">
					<div>
						<span class="locationBtn"><i class='xi-check'></span></i> 
						<span class="suv_span"><%=article.getClass_salary()%> 원</span>
					</div>
					<div>
						<span class="locationBtn"><i class='xi-maker'></span></i> 
						<span class="suv_span" id="suv_span1"><%=article.getClass_area()%></span>
						<p><%=article.getClass_address()%></p>
					</div>
					<div>
						<span class="locationBtn"><i class='xi-calendar'></span></i> 
						<span class="suv_span"><%=article.getClass_time()%></span>
					</div>
					<div>
						<span class="locationBtn"><i class='xi-user'></span></i> 
						<span class="suv_span" id="suv_span2"><%=article.getClass_name()%></span>
						<p><%=article.getClass_infor()%></p>
					</div>
					<div>
						<input type="submit" value="클래스 신청" id="class_button">
					</div>
				</div>
			</div>
			<div>
				<div id="content">
					<span> <%=article.getClass_content()%>
					</span>
				</div>
			</div>
			</div>
			<input type="hidden" value="<%= boardNum %>" name="board_num">
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
				231-21 202호<br> 이메일 : qwer1234@naver.com
			</address>
			<address id="adr">문의 가능 시간 : 09:00 ~ 18:00 (주말, 공휴일 제외)</address>
		</div>
	</footer>
</body>
</html>