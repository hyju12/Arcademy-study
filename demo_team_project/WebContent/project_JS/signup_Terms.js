$(document).ready(function() // 전부 체크하고싶을때
{
	$('#selectall').click(function()
	{
		if($('#selectall').is(':checked'))
		{
			$('.check').prop('checked', true);
		}
		else
		{
			$('.check').prop('checked', false);
		}
	});
	$('.check').click(function() // 전부 체크가 되었을때
	{
		var total = $('.check').length;
		var checked = $('.check:checked').length;
		if(total != checked)
		{
			$('#selectall').prop('checked', false);
		}
		else
		{
			$('#selectall').prop('checked', true);
		}
	});
});
function daum() // 약관동의 중 필수 체크 안했을때
{
	var a = document.getElementById('pilsu1')
	var b = document.getElementById('pilsu2')
	if(a.checked == false || b.checked == false)
	{
		alert("필수 약관을 동의해주세요.");
	}
	else
	{
		location.href='signup_Certify.html';
	}
}