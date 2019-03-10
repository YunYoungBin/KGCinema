
$(document).ready(function() {
	$('#body_theater1 .depth1').on('click', 'li:not(.blind):not(.no_click)', MovieCinemaDatas.choiceArea);	
})

var MovieCinemaDatas = {
	initData : [],
	
	init : function() {
		
		
	},
		
	choiceArea: function() {
		var areaCode = $(this).attr('data-areaCode');		
		alert(this);
		if(!areaCode){
			alert("!areaCode")
			if($(this).attr('data-depthType')=='myCinema') MovieCinemaDatas.drawMyCinema();
			return;
		}
		if(MovieCinemaDatas.selectedDepth == areaCode) {
			alert("코드같다");
			return;
		}

		var $area = $('li.active', '#body_theater1 .depth1').removeClass('active').find('a');
		if($area.length == 0) {
			alert("a태그없음");
		} else {
			alert("a태그있음");
		}
		$area.attr('title', $area.text()+' 선택');
		$area = $(this).addClass('active').find('a');
		$area.attr('title', $area.text()+' 선택됨');
		if(MovieDatas.selectedMovieDatas && Object.keys(MovieDatas.selectedMovieDatas).length > 0) {
			alert("0보다큼");
			MovieCinemaDatas.showingCinemas(areaCode);
		}
		else{
			alert("0임");
			var $map = $('.map > ul', '#body_theater1').find('li.mapArea').hide().end().find('li[data-areaCode="'+areaCode+'"]');
			var $cloneCinema = $map.find('ul').clone();
			$.each(MovieCinemaDatas.tempSelectedCinemaDatas, function(i, item){
				var $cinema = $cloneCinema.find('li[data-cinemaCode="'+item.cinemaCode+'"][data-screenCode="'+item.screenCode+'"]');
				if($cinema.length>0){
					$cinema.addClass('active').find('a').attr('title', item.cinemaName+' 선택됨');
				}
			});
			$map.show();
			$('.depth2', '#body_theater1 .theater_list').empty().append($cloneCinema.find('li').attr('style', ''));
			MovieCinemaDatas.selectedDepth = areaCode;
		}
	}
}