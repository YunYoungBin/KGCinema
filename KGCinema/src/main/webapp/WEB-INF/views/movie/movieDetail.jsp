<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="headLogin.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<title>movieDetail.jsp</title>
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/full-slider.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./slick-master/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="./slick-master/slick/slick-theme.css">
    <script src="vendor/bootstrap/js/bootstrap.bundle2.min.js"></script>
    <script src="js/agency.min.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="./slick-master/slick/slick.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <link href="vendor/bootstrap/css/bootstrap2.min.css" rel="stylesheet">
    <link href="css/agency.min.css" rel="stylesheet">
    
  <style type="text/css">
    html, body {margin: 0;padding: 0;border:0;vertical-align: baseline;}
    * {box-sizing: border-box;font-family: '나눔고딕','NanumGothic','맑은 고딕','Malgun Gothic','돋움',dotum,'Apple SD Gothic Neo',sans-serif;}
    div{display:block;}
    ul, ol, dl, li, p {margin:0;padding:0;list-style: none;}
    button{font-family: inherit;font-size: inherit;line-height: inherit;}
    input{width: 200px;border: 1px solid #d9d9d9;line-height: 26px;height: 26px;background-color: #f8f8f8;font-size: 12px;color: #333;text-indent: 14px;vertical-align: middle;}
    .a{display: inline-block;width: 230px;height: 44px;margin-top: 10px;line-height: 44px;box-sizing: border-box;-webkit-box-sizing: border-box;-moz-box-sizing: border-box;text-align: center;font-size: 16px;color: #cdc197;background: #231f20;font-weight: bold;}
    .slider {width: 50%;margin: 100px auto;}
    .slick-slide {margin: 0px 0px;}
    .slick-slide img {width: 100%;}
    .slick-prev:before,.slick-next:before {color: black;}
    .slick-slide {transition: all ease-in-out .3s;opacity: 1;}
    .slick-active {opacity: 1;}
    .slick-current {opacity: 1;}  
    .title{position: relative;min-height: 69px;border-bottom: 2px solid #e5e5e5;}
    .title h2{margin: 0;font-size: 30px;}
    .title p{margin: 8px 0;font-size: 12px;color: #666;}
    .text{position: relative;border-bottom: 2px solid #e5e5e5;padding-bottom: 19px;}
    .star{display: block;position: relative;width: 107px;height: 15px;background: url(http://image2.megabox.co.kr/mop/home/star.png) 0 0 no-repeat;}
    .fill{position: absolute;width: 107px;height: 15px;background: url(http://image2.megabox.co.kr/mop/home/star.png) 0 -15px no-repeat;}
    .left_p{position: relative;float: left;width: 181px;padding-left: 20px;color: #333;font-size: 14px;}
    .left_p span{font-size: 12px;float: left;margin-top: 20px;color: #666;}
    .divider{display: block;position: absolute;width: 1px;height: 20px;top: 10px;right: 0;margin-top: 0;background-color: #e1e1e1;}
    .right_p{position: relative;float: left;width: 181px;padding-left: 20px;color: #333;font-size: 14px;}
    .right_p strong{font-size:28px;}
    .right_p span{olor: #666;}
    .btn_reservation{position: absolute;top: 0;right: 0;width: 121px;height: 43px;padding-top: 1px;}
    .img_btn.movie{background-image: url(http://image2.megabox.co.kr/mop/home/btns/btn_movie.png);background-position: -300px -100px;}
    .img_btn{display: block;overflow: hidden;text-indent: -9999px;border: none;background-repeat: no-repeat;background: transparent;vertical-align: middle;}
    .info{margin-top: 11px;}
    .info li{color: #333;font-size: 14px;line-height: 22px;}
    .info li strong{font-weight: bold;}
    .rating{position: relative;}
    .my_rate{font-size: 12px;color: #666;padding-top: 22px;overflow: visible;white-space: nowrap;}
    .my_rate span{font-size:14px;}
    .my_rate span input{background: transparent;border: 0;width: 21px;height: 20px;margin-top:-5px;}
    .btn_timeSchedule{width: 100px;height: 39px;float: left;margin-left: 5px;border: 1px solid #ccc;background: url(http://image2.megabox.co.kr/mop/home/btns/btn_timeSchedule.png) 50% 50% no-repeat;margin-right: 0;}
    .content{padding: 0;background: none;margin: 0 0 15px 0;font-size: 18px;color: #333;}
    .content_text{color: #666;line-height: 20px;font-size: 14px;}
    .bin{width:100%;height:50px;}
    
  </style>
</head>

  <script type="text/javascript">
  $(document).on('ready', function() {
	  $('.lazy').slick({
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  arrows: false,
		  fade: true,
	      lazyLoad: 'ondemand',
	      infinite: true,
		  asNavFor: '.center'
		});
		$('.center').slick({
		  slidesToShow: 4,
		  slidesToScroll: 1,
		  asNavFor: '.lazy',
		  dots: true,
		  centerMode: false,
		  infinite: true,
		  focusOnSelect: true
		});
		$("#a").mouseover(function(){
		    $("#a").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#movieDetailStarScoreTxt").text("괜히봤어요");
		});
		$("#a").mouseout(function(){
		    $("#a").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#movieDetailStarScoreTxt").text("평점을 입력해주세요");
		});	
		$("#b").mouseover(function(){
			$("#a").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#b").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#movieDetailStarScoreTxt").text("기대하진 말아요");
		});
		$("#b").mouseout(function(){
			$("#a").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#b").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#movieDetailStarScoreTxt").text("평점을 입력해주세요");
		});	
		$("#c").mouseover(function(){
			$("#a").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#b").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#c").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#movieDetailStarScoreTxt").text("무난했어요");
		});
		$("#c").mouseout(function(){
			$("#a").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#b").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#c").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#movieDetailStarScoreTxt").text("평점을 입력해주세요");
		});	
		$("#d").mouseover(function(){
			$("#a").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#b").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#c").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#d").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#movieDetailStarScoreTxt").text("기대해도 좋아요!");
		});
		$("#d").mouseout(function(){
			$("#a").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#b").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#c").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#d").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#movieDetailStarScoreTxt").text("평점을 입력해주세요");
		});	
		$("#e").mouseover(function(){
			$("#a").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#b").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#c").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#d").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#e").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_on.png");
		    $("#movieDetailStarScoreTxt").text("너무 멋진 영화였어요!");
		});
		$("#e").mouseout(function(){
			$("#a").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#b").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#c").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#d").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#e").attr("src", "http://image2.megabox.co.kr/mop/home/star_mid_off.png");
		    $("#movieDetailStarScoreTxt").text("평점을 입력해주세요");
		});	
  });
  </script>
<body>
  <header style="background-color:#231f20;min-width: 980px;padding:10px;">
   <div class="lazy slider" data-sizes="50vw">
    <div>
      <img data-lazy="<%=request.getContextPath()%>/storage/${movie.steal1}">
    </div>
    <div>
      <img data-lazy="<%=request.getContextPath()%>/storage/${movie.steal2}">
    </div>
    <div>
      <img data-lazy="<%=request.getContextPath()%>/storage/${movie.steal3}">
    </div>
    <div>
      <img data-lazy="<%=request.getContextPath()%>/storage/${movie.steal4}">
    </div>
    <div>
      <img data-lazy="<%=request.getContextPath()%>/storage/${movie.steal5}">
    </div>
   </div> 
  </header>

<div style="width:1680px;min-width: 980px;margin:0 auto;">
  <section class="py-5">
   <div><p style="text-align:center;font-weight:bold;color:#231f20;font-size:22px;">트레일러·스틸컷</p></div>
   <div class="center slider">
    <div>
      <img src="<%=request.getContextPath()%>/storage/${movie.steal1}" width="120" height="100">
    </div>
    <div>
      <img src="<%=request.getContextPath()%>/storage/${movie.steal2}" width="120" height="100">
    </div>
    <div>
      <img src="<%=request.getContextPath()%>/storage/${movie.steal3}" width="120" height="100">
    </div>
    <div>
      <img src="<%=request.getContextPath()%>/storage/${movie.steal4}" width="120" height="100">
    </div>
    <div>
      <img src="<%=request.getContextPath()%>/storage/${movie.steal5}" width="120" height="100">
    </div>
   </div>
  </section>
  
  <div style="width:800px;padding: 30px 0 50px;margin:0 auto;">
   <div style="margin-bottom: 50px;height:396px;">
   
    <div class="left" style="float: left;width: 230px;margin-right: 25px;">
     <span style="position: relative;display: block;width: 230px;height: 336px;"><img src="<%=request.getContextPath()%>/storage/${movie.poster}" style="width:230px;height:336px;"></span>
     <a class="a" style="display: inline-block;text-decoration: none;" href="reserve.do">예매하기</a>
    </div>
    
    <div class="right" style="float: right;width: 545px;">
    
     <div class="title" style="overflow: visible;">
      <h2>
       <sapn>${movie.title}</sapn>
       <p style="padding-left:3px;">${movie.subtitle}</p>
      </h2>
     </div>
     
     <div class="text">
      <div style="overflow: hidden;margin-top: 9px;">
       <span class="star" style="position: absolute;top: 2px;left: -3px;">
        <span class="fill" style="width: 74.3352601156%;"></span>
       </span>      
       <p class="left_p" style="text-align: right;padding-right: 20px;padding-left: 0;">
        <span>695</span>
        <span>명 참여</span>
        <strong style="font-size:28px;">7.4</strong>
        <span class="divider"></span>
       </p>     
       <p class="right_p">
              예매율<strong> 2 </strong>위<span> 18.7% </span>
       </p>    
       <a class="img_btn movie btn_reservation" href="reserve.do">예매하기</a>       
      </div>     
      <ul class="info">
       <li><strong>타입</strong> : ${movie.type}</li>
       <li><strong>개봉일</strong> : <fmt:formatDate pattern="yyyy.MM.dd" value="${movie.premiere}" /></li>  
       <li><strong>감독</strong> : ${movie.director}</li>
       <li><strong>출연진</strong> : ${movie.actor}</li>
       <li><strong>장르</strong> : ${movie.genre} / 125 분</li>
       <li><strong>누적관객</strong> : 241,423명<span style="display: inline-block;width: 1px;height: 20px;margin: 0 10px;vertical-align: middle;background-color: #e1e1e1;"></span><strong>전일관객</strong> : 219,242명 </li>
      </ul>  
     </div>
     
     <div class="rating">
      <div class="my_rate">
       <span style="font-size: 12px;">내 평점</span>
       <span style="min-width: 119px; cursor: pointer; width: 119px;">
        <input id="a" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점1 괜히봤어요" title="별점1 괜히봤어요"> &nbsp;
        <input id="b" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점2 기대하진 말아요" title="별점2 기대하진 말아요"> &nbsp;
        <input id="c" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점3 무난했어요" title="별점3 무난했어요"> &nbsp;
        <input id="d" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점4 기대해도 좋아요!" title="별점4 기대해도 좋아요!"> &nbsp;
        <input id="e" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점5 너무 멋진 영화였어요!" title="별점5 너무 멋진 영화였어요!">
        <input type="hidden" name="score">
       </span>
       <span id="movieDetailStarScoreTxt" style="display: inline-block;vertical-align: text-bottom;font-size: 12px;line-height:-10px;">평점을 입력해주세요</span>
      </div>
      <div style="position: absolute;top: 14px;right: 0;">
       <button type="button" class="img_btn btn_inte" style="display: block;float: left;width: 100px;height: 39px;background: url(http://image2.megabox.co.kr/mop/home/btns/btn_movie2.png) no-repeat;background-position: -99px 0;"></button>
       <a class="img_btn btn_timeSchedule" href="#">상영시간표</a>
      </div>      
     </div>     
    </div>
   </div>
    
   <div style="margin-bottom: 60px;">
    <h3 class="content">줄거리</h3>
    <div class="content_text">
     ${movie.story }
    </div>
   </div>
   
  </div>
  
 </div> <!-- 마지막 DIV -->
    
   <jsp:include page="footer.jsp"></jsp:include>



</body>
</html>