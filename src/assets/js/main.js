$('[placeholder]').focus(function() {
	var input = $(this);
	if (input.val() == input.attr('placeholder')) {
		input.val('');
		input.removeClass('placeholder');
	}
}).blur(function() {
	var input = $(this);
	if (input.val() == '' || input.val() == input.attr('placeholder')) {
		input.addClass('placeholder');
		input.val(input.attr('placeholder'));
	}
}).blur();

$(document).ready(function(){
	var scrollTop = 0;
	$(window).scroll(function(){
		scrollTop = $(window).scrollTop();
		if (scrollTop >= 100) {
			$('.head').addClass('scrolled-nav');
			$('.topBar').css('display','none');
			$('#navigation .navbar-brand h1 img').css('height' ,'30px');
			$('	#navigation .navbar-nav.navbar-right').css('margin-top', '16px');
			$('#navigation .navbar').css('border-bottom', 'solid 1px');
			$('.tab-back').addClass('tab-back-mobile');

		} else if (scrollTop < 100) {
			$('.head').removeClass('scrolled-nav');
			$('.topBar').css('display','block');
			$('#navigation .navbar-brand h1 img').css('height' ,'auto');
			$('	#navigation .navbar-nav.navbar-right').css('margin-top', '40px');
			$('#navigation .navbar').css('border-bottom', '0');
			$('.tab-back').removeClass('tab-back-mobile');
		} 
	});
});

		$('.video').parent().click(function () {
			if($(this).children(".video").get(0).paused){
				$(this).children(".video").get(0).play();
				$(this).children(".playpause").fadeOut();
			}else{
				$(this).children(".video").get(0).pause();
				$(this).children(".playpause").fadeIn();
			}
		});

