<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../main/headLogin.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<title>movieReserve.jsp</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="./slick-master/slick/slick.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="./slick-master/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="./slick-master/slick/slick-theme.css">
    <link href="css/agency.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <script type="text/javascript">
     $(document).on('ready', function() {
      $("#seatPositionList button").mouseover(function(){
       $(this).addClass("seat_selected_hover");
      });  
      $("#seatPositionList button").mouseout(function(){
      $(this).removeClass("seat_selected_hover");
      });     
      $("#seatPositionList button").click(function(){
        $(this).toggleClass("seat_selected");
      });  
     });
    </script>
    
  <style type="text/css">
    html, body {margin: 0;padding: 0;border:0;vertical-align: baseline;}
    * {box-sizing: border-box;font-family: '나눔고딕','NanumGothic','맑은 고딕','Malgun Gothic','돋움',dotum,'Apple SD Gothic Neo',sans-serif;}
    .mb10{margin-bottom: 10px;}
    .mr13{margin-right: 13px;}
    .mr10{margin-right: 10px;}
    div{display:block;}
    ul, ol, dl, li, p {margin:0;padding:0;list-style: none;}
    button{font-family: inherit;font-size: inherit;line-height: inherit;}
    input{width: 200px;border: 1px solid #d9d9d9;line-height: 26px;height: 26px;background-color: #f8f8f8;font-size: 12px;color: #333;text-indent: 14px;vertical-align: middle;}
    img{border:0;}
    .bin{width:100%;height:50px;}
    .pull-left{float:left;}
    #select_seat{z-index: 500;}
    .booking_lp2 .wrapper{width: 970px;margin: 0 auto;padding: 88px 0 30px 0;}
    .booking_lp2 .wrapper .contents{position: relative;min-height: 554px;border: 1px solid #cdcdcd;background-color: #fff;}
    .booking_lp2 .wrapper .contents button{width: 68px;height: 30px;float: left;margin-left: 10px;}
    .booking_lp button.refresh_all{background-position: -300px -600px;}
    .booking_lp button.lang_ko, .booking_lp button.lang_en, .booking_lp button.refresh_all{position: absolute;top: -35px;right: 45px;width: 100px !important;height: 30px;}
    .img_btn{display: block;overflow: hidden;text-indent: -9999px;border: none;background-repeat: no-repeat;background: transparent;vertical-align: middle;}
    .img_btn.booking{background-image: url(http://image2.megabox.co.kr/mop/home/btns/btn_booking.png);}
    .booking_lp2 .wrapper .contents .movie_header{overflow: hidden;padding: 13px 20px 12px 20px;background-color: #f9f9f9;border-bottom: 1px solid #e0e0e0;}
    .booking_lp2 .wrapper .contents .movie_header h3{color: #503396;padding: 0;margin: 0;margin-top: 4px;}
    .booking_lp h3.h3_seat{width: 150px;background-position: -580px -160px;}
    .booking_lp h2, .booking_lp h3{background: url(http://image2.megabox.co.kr/mop/home/btns/btn_booking_160912.png) 0 0 no-repeat;height: 26px;width: 80px;text-indent: -9999px;overflow: hidden;}
    #select_seat .seat_body>div, #select_pay .seat_body>div{height: 496px;float: left;}
    #select_seat .seat_body .left_wrap{width: 798px;}
    #select_seat .seat_body .left_wrap .row1{height: 42px;border-bottom: 1px solid #e5e5e5;padding: 8px 20px 0 20px;}
    #select_seat .left_wrap .row1>*{float:left;}
    #select_seat .left_wrap .row1 label{line-height: 25px;}
    #select_seat .seat_body .left_wrap .row1 p, #select_pay .seat_body .left_wrap .row1 p{padding-top: 4px;color: #666;font-size: 12px;float: right;}
    #select_seat .seat_body .left_wrap .row3, #select_pay .seat_body .left_wrap .row3{position: relative;width: 100%;height: 412px;overflow: auto;}
    #select_seat .seat_body .left_wrap .row3 .place, #select_pay .seat_body .left_wrap .row3 .place{overflow: auto;height: 100%;background: #F9F9F9;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_wrap, #select_pay .seat_body .left_wrap .row3 .place .seat_wrap{width: 651px;float: left;padding: 20px;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_wrap .screen, #select_pay .seat_body .left_wrap .row3 .place .seat_wrap .screen{overflow: hidden;height: 25px;line-height: 25px;
    text-align: center;margin: 0 auto 41px auto;background: #ececec url(http://image2.megabox.co.kr/mop/home/tx_screen.png) 50% 50% no-repeat;text-indent: -999em;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position, #select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position{position: relative;margin: 0 auto;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit, #select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit{
    background-image: url(http://image2.megabox.co.kr/mop/home/movie/bg_seat.png);background-repeat: no-repeat;text-indent: -9999px;cursor: default;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.top, #select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .exit.top{background-position: -30px 0;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position span, #select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position span{position: absolute;display: block;
    float: none;width: 16px;height: 16px;margin: 0;padding: 0;border: 0;color: #fff;overflow: hidden;font-size: 11px;font-family: tahoma,dotum,sans-serif;cursor: default !important;
    text-align: center;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .line, #select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position .line{border: 1px solid #c2c2c2;background: #f9f9f9;
    font-weight: 700;text-align: center;color: #333;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_wrap .seat_position button, #select_pay .seat_body .left_wrap .row3 .place .seat_wrap .seat_position button{position: absolute;display: block;
    float: none;width: 16px;height: 16px;margin: 0;padding: 0;border: 0;line-height: 17px;color: #fff;overflow: hidden;font-size: 11px;font-family: tahoma,dotum,sans-serif;cursor: pointer !important;
    text-align: center;}
    #select_seat .seat_body .left_wrap .row3 .alert_seat, #select_pay .seat_body .left_wrap .row3 .alert_seat{position: absolute;top: 0;left: 0;z-index: 10;width: 100%;height: 100%;margin: 0;
    border: 0;background: url(http://image2.megabox.co.kr/mop/home/common/blk_op6.png);font-weight: 700;font-size: 14px;text-align: center;color: #FFF;} 
    #select_seat .seat_body .left_wrap .row3 .place .seat_img, #select_pay .seat_body .left_wrap .row3 .place .seat_img{width: 110px;height: 372px;float: right;margin: 20px 20px 0 0;border: 1px solid #ccc;
    padding: 13px 16px;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_img p, #select_pay .seat_body .left_wrap .row3 .place .seat_img p{font-size: 13px;font-weight: bold;color: #666;padding-bottom: 10px;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_img ul li, #select_pay .seat_body .left_wrap .row3 .place .seat_img ul li{position: relative;font-size: 11px;color: #555;font-weight: bold;
    line-height: 14px;background: none;padding: 0 0 8px 20px;}
    #select_seat .seat_body .left_wrap .row3 .place .seat_img ul li span, #select_pay .seat_body .left_wrap .row3 .place .seat_img ul li span{position: absolute;width: 16px;height: 16px;display: inline-block;
    left: 0;top: -1px;}
    #select_seat .seat_body .left_wrap .row4, #select_pay .seat_body .left_wrap .row4{padding: 13px 20px 0 20px;border-top: 1px solid #e5e5e5;height: 42px;position: relative;}
    #select_seat .seat_body .left_wrap .row4 .reset .btn_reset, #select_pay .seat_body .left_wrap .row4 .reset .btn_reset{width: 63px;height: 22px;background-position: -280px -75px;}
    #select_seat .seat_body .left_wrap .row4 .reset, #select_pay .seat_body .left_wrap .row4 .reset{float: right;height: 22px;margin-top: -3px;}
    #select_seat .seat_body .left_wrap .row4 .reset .selected_man, #select_pay .seat_body .left_wrap .row4 .reset .selected_man{border-left: 1px solid #e5e5e5;padding-left: 20px;margin-left: 20px;
    font-size: 12px;color: #333;display: inline-block;}
    #select_seat .seat_body .right_wrap, #select_pay .seat_body .right_wrap{position: relative;width: 170px;background: #404040;}
    #select_seat .seat_body .right_wrap .row1, #select_pay .seat_body .right_wrap .row1{position: relative;}
    #select_seat .seat_body .right_wrap .row1 img, #select_pay .seat_body .right_wrap .row1 img{display: block;width: 100%;height: 242px;}
    #select_seat .seat_body .right_wrap .row2, #select_pay .seat_body .right_wrap .row2{padding: 10px 15px 0 15px;background-color: #404040;}
    #select_seat .seat_body .right_wrap .row2 .title, #select_pay .seat_body .right_wrap .row2 .title{margin: 0 0 5px 30px;font-size: 12px;line-height: 16px;color: #fff;}
    .age, .age_m{background: url(http://image2.megabox.co.kr/mop/home/bg_age2.png) 0 -999px no-repeat;display: inline-block;width: 17px;height: 18px;margin-right: 4px;text-indent: -99999px;
    overflow: hidden;vertical-align: middle;}
    .age_12{background-position: -60px 0;}
    #select_seat .seat_body .right_wrap .row2 .title i, #select_pay .seat_body .right_wrap .row2 .title i{float: left;margin-left: -30px;}
    #select_seat .seat_body .right_wrap .row2 .title h4, #select_pay .seat_body .right_wrap .row2 .title h4{margin: 0;font-size: 12px;}
    #select_seat .seat_body .right_wrap .row2 ul.info li, #select_pay .seat_body .right_wrap .row2 ul.info li{padding-left: 8px;margin-bottom: 5px;font-size: 11px;color: #fff;
    background: url(http://image2.megabox.co.kr/mop/home/movie/bg_seat.png) -150px 2px no-repeat;}
    #select_seat .seat_body .right_wrap .row2 ul.seat, #select_pay .seat_body .right_wrap .row2 ul.seat{margin: 8px 0 0 -7px;overflow: hidden;}
    #select_seat .seat_body .right_wrap .row2 p.price, #select_pay .seat_body .right_wrap .row2 p.price{position: absolute;bottom: 47px;left: 12px;right: 12px;padding: 5px 0;font-size: 12px;text-align: right;
    color: #fff;}
    #select_seat .seat_body .right_wrap .row2 p.price strong, #select_pay .seat_body .right_wrap .row2 p.price strong{font-size:18px;}
    .booking_lp2 .wrapper .contents .pay_final_wrp{position: absolute;bottom: 10px;left: 2px;width: 170px;}
    .booking_lp2 .wrapper .contents button.prev{background-position: -240px 0;}
    .booking_lp2 .wrapper .contents button.next{background-position: -320px 0;}
    
    
    #select_seat .seat_normal{background: url(http://image2.megabox.co.kr/mop/home/seatselect_160912.png) 0 0 no-repeat;background-position: 50% -80px;} 
    #select_seat .ico_wheel{background: url(http://image2.megabox.co.kr/mop/home/seatselect_160912.png) 0 0 no-repeat;background-position: 50% -187px;}
    #select_seat .seat_selected{background: url(http://image2.megabox.co.kr/mop/home/seatselect_160912.png) 0 0 no-repeat;}
    #select_seat .seat_selected_hover{background: url(http://image2.megabox.co.kr/mop/home/seatselect_160912.png) 0 0 no-repeat;}
    #select_seat .seat_done{background: url(http://image2.megabox.co.kr/mop/home/seatselect_160912.png) 0 0 no-repeat;background-position: 50% -27px;background-color: #ccc;}
    #select_seat .seat_cant{background: url(http://image2.megabox.co.kr/mop/home/seatselect_160912.png) 0 0 no-repeat;background-position: 50% -54px;background-color: #ccc;}
  </style>
</head>
<body>
   <div class="bin"></div>
   
   <div class="modal booking_lp booking_lp2 in" id="select_seat" style="display:block;">
    <div class="wrapper">
     <div class="contents">
      <button type="button" class="img_btn booking refresh_all"></button>
      <div class="movie_header">
       <h3 class="h3_seat pull-left">좌석선택</h3>
      </div>
      <div class="seat_body">
       <div class="left_wrap">
        <div id="bookingSeatTicket" class="row1">
         <lable style="font-size:12px;font-weight:bold;">성인</lable>
         <select style="margin:0 12px 0 8px;font-size:12px;" id="ticketTypeCode_1" name="">
          <option value="0">0</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
         </select>
         <lable style="font-size:12px;font-weight:bold;">청소년</lable>
         <select style="margin:0 12px 0 8px;font-size:12px;" id="ticketTypeCode_2" name="">
          <option value="0">0</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
         </select>     
         <p class="seat_ex" style="margin-top:0px">인원 선택은 최대 8명까지 가능합니다.</p>
        </div>
        <div class="row3">
        <button style="display:none;" type="button" class="alert_seat"><i class="fa fa-exclamation-circle"></i> 관람하실 인원을 먼저 선택해주세요.</button>
         <div class="place" style="background-color: #fff; position:relative;">
          <div class="seat_wrap">
           <p class="screen">SCREEN</p>
           <!-- 좌석 -->
           <div id="seatPositionList" class="seat_position" style="width: 453px;height: 250px;">
            <span class="exit top" style="width: 28px;height: 17px;top: 252px;left: 61px;"></span>
            <span class="exit left" style="width: 17px;height: 28px;top:-18px; left:-33px;background-position: 0 -50px;"></span>
            <span class="line line_a" style="left:0px; top: 0px;">A</span>
            <button type="button" title="A1(일반석)" id="" class="seat_normal" seatgroup="A" seatno="1" seattype="" style="width: 16px;height: 16px;left: 23px;top: 0px;">1</button>
            
           </div>
          </div>
          <div class="seat_img" id="bookingSelectSeatSeatInfo">
         <!-- 좌석 안내 동적 설정 -->
         <p>좌석 안내</p>
         <ul>
         <li><span class="seat_selected"></span>선택좌석</li>
         <li><span class="seat_done"></span>예매완료</li>
         <li><span class="seat_cant"></span>선택불가</li>            
         <li><span class="seat_normal"></span>일반석</li>            
          <li><span class="ico_wheel"></span>장애인/<br>훨체어석</li>                  
        </ul>
       </div>
         </div>
        </div>
        <div class="row4">
       <div class="reset">
       <button class="img_btn booking btn_reset" type="button">다시선택</button>
       <div class="selected_man">
        <span>좌석 선택 인원</span>
        <span><span id="currentCountSelectedTicket">0</span>/<span id="totalCountSelectedTicket">1</span> </span>
       </div>
      </div>
      </div>
       </div>  
       <div id="bookingSelectSeatStatusBoard" class="right_wrap">
        <div class="row1">
        <img src="http://image2.megabox.co.kr/mop/poster/2018/77/3225A3-9B7F-44F0-9B7F-8657FADF418B.medium.jpg" alt="말모이">
        </div>
        <div class="row2">
        <div class="title">
        <i class="age age_12">12세관람가</i>
        <h4>${mbean.title }</h4>
        <span>${mbean.type }</span>
        </div>
        <div style="overflow:hidden;overflow-y:auto;height: 123px;">
        <ul class="info">
         <li>${sbean.theater }<br>${sbean.scrno }</li>
         <li><fmt:formatDate value="${sbean.date }" pattern="yyyy. MM. dd (E)"/> <fmt:formatDate value="${sbean.starthour }" pattern="HH:mm"/></li>
         <li id="countSelectedByTicket"></li>
        </ul>
        <ul class="seat" id="selectedSeatNumbers1">
        </ul>
        </div>
        <p class="price"><strong id="ticketTotalPrice">0</strong> 원</p>
        <div class="pay_final_wrp">
         <button type="button" class="img_btn booking prev">이전</button>
        <button type="button" class="img_btn booking next">다음</button>
           </div>
        </div>
       </div>
      </div>
     </div>
    </div>  
   </div>
</body>
</html>