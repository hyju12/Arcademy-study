<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-08-19
  Time: 오후 5:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>4</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="project_CSS/signup_Reg.css">
</head>
<script src="project_JS/signup_Reg.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>
	function id_check() {
		var id1 = document.getElementById("id1").value;
		var idch = /^[a-zA-z0-9]{4,12}$/;

		if (id1.length == 0) {
			alert("아이디를 입력해주세요.");
			return false;
		} else if (!idch.test(id1)) {
			alert("아이디는 영문대소문자와 4~12자리로 입력해야합니다.");
			return false;
		} else {
			$.ajax({
				url : "db_IdCheck.jsp?id=" + $('#id1').val(),
				success : function(result) {
					if (result == "0") {
						$('#same0').html("사용가능한 아이디입니다.");
						$('#same0').css("color", 'blue');
						$('#id1').attr('disabled', 'true');
						$('#hidden_id').val($('#id1').val());
						return true;
					} else {
						$('#same0').html(result);
						$('#same0').html("사용할수 없는 아이디입니다.");
						$('#same0').css("color", 'red');
						return false;
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error." + error);
				}
			});
		}
	}

	function nick_check() {
		var nick = document.getElementById("nickname1").value;

		if (nick.length == 0) {
			alert("닉네임을 입력해주세요.");
			return false;
		} else {
			$.ajax({
				url : "db_NickCheck.jsp?nick=" + $('#nickname1').val(),
				success : function(result) {
					if (result == "0") {
						$('#same01').html("사용가능한 닉네임입니다.");
						$('#same01').css("color", 'blue');
						$('#nickname1').attr('disabled', 'true');
						$('#hidden_nick').val($('#nickname1').val());
						return true;
					} else {
						$('#same01').html("사용할수 없는 닉네임입니다.");
						$('#same01').css("color", 'red');
						return false;
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error." + error);
				}
			});
		}
	}
</script>
<body>
	<div style="width: 100%; height: 80px;">
		<div id="mainlogo">이리온</div>
	</div>
	<div style="width: 550px; height: 50px; margin: 0 auto;">
		<div style="float: left; font-size: 30px; font-weight: bold;">
			회원가입</div>
		<div style="float: left;">
			<ul style="padding: 0; margin-left: 20px; list-style: none;">
				<li class="li1">1약관동의</li>
				<li class="li1">2휴대폰인증</li>
				<li class="li1"
					style="text-decoration: overline; color: rgba(255, 110, 1, 1.0);">3정보입력</li>
				<li class="li1">4가입완료</li>
			</ul>
		</div>
	</div>
	<form name="join" action="db_Reg.jsp" method="post" onsubmit="return check()">
		<div class="main2" style="height: 850px;">

			<div class="side1" style="margin-top: 30px;">
				<div class="div1">
					아이디<font class="font1">*</font>
				</div>
				<input type="text" id="id1" placeholder="아이디를 입력해주세요" class="input1">
				<input type="hidden" id="hidden_id" name="hidden_id" value="">
				<input type="button" id="idch" class="button1" value="중복확인"
					onclick="id_check()">
			</div>
			<div>
				<span id="same0"
					style="position: absolute; margin-left: 125px; font-size: 12px;"></span>
			</div>
			<div class="side1">
				<div class="div1">
					닉네임<font class="font1">*</font>
				</div>
				<input type="text" id="nickname1" placeholder="닉네임을 입력해주세요"
					class="input1"> <input type="button" class="button1"
					value="중복확인" onclick="nick_check()"> <input type="hidden"
					id="hidden_nick" name="hidden_nick" value="">
			</div>
			<div>
				<span id="same01"
					style="position: absolute; margin-left: 125px; font-size: 12px;"></span>
			</div>
			<div class="side1">
				<div class="div1">
					비밀번호<font class="font1">*</font>
				</div>
				<input type="password" name="pw" id="pw1" placeholder="비밀번호를 입력해주세요"
					class="input1" onchange="pwcheck1()">
			</div>
			<div>
				<span id="same1"
					style="position: absolute; margin-left: 125px; font-size: 12px;"></span>
			</div>
			<div class="side1">
				<div class="div1">
					비밀번호확인<font class="font1">*</font>
				</div>
				<input type="password" id="pw2" placeholder="비밀번호를 한번 더 입력해주세요"
					class="input1" onchange="pwcheck1()">
			</div>
			<div>
				<span id="same2"
					style="position: absolute; margin-left: 125px; font-size: 12px;"></span>
			</div>
			<div class="side1">
				<div class="div1">
					이름<font class="font1">*</font>
				</div>
				<input type="text" name="name" id="name1" placeholder="이름을 입력해주세요"
					class="input1">
			</div>

			<div class="side1">
				<div class="div1" style="margin-top: 10px;">생년월일</div>
				<div class="div2" style="border-width: 2px;">
					<input type="text" id="year" placeholder="YYYY" class="text1"
						maxlength="4" name="year"> <span>/</span> <input
						type="text" id="month" placeholder="MM" class="text1"
						maxlength="2" name="month"> <span>/</span> <input
						type="text" id="date" placeholder="DD" class="text1" name="day"
						maxlength="2">
				</div>
			</div>
			<div class="side1">
				<div class="div1">
					전화번호<font class="font1">*</font>
				</div>
				<select name="ph1"
					style="width: 86px; height: 45px; font-size: 14px; border-style: solid; border-width: 2px; border-color: rgb(221, 221, 221); 
					text-align: center; onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="012">012</option>
				</select> <input type="text" id="ph2" placeholder="" class="input1"
					name="ph2" style="width: 85px; text-align: center;" maxlength="4">
				<input type="text" id="ph3" name="ph3" placeholder="" class="input1"
					style="width: 85px; text-align: center;" maxlength="4">
			</div>
			<div class="side1">
				<div class="div1">
					이메일<font class="font1">*</font>
				</div>
				<input type="text" id="email" class="input1" style="width: 130px;"
					name="email"> <input type="text" id="email2"
					placeholder="직접입력" class="input1" style="width: 129px;"> <select
					style="width: 129px; height: 45px; font-size: 14px; border-style: solid; border-width: 2px; border-color: rgb(221, 221, 221); text-align: center;"
					onchange="select_mail(this)">
					<option value="" selected>직접 입력</option>
					<option value="@naver.com" style="">@naver.com</option>
					<option value="@daum.net">@daum.net</option>
					<option value="@gmail.com">@gmail.com</option>
				</select> <input type="hidden" id="hidden_email" name="hidden_email" value="">
			</div>



			<div class="side1">
				<div class="div1">
					주소<font class="font1">*</font>
				</div>
				<input type="text" name="ad1" id="ad1" placeholder="우편번호"
					size="10px" class="input1">
				<button type="button" class="button1" id="mail_se" onclick="add()">우편번호검색</button>
			</div>

			<div class="side1">
				<input type="text" name="ad2" id="ad2" class="input1"
					style="margin-left: 103px; width: 405px;" placeholder="주소">
			</div>
			<div class="side1">
				<input type="text" name="ad3" id="ad3" class="input1"
					style="margin-left: 103px; width: 405px;" placeholder="상세주소 입력">
			</div>
			<div class="side1" style="margin-top: 50px">
				<input type="submit" value="가입하기" class="button1" style="margin-left: 103px; background: rgba(255, 110, 1, 1.0); width: 414px; color: white; font-weight: bolder">
			</div>
		</div>
	</form>
	<footer
		style="background-image: url(mainimg/orange_full_4.png); height: 187px; margin: 0 auto;">
		<div
			style="width: 1000px; height: 30px; margin: 0 auto; padding-top: 20px;">
			<ul
				style="height: 30px; margin: 0 auto; width: 1000px; margin-bottom: 20px;">
				<li class="li2">고객센터</li>
				<li class="li2">1:1문의</li>
				<li class="li2">공지사항</li>
				<li class="li2">유기견보호센터</li>
				<li class="li2">반려동물 보호단체</li>
			</ul>
			<div style="float: left; width: 400px; height: 80px; margin: 0;">
				대표자 : 홍길동<br> 전화번호 : 010-1234-5678<br> 주소 : 서울특별시 ㅇㅇㅇ ㅇㅇㅇ
				ㅇㅇㅇ 231-21 202호<br> 이메일 : qwer1234@naver.com
			</div>
			<div style="float: right; width: 400px; height: 80px; margin: 0;">
				문의 가능 시간 : 09:00 ~ 18:00 (주말, 공휴일 제외)<br> <br> <b>ㅂㅈㄷㅂㄱㅂㅂ</b><br>
				ㅂㅈㄷㅁㄷㅂㅈㄷㅇㅁㄴㅇㅂㅈㄷㅇㄴㅁㅇㅈㅂㅀㅇ
			</div>
		</div>
	</footer>
</body>
</html>