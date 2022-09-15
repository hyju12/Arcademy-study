<%@page import="prj_java.CntDTO"%>
<%@page import="vo.PageInfo"%>
<%@page import="vo.ClassBoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	ArrayList<ClassBoardBean> PopularList=(ArrayList<ClassBoardBean>)request.getAttribute("PopularList");
	ArrayList<ClassBoardBean> RecentList=(ArrayList<ClassBoardBean>)request.getAttribute("RecentList");
    PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
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
				
				$('.div_style2').mouseenter(function(){
					$('section>div:nth-child(1)>div').css(
							"border", "3px solid rgba(255, 110, 1, 1.0)")
					
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
	margin-bottom: 30px;
	font-size: 35px;
	font-weight: bold;
	display: flex;
	justify-content: center;
	margin-top: 100px;
}

table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
}

a {
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
	color: black;
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
	margin-left: 30px;
	margin-right: 260px;
	border-width: 3px;
}

section>div:nth-child(1) {
	display: flex;
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
	border-bottom-color: darkblue;
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
	width: 320px !important;
	height: 200px;
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
	font-size: 15px;
 	margin-top: 5px;
}

section>div:nth-child(1)>div {
	float: right;
	border: 4px double darkblue;
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
#registForm {
	width: 500px;
	height: 600px;
	border: 1px solid red;
	margin: auto;
}

#pageList {
	margin: auto;
	width: 500px;
	text-align: center;
}

#emptyArea {
	margin: auto;
	width: 500px;
	text-align: center;
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
	<section id="listForm">
		<div>
			<span>교육관리</span><a href="ClassboardWriteForm.bo">클래스등록</a>
			<div>
				<select name="category"
					style="border: 0; border-right: 2px solid #cfcfcf; text-align: center; height: 30px; font-size: 14px;">
					<option value="cnt_title">제목</option>
					<option value="cnt_content">내용</option>
					<option value="cnt_nick">작성자</option>
				</select> <input type="text" name="search" placeholder="검색어를 입력하세요"
					style="border: 0; border-right: 2px solid #c7c7c7; width: 300px; height: 30px; margin-top: 7px; font-size: 14px;">
				<input type="submit" value="검색"
					style="border: 0; background-color: white; width: 50px; font-size: 14px;">
			</div>
		</div>
		<div>
			<div></div>
			<div>
				<input type="button" value="반려동물 훈련"> <input type="button"
					value="반려동물 관리"> <input type="button" value="반려동물 간식">
				<input type="button" value="보호자 상담"> <input type="button"
					value="기타">
			</div>
		</div>
		<%
				if(PopularList != null){
				%>

		<form action="">
			<div>
				<p>인기클래스</p>
				<div class="multiple-items">
							<%
		for(int i=0;i<PopularList.size();i++){
			
	%>
					<div class="div_style2" onclick="location.href ='ClassboardDetail.bo?board_num=<%=PopularList.get(i).getClass_num()%>'">
						<div>
							<p class="p_style"> <%=PopularList.get(i).getClass_num()%> </p>
							<img src="mainimg/<%=PopularList.get(i).getClass_file()%>">
						</div>
						<div>
							<p class="p_style">
								<input type="button" value="<%=PopularList.get(i).getClass_area() %>">
							</p>
							<p class="p_style"><%=PopularList.get(i).getClass_title() %>
				</p>
							<p class="p_style"><%=PopularList.get(i).getClass_salary() %>원</p>
						</div>
					</div>
				<%} 
				
				}%>
				
				</div>
			</div>
				<%
				if(RecentList != null){
				%>
			
			
				<p>신규클래스</p>
				<div class="multiple-items">
							<%
		for(int i=0;i<PopularList.size();i++){
			
	%>
					<div class="div_style2" onclick="location.href ='ClassboardDetail.bo?board_num=<%=RecentList.get(i).getClass_num()%>'">
						<div>
							<p class="p_style"> <%=RecentList.get(i).getClass_num()%> </p>
							<img src="mainimg/<%=RecentList.get(i).getClass_file()%>">
						</div>
						<div>
							<p class="p_style">
								<input type="button" value="<%=RecentList.get(i).getClass_area() %>">
							</p>
							<p class="p_style">
							<a 
					href="ClassboardDetail.bo?board_num=<%=RecentList.get(i).getClass_num()%>">
						<%=PopularList.get(i).getClass_title() %>
				</a></p>
							<p class="p_style"><%=RecentList.get(i).getClass_salary() %>원</p>
						</div>
					</div>
				<%} 
				
				}%>
				
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