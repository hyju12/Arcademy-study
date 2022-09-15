$(document).ready(function()
{
	$('input[name=phone_num]').attr("disabled", true);
	$('input[name=email_num]').attr("disabled", true);

	$('#phone_mungu').hide();
	$('#email_mungu').hide();

	$('#email_table').hide();
});
function setDisplay()
{
	if($('input:radio[id=phone_id]').is(':checked'))
	{
		$('#phone_table').show(); //휴대폰 인증 테이블
		$('#email_table').hide(); //이메일 인증 테이블
		$('#phone_mungu').hide(); //인증이 필요합니다 문구
		$('#email_mungu').hide(); //인증이 필요합니다 문구
	}
	else
	{
		$('#email_table').show(); //이메일 인증 테이블
		$('#phone_table').hide(); //휴대폰 인증 테이블
		$('#phone_mungu').hide(); //인증이 필요합니다 문구
		$('#email_mungu').hide(); //인증이 필요합니다 문구
	}
}
//--------------------------------------------------------------------------------
var qwer="";
function phone_batgi() // 휴대폰 인증번호 받기
{
	var is = $('input[name=phonenum]').val().length;
	if(is != 11)
	{
		alert("전화번호를 정확하게 입력해주세요.");
	}
	else
	{
		qwer="";
		for(var i=0; i<4;i++)
		{
			var a=(Math.floor(Math.random()*9)+1);
			qwer += a;
		}
		alert(qwer);
		$('input[name=phone_num]').attr("disabled", false);
	}
}
function phone_success() // 휴대폰 인증번호 확인
{
	if($('input[name=phone_num]').val() != qwer)
	{
		alert("번호가 틀렸습니다. 다시 인증번호를 받아주세요.");
		$('input[name=phone_num]').attr("disabled", true);
		qwer="";
	}
	else if($('input[name=phone_num]').val() == "")
	{
		$('#phone_mungu').show();
	}
	else
	{
		alert("인증이 완료되었습니다.");
		$('input[name=phone_num]').attr("disabled", true);
		location.href='signup_Reg.jsp';
	}
}
//--------------------------------------------------------------------------------
var asdf="";
function email_batgi() // 이메일 인증번호 받기
{
	var email = $('input[name=email]').val();
	if(email == "")
	{
		alert("이메일을 입력해주세요.");
	}
	else
	{
		asdf="";
		for(var i=0; i<4;i++)
		{
			var a=(Math.floor(Math.random()*9)+1);
			asdf += a;
		}
		alert(asdf);
		$('input[name=email_num]').attr("disabled", false);
	}
}

function email_success() // 이메일 인증번호 확인
{
	if($('input[name=email_num]').val() != asdf)
	{
		alert("번호가 틀렸습니다. 다시 인증번호를 받아주세요.");
		$('input[name=email_num]').attr("disabled", true);
		asdf="";
	}
	else if($('input[name=email_num]').val() == "")
	{
		$('#email_mungu').show();
	}
	else
	{
		alert("인증이 완료되었습니다.");
		$('input[name=email_num]').attr("disabled", true);
		location.href='signup_Reg.jsp';
	}
}