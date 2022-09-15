$(document).ready(function()
{
	$('.single-item').slick(
	{
		infinite: false
	});
	$('.multiple-items').slick(
	{
			infinite: false, // 무한
			slidesToShow: 2, // 보여주는 갯수
			slidesToScroll: 2, // 넘어가는 갯수
			vertical:true, // 세로보기
			// autoplay:true,
			// autoplaySpeed: 500
			// verticalSwiping:true, // 세로 스와이프
			swipe: false,
			arrows:false // 버튼 없앰
		});

	$('.multiple-items').on('wheel', (function(e) //마우스 휠로 넘기기
	{
		e.preventDefault();

		if (e.originalEvent.deltaY < 0)
		{
			$(this).slick('slickPrev');
		} else
		{
			$(this).slick('slickNext');
		}
	}));

	// 모달팝업창 열기
	$('.bottom_feed_div').on('click', function()
	{
		$('.modal-wrapper').addClass('open');

	});

	// 모달 팝업창 닫기(영역밖 클릭시)
	$('.modal-wrapper').on('click',function (e)
	{
		if($(e.target).hasClass('modal-wrapper'))
		{
			$('.modal-wrapper').removeClass('open');
		}
	});
   // 모달 팝업창 닫기(버튼 클릭시)
   $('#modalbtn').on('click',function ()
   {
   	$('.modal-wrapper').removeClass('open');
   });
});