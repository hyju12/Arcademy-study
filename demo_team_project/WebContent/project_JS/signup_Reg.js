function check() {

	var id1 = document.getElementById("id1").value;
	var pa1 = document.getElementById("pw1").value;
	var pa2 = document.getElementById("pw2").value;

	var name1 = document.getElementById("name1").value;
	var email1 = document.getElementById("email").value;

	var year1 = document.getElementById("year").value;
	var month1 = document.getElementById("month").value;
	var date1 = document.getElementById("date").value;

	var adr1 = document.getElementById("ad1").value;
	var adr2 = document.getElementById("ad2").value;
	var adr3 = document.getElementById("ad3").value;

	var nick1 = document.getElementById("nickname1").value;


	if(id1.length==0){
		alert("아이디가 입력되지 않았습니다.");
		return false;
	}
	if(document.getElementById("id1").disabled==false){
		alert("아이디 중복검사를 진행해주세요.");
		return false;
	}


	if(id1.length<4){
		alert("아이디를 4자 이상 입력해주세요.");
		return false;
	}

	if(pa1.length==0 || pa2.length==0){
		alert("비밀번호가 입력되지 않았습니다.");
		return false;
	}

	if(pa1.length<4 || pa2.length<4){
		alert("비밀번호를 4자 이상 입력해주세요.");
		return false;
	}

	if(pa1!=pa2){
		alert("비밀번호가 일치하지않습니다.");
		return false;
	}

	if(name1.length==0){
		alert("이름이 입력되지 않았습니다.");
		return false;
	}

	if(email1.length==0){
		alert("이메일이 입력되지 않았습니다.");
		return false;
	}

	if(adr1.length==0||adr2.length==0||adr3.length==0){
		alert("주소를 다시 확인해주세요.");
		return false;
	}

	if(nick1.length==0){
		alert("닉네임을 입력해주세요.");
		return false;
	}

	if(id1.length!=0 || pa1.length!=0){
		location.href='infojoin_success.html'
	}
}
function check_email() {

	var email1 = document.getElementById("email").value;

	if(email1.length!==0){
		alert("사용 가능합니다.");
	}
}


function pwcheck1(){
	var pw = document.querySelectorAll("input[type=password]");
	if(pw[0].value.length<4 && pw[0].value.length>0){
		document.getElementById("same2").innerHTML="비밀번호를 4자 이상 입력해주세요";
		document.getElementById("same2").style.color = 'red';
	}
	else{
		document.getElementById("same2").innerHTML="";

		if(pw[0].value != pw[1].value){
			document.getElementById("same2").innerHTML="비밀번호 일치하지 않습니다";
			document.getElementById("same2").style.color = 'red';
		}
		else{
			document.getElementById("same2").innerHTML="비밀번호가 일치합니다";
			document.getElementById("same2").style.color = 'blue';
		}
	}
}

function select_mail(sun) // 이메일 select 했을때 text창으로 넘어가게끔
{
	for (var i=0; i<sun.options.length; i++)
	{
		if(sun.options[i].selected)
		{
			document.getElementById("email2").value = (sun.options[i].value);
			$('#hidden_email').val($('#email2').val());
			document.getElementById("email2").disabled = true;
		}
		else if(sun.options[0].selected)
		{
			document.getElementById("email2").disabled = false;
		}
	}
}
function add(){
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
			document.getElementById('ad1').value = data.zonecode;
			document.getElementById("ad2").value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("ad3").focus();
		}
	}).open();
}


