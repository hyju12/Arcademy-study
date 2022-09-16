<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="project_CSS/market.css">
<style type="text/css">
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


img {
	width: 200px;
	height: 200px;
}

section {
	height: 1700px;
}

section>form>ul>li:first-child /*작성리스트*/ {
	width: 100%;
	display: flex;
	padding: 2rem 0px;
	border-top: 2px solid rgb(30, 29, 41);
	border-bottom: 1px solid rgb(220, 219, 228);
}

section>form>ul>li /*작성리스트*/ {
	width: 100%;
	display: flex;
	padding: 2rem 0px;
	border-bottom: 1px solid rgb(220, 219, 228);
}

section>form>ul>li:last-child /*작성리스트*/ {
	width: 100%;
	display: flex;
	padding: 2rem 0px;
	border-bottom: 2px solid rgb(30, 29, 41);
}

section>form>ul>li>div:first-child /*작성리스트를 담는 틀(이름)*/ {
	box-sizing: border-box;
	width: 150px;
}

section>form>ul>li>div:first-child>span /*작성리스트를 담는 틀(이름)*/ {
	color: rgba(255, 110, 1, 1.0);
}

section>form>ul>li>div /*작성리스트를 담는 틀(text박스)*/ {
	box-sizing: border-box;
	width: 850px;
}

input[type=text] /*닉네임, 제목 text창 조절(금액도 해당)*/ {
	width: 815px;
	height: 50px;
	font-size: 100%;
	padding: 0px 16px;
	letter-spacing: -0.5px;
}

input[name=market_salary] /*금액 따로 text창 조절*/ {
	width: 300px;
	height: 50px;
	font-size: 100%;
	padding: 0px 16px;
	letter-spacing: -0.5px;
	margin-right: 1rem;
}

textarea /*내용 textarea창 조절*/ {
	width: 815px;
	height: 150px;
	font-size: 100%;
	padding: 16px;
	letter-spacing: -0.5px;
	resize: none;
}

input[type=submit] /*작성하기 버튼*/ {
	color: rgba(255, 110, 1, 1.0);
	border: 2px solid rgba(255, 110, 1, 1.0);
	background: white;
	width: 120px;
	height: 46px;
	padding: 0;
	font-weight: bolder;
	margin-top: 20px;
	float: right;
}

input[type=button] /*뒤로가기 버튼*/ {
	color: rgba(255, 110, 1, 1.0);
	border: 2px solid rgba(255, 110, 1, 1.0);
	background: white;
	width: 120px;
	height: 46px;
	padding: 0;
	font-weight: bolder;
	margin-top: 20px;
	margin-left: 25px;
	float: right;
}

.input_file_button /*파일업로드 버튼 대신한 라벨*/ {
	cursor: pointer;
	font-size: 15px;
}

#ad2 /*주소창*/ {
	width: 500px;
}

select{
	font-size: 16px;
	padding: 0px 16px;

}

</style>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script type="text/javascript">
	function isEmpty(value) {
		if (value.length == 0 || value == null) {
			return true;
		} else {
			return false;
		}
	}
	function isNumeric(value) {
		var regExp = /^[0-9]+$/g;
		return regExp.test(value);
	}
	function currencyFormatter(amount) {
		return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
	$(document).ready(function() {
		var navOffset = $('nav').offset();
		$(window).scroll(function() {
			if ($(document).scrollTop() > navOffset.top) {
				$('nav').addClass('active');
			} else {
				$('nav').removeClass('active');
			}
		});
		$('#salary').on('focus', function() {
			var val = $('#salary').val();
			if (!isEmpty(val)) {
				val = val.replace(/,/g, '');
				$('#salary').val(val);
			}
		});
		$('#salary').on('blur', function() {
			var val = $('#salary').val();
			if (!isEmpty(val) && isNumeric(val)) {
				val = currencyFormatter(val);
				$('#salary').val(val);
			}
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				document.getElementById('preview').src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			document.getElementById('preview').src = "";
		}
	}
	function readURL2(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				document.getElementById('preview2').src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			document.getElementById('preview2').src = "";
		}
	}
	function readURL3(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				document.getElementById('preview3').src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			document.getElementById('preview3').src = "";
		}
	}
	function readURL4(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				document.getElementById('preview4').src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			document.getElementById('preview4').src = "";
		}
	}
	function readURL5(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				document.getElementById('preview5').src = e.target.result;
			};
			reader.readAsDataURL(input.files[0]);
		} else {
			document.getElementById('preview5').src = "";
		}
	}
	
	 function comma(str) {
	        str = String(str);
	        return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	    }
	
	function add() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					document.getElementById("ad2").value = extraAddr;

				} else {
					document.getElementById("ad2").value = '';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				//document.getElementById('ad1').value = data.zonecode;
				document.getElementById("ad2").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				//document.getElementById("ad3").focus();
			}
		}).open();
	}
</script>
<body>
	<div>
		<header>
			<div>
				<span>이리온</span>
			</div>
			<div>
				<a href="main_Index.html"><span>로그아웃</span></a><a><span>마이페이지</span></a>
			</div>
		</header>
		<nav>
			<div>
				<ul>
					<li>반려동물자랑</li>
					<a href="ClassViewListboardList.bo"><li>교육관리</li>
					<a href="board_Main.jsp"><li>커뮤니티</li></a>
					<li>위치안내</li>
					<a href="marketList.bo"><li>중고물품</li></a>
					<li>돌봄신청</li>
					<li>실종신고센터</li>
				</ul>
			</div>
		</nav>
	</div>
	<section>
		<p>교육관리 : 클래스등록</p>
		<form action="ClassboardWritePro.bo" method="post"
			enctype="multipart/form-data">
			<ul>
				<li>
					<div>
						작성자<span>*</span>
					</div>
					<div>
						<input type="text" value="<%=session.getAttribute("nick")%>"
							name="class_nick" required="required" readonly
							style="border: 0px; pointer-events: none;">
					</div>
				</li>
				<li>
					<div>
						이미지 파일<span>*</span>
					</div>
					<div>
						<img id="preview" /><input type="file" id="input_file"
							name="class_file" required="required" onchange="readURL(this)"
							style="display: none;"> <label for="input_file"
							class="input_file_button"><i class='xi-image xi-2x'></i>1</label>

						<img id="preview2" /><input type="file" id="input_file2"
							name="class_file2" required="required" onchange="readURL2(this)"
							style="display: none;"> <label for="input_file2"
							class="input_file_button"><i class='xi-image xi-2x'></i>2</label>

						<img id="preview3" /><input type="file" id="input_file3"
							name="class_file3" required="required" onchange="readURL3(this)"
							style="display: none;"> <label for="input_file3"
							class="input_file_button"><i class='xi-image xi-2x'></i>3</label>

						<img id="preview4" /><input type="file" id="input_file4"
							name="class_file4" required="required" onchange="readURL4(this)"
							style="display: none;"> <label for="input_file4"
							class="input_file_button"><i class='xi-image xi-2x'></i>4</label>

						<img id="preview5" /><input type="file" id="input_file5"
							name="class_file5" required="required" onchange="readURL5(this)"
							style="display: none;"> <label for="input_file5"
							class="input_file_button"><i class='xi-image xi-2x'></i>5</label>
					</div>
				</li>
				<li>
					<div>
						제목<span>*</span>
					</div>
					<div>
						<input type="text" name="class_title" required="required"
							placeholder="클래스 제목을 입력해주세요.">
					</div>
				</li>
				<li>
					<div>
						강사이름<span>*</span>
					</div>
					<div>
						<input type="text" name="class_name" required="required"
							placeholder="강사 이름을 입력해주세요">
					</div>
				</li>
				<li>
					<div>
						강사소개<span>*</span>
					</div>
					<div>
						<input type="text" name="class_name" required="required"
							placeholder="간단한 강사 소개를 입력해주세요">
					</div>
				</li>
				<li>
					<div>
						클래스 지역<span>*</span>
					</div>
					<div>
						<select name="class_area" required="required"
							style="width: 200px; height: 50px;">
							<option value="서울">서울</option>
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
				</li>
				<li>
					<div>
						카테고리<span>*</span>
					</div>
					<div>
						<select name="class_subject" required="required"
							style="width: 200px; height: 50px;">
						<option value="반려동물 훈련">반려동물 훈련</option>
						<option value="반려동물 관리">반려동물 관리</option>
						<option value="반려동물 간식">반려동물 간식</option>
						<option value="보호자 상담">보호자 상담</option>
						<option value="기타">기타</option>
						</select>
					</div>
				</li>
				<li>
					<div>
						클래스 장소<span>*</span>
					</div>
					<div>
						<input type="text" id="ad2" placeholder="주소" name="merket_adrs"><input
							type="button" onclick="add()" value="우편번호검색"
							style="margin: 0px; margin-top: 5px;">
					</div>
				</li>
				<li>
					<div>
						클래스 설명<span>*</span>
					</div>
					<div>
						<textarea
							placeholder="클래스에 대한 상세 설명을 적어주세요. (10자 이상)"
							name="market_content" required="required"></textarea>
					</div>
				</li>
				<li>
					<div>
						금액<span>*</span>
					</div>
					<div>
						<input type="text" id="salary" name="market_salary"
							required="required" placeholder="숫자만 입력해주세요."
							onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
							onKeyup="comma(this)"
						 	maxlength="10">원<br>
					</div>
				</li>
			</ul>
			<a href="javascript:history.go(-1)"><input type="button"
				value="뒤로가기" /></a> <input type="submit" value="작성하기">
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