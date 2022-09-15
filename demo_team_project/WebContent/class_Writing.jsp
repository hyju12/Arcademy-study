 <%@page import="prj_java.CntDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

			});
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
	margin-bottom: 50px;
	font-size: 35px;
	font-weight: bold;
	display: flex;
	justify-content: center;
	margin-top: 50px;
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
input[type=button] {
	color: rgba(255, 110, 1, 1.0);
	border-color: rgba(255, 110, 1, 1.0);
	border-style: solid;
	background: white;
	width: 120px;
	height: 46px;
	padding: 0;
	font-size: 15px;
	margin-left: 5px;
	border-radius: 5px;
	float: right;
}

input[type=submit] {
	color: rgba(255, 110, 1, 1.0);
	border-color: rgba(255, 110, 1, 1.0);
	border-style: solid;
	background: white;
	width: 100px;
	height: 30px;
	padding: 0;
	font-size: 15px;
	margin-left: 5px;
	border-radius: 5px;
}

section> div:nth-child(1)> span {
	margin-bottom: 50px;
	font-size: 30px;
	font-weight: bold;
	display: flex;
	justify-content: center;
	margin-top: 50px;
	word-spacing: 30px;
}

section> div:nth-child(1){
	border-bottom: 3px solid black;
}

form span {
	font-size: 15px;
	font-weight: bold;
}

form>div {
	width: 500px;
	float: right;
}

section a {
	color: rgba(255, 110, 1, 1.0);
	border-color: rgba(255, 110, 1, 1.0);
	border-style: solid;
	background: white;
	width: 100px;
	height: 20px;
	text-align: center;
	padding: 0;
	margin: 0;
	font-size: 16px;
	border-radius: 20px;
	float: right;
}

#div_style{ 
	width:800px;
}

.input_style {
	width: 400px;
	height: 40px;
	font-size:18px;
	border: 1px ridge rgb(221,221,221);
}

input[type=text]:first-letter{}

select[name=class_area]{
	width:80px;
	height:30px;
	font-size:18px;
	border: 1px ridge rgb(221,221,221);
}

select[name=class_subject]{
	width:140px;
	height:40px;
	font-size:18px;
	border: 1px ridge rgb(221,221,221);
}

input[type=file]{
	width:200px;
	height:40px;
	font-size:16px;

}

form span:first-letter {
	color: orange;
	background-color: blue;
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
			<span>클래스 등록</span>
		</div>
		<form action="ClassboardWritePro.bo" method="post"
			enctype="multipart/form-data" name="boardform">
			<div id="div_style">
				<div>
					<span>클래스 이름 : </span><input type="text" name="class_title" class="input_style">
				</div>
				<div>
					<span>클래스 설명 : </span><input type="text" name="class_content" class="input_style">
				</div>
				<div>
					<span>클래스 장소 : </span><input type="text" name="class_address" class="input_style">
				</div>
				<div>
					<span>클래스 날짜 및 시간 : </span><input type="text" name="class_time" class="input_style">
				</div>
				<div>
					<span>클래스 지역 : </span> 
					<select name="class_area">
						<option value="seoul">서울</option>
						<option value="부산">부산</option>
						<option value="대구">대구</option>
						<option value="인천">인천</option>
						<option value="광주">광주</option>
						<option value="대전">대전</option>
						<option value="울산">울산</option>
						<option value="세종">세종</option>
						<option value="경기">경기</option>
						<option value="대전">대전</option>
						<option value="강원">강원</option>
						<option value="충북">충북</option>
						<option value="전북">전북</option>
						<option value="전남">전남</option>
						<option value="경북">경북</option>
						<option value="경남">경남</option>
						<option value="제주">제주</option>		
					</select>
				</div>
				<div>
					<span>클래스 금액 : </span><input type="text" name="class_salary" class="input_style"> 원
				</div>
				<div>
					<span>카테고리 : </span>
					<select name="class_subject">
						<option value="반려동물 훈련">반려동물 훈련</option>
						<option value="반려동물 관리">반려동물 관리</option>
						<option value="반려동물 간식">반려동물 간식</option>
						<option value="보호자 상담">보호자 상담</option>
						<option value="기타">기타</option>
					</select>
				</div>
				<div>
					<span>사진 : </span> 
					<input name="class_file" type="file" id="BOARD_FILE"/>
				</div>
				<div>
					<span>강사 이름 : </span><input type="text" name="class_name" class="input_style"> 
				</div>
				<div>
					<span>강사 소개 : </span><input type="text" name="class_infor" class="input_style">
				</div>
				<input type="submit" value="신청"> <a href="class_Main.jsp">뒤로가기</a>
			</div>
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