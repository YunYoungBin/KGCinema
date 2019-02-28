<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../main/headLogin.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EventList</title>

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <link href="./resources/css/event1.css" rel="stylesheet">
    <link href="./resources/css/event2.css" rel="stylesheet">
</head>
   <script type="text/javascript">
    $(document).on('ready', function() {
        $(".menu_1").click(function(){
            $(".menu_2").removeClass("active");
            $(".menu_3").removeClass("active");
            $(".menu_1").addClass("active");
            $("#kgCinemaList_1").css({'display' : 'block'});
            $("#kgCinemaList_2").css({'display' : 'none'});   
            $("#kgCinemaList_3").css({'display' : 'none'}); 
        });  
        $(".menu_2").click(function(){
            $(".menu_1").removeClass("active");
            $(".menu_3").removeClass("active");
            $(".menu_2").addClass("active");
            $("#kgCinemaList_2").css({'display' : 'block'});
            $("#kgCinemaList_1").css({'display' : 'none'});   
            $("#kgCinemaList_3").css({'display' : 'none'}); 
        });
        $(".menu_3").click(function(){
            $(".menu_1").removeClass("active");
            $(".menu_2").removeClass("active");
            $(".menu_3").addClass("active");
            $("#kgCinemaList_3").css({'display' : 'block'});
            $("#kgCinemaList_1").css({'display' : 'none'});   
            $("#kgCinemaList_2").css({'display' : 'none'}); 
        });
    });
  </script>
  <style>
   ol{list-style:none;}
   .nav nav-tabs li{margin-bottom: -2px;padding: 0 25px;display: block;border: 1px solid #e1e1e1;border-bottom-color: #e1e1e1;border-left: none;font-size: 13px;line-height: 35px;
    text-align: center;min-width: 114px;height: 35px;background-color: #f9f9f9;color: #666;font-weight: 700;}
   .nav-tabs li:first-child a{border-left: 1px solid #e1e1e1;}
   .kgCinema_list {margin-bottom:20px;}
   .kgCinema_list .thum {float:left; width:115px; height:145px; text-align:center;}
   .kgCinema_list .thum img {width:115px; height:145px}
   .kgCinema_list .kgCimema_cont {float:left; width:702px; margin-left:40px; line-height:22px}
   .kgCinema_list .kgCimema_cont dt {clear:both; float:left; width:142px; font-size:14px; color:#666}
   .kgCinema_list .kgCimema_cont dd {float:left; width:550px; font-size:14px; color:#231f20; font-weight:bold;}
   .kgCinema_list .btn_s_view {position:absolute; top:80px; right:30px; display:block; padding-right:22px; background:url('/LCHS/Image/Icon/payment_down.gif') no-repeat 100% 50%; color:#999;}
   .kgCinema_list .kgCinema_box {position:relative; overflow:hidden; width:100%; padding:20px 30px; border-bottom:1px solid #c0c0c0; background:#fff; box-sizing:border-box;
   -webkit-box-sizing:border-box; -moz-box-sizing:border-box}
   .btn_s_view:hover {color:#cd190b;text-decoration: none;}
  </style>
<body>

  <div class="bin"></div>
  
  <!-- main start -->
  <div id="event_all">
  <!-- sub menu start -->
   <div class="sub_navi">
    <div class="sub_navi_wrap">
     <ul class="clearfix">
      <li>
       <a class="mypage sm01">고객센터</a>
      </li>
     </ul>
    </div>
   </div>
   <!-- sub menu end -->
   
   <!-- container start -->
   <div id="container" class="width-fixed">
    <h2 class="mb30">
     <span class="sub_title customer st03">예매내역 확인/취소</span>
    </h2>
    
    <!-- Event start-->
    <div id="centerEventList" class="tab_wrap customer_tab_wrap">
     <ul class="nav nav-tabs">
      <li class="menu_1 active">
       <a>예매내역</a>
      </li>
      <li class="menu_2">
       <a>지난내역</a>
      </li>
      <li class="menu_3">
       <a>취소내역</a>
      </li>
     </ul>
     
     <div class="tab-content">
      <h3 class="blind">예매내역</h3>
      
	    <ol class="kgCinema_list" id="kgCinemaList_1">
		<li>
		 <div class="kgCinema_box">
		  <span class="thum"><img src="./resources/images/gg.jpg" alt="극한직업"></span>
		   <dl class="kgCimema_cont">
		    <dt>예매번호(예매일)</dt> <dd>2003557 (2019-02-29 02:22)</dd>
			<dt>관람영화관/관</dt> <dd><span>강남 1관</span></dd>
			<dt>예매내역</dt> <dd>극한직업(디지털)</dd>
			<dt>관람인원/좌석</dt> <dd>성인2명 / A10 A11</dd>
			<dt>총 결제 금액</dt> <dd>14,000 <span>\</span></dd>
		   </dl>
		  <a href="#" class="btn_s_view"><span>취소</span></a>
		</div>
		</li>		
		<li>
		 <div class="kgCinema_box">
		  <span class="thum"><img src="./resources/images/gg.jpg" alt="극한직업"></span>
		   <dl class="kgCimema_cont">
		    <dt>예매번호(예매일)</dt> <dd>2003557 (2019-02-29 02:22)</dd>
			<dt>관람영화관/관</dt> <dd><span>강남 1관</span></dd>
			<dt>예매내역</dt> <dd>극한직업(디지털)</dd>
			<dt>관람인원/좌석</dt> <dd>성인2명 / A10 A11</dd>
			<dt>총 결제 금액</dt> <dd>14,000 <span>\</span></dd>
		   </dl>
		  <a href="#" class="btn_s_view"><span>취소</span></a>
		</div>
		</li>						
	   </ol>
	   
	    <ol class="kgCinema_list" id="kgCinemaList_2" style="display:none;">
		<li>
		 <div class="kgCinema_box">
		  <span class="thum"><img src="./resources/images/movie_list_2.jpg" alt="극한직업"></span>
		   <dl class="kgCimema_cont">
		    <dt>예매번호(예매일)</dt> <dd>2003557 (2019-02-29 02:22)</dd>
			<dt>관람영화관/관</dt> <dd><span>강남 2관</span></dd>
			<dt>예매내역</dt> <dd>아쿠아맨(디지털)</dd>
			<dt>관람인원/좌석</dt> <dd>성인2명 / B13 A14</dd>
			<dt>총 결제 금액</dt> <dd>14,000 <span>\</span></dd>
		   </dl>
		</div>
		</li>		
		<li>
		 <div class="kgCinema_box">
		  <span class="thum"><img src="./resources/images/movie_list_2.jpg" alt="극한직업"></span>
		   <dl class="kgCimema_cont">
		    <dt>예매번호(예매일)</dt> <dd>2003557 (2019-02-29 02:22)</dd>
			<dt>관람영화관/관</dt> <dd><span>강남 2관</span></dd>
			<dt>예매내역</dt> <dd>아쿠아맨(디지털)</dd>
			<dt>관람인원/좌석</dt> <dd>성인2명 / B13 A14</dd>
			<dt>총 결제 금액</dt> <dd>14,000 <span>\</span></dd>
		   </dl>
		</div>
		</li>						
	   </ol>
	   
	    <ol class="kgCinema_list" id="kgCinemaList_3" style="display:none;">
		<li>
		 <div class="kgCinema_box">
		  <span class="thum"><img src="./resources/images/movie_list_3.jpg" alt="극한직업"></span>
		   <dl class="kgCimema_cont">
		    <dt>예매번호(예매일)</dt> <dd>2003557 (2019-02-29 02:22)</dd>
			<dt>관람영화관/관</dt> <dd><span>강남 3관</span></dd>
			<dt>예매내역</dt> <dd>범블비(디지털)</dd>
			<dt>관람인원/좌석</dt> <dd>성인2명 / G02 G03</dd>
			<dt>총 결제 금액</dt> <dd>14,000 <span>\</span></dd>
		   </dl>
		</div>
		</li>		
		<li>
		 <div class="kgCinema_box">
		  <span class="thum"><img src="./resources/images/movie_list_3.jpg" alt="극한직업"></span>
		   <dl class="kgCimema_cont">
		    <dt>예매번호(예매일)</dt> <dd>2003557 (2019-02-29 02:22)</dd>
			<dt>관람영화관/관</dt> <dd><span>강남 3관</span></dd>
			<dt>예매내역</dt> <dd>범블비(디지털)</dd>
			<dt>관람인원/좌석</dt> <dd>성인2명 / G02 G03</dd>
			<dt>총 결제 금액</dt> <dd>14,000 <span>\</span></dd>
		   </dl>
		</div>
		</li>							
	   </ol>	   	   
	   
	   
     </div>
    </div>
    <!-- Event end -->
   </div>
   <!-- container end -->
   

  </div>
  <!-- main end -->
  <div class="bin"></div>
  
</body>
</html>