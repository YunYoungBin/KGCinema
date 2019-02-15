<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="headLogin.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EventList</title>
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="vendor/bootstrap/js/bootstrap.bundle2.min.js"></script>
    <script src="js/agency.min.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <link href="vendor/bootstrap/css/bootstrap2.min.css" rel="stylesheet">
    <link href="css/agency.min.css" rel="stylesheet">
</head>
<style>
    html, body {margin: 0;padding: 0;border:0;vertical-align: baseline;}
    * {box-sizing: border-box;font-family: '나눔고딕','NanumGothic','맑은 고딕','Malgun Gothic','돋움',dotum,'Apple SD Gothic Neo',sans-serif;}
    div{display:block;}
    table{border-collapse: collapse;border-spacing: 0;max-width: 100%;}
    h3{margin: 0;}
    ul, ol, dl, li, p {margin:0;padding:0;list-style: none;}
    img{vertical-align: middle;border:0;}
    button{font-family: inherit;font-size: inherit;line-height: inherit;} 
    input{width: 200px;border: 1px solid #d9d9d9;line-height: 26px;height: 26px;background-color: #f8f8f8;font-size: 12px;color: #333;text-indent: 14px;vertical-align: middle;}
    th{text-align: left;}
    .a{display: inline-block;width: 230px;height: 44px;margin-top: 10px;line-height: 44px;box-sizing: border-box;-webkit-box-sizing: border-box;-moz-box-sizing: border-box;text-align: center;font-size: 16px;color: #cdc197;background: #231f20;font-weight: bold;}
    .bin{width:100%;height:50px;}
    .mb10{margin-bottom: 10px;}   
    .m15{margin-left: 5px;}
    .mr6{margin-right: 6px;}    
    .mr8{margin-right: 8px;}
    .mr2{margin-right: 2px;}
    .ml2{margin-left: 2px;}
    .mt{margin-top: 50px;}
    .mr7{margin-right: 7px;}
    .mt25{margin-top:25px;}
    .ml{margin-left: 7px;}
    .mb30{margin-bottom: 30px;}
    .mb20{margin-bottom: 20px;}
    .pl25{padding-left: 25px;}
    .pr30{padding-right: 30px;}
    .pt20{padding-top:20px;}
    .sub_navi{background-color: #f2f2f2;border-top: 1px solid #e1e1e1;border-bottom: 3px solid #503396;}
    .sub_navi_wrap{position: relative;width: 970px;margin: 0 auto;}
    .sub_navi ul li:last-child{margin-right: 0;}
    .sub_navi ul li{position: relative;float: left;}
    .sub_navi ul li a{display: block;overflow: hidden;text-indent: -9999px;width: 60px;height: 50px;}
    .sub_navi ul li a.mypage{background: url(http://image2.megabox.co.kr/mop/home/btns/btn_sub_menu_center.png) no-repeat;}
    .sub_navi ul li a.mypage.sm01{background-position: left center;}
    #container{position: relative;margin-top: 38px;margin-bottom: 85px;}
    .width-fixed{width: 970px;max-width: 970px;min-width: 970px;margin-left: auto;margin-right: auto;}
    h2>.sub_title{display: block;overflow: hidden;font-size: 20px;width: 100%;}
    h2>.sub_title.customer.st03{background-position: 0 -100px;}
    .tab_wrap{position: relative;border-bottom: 1px solid #e8e7e7;padding-bottom: 20px;}
    .customer_tab_wrap{padding: 0;border: none;}
    .nav-tabs{overflow: visible;background: url(http://image2.megabox.co.kr/mop/home/btns/bg_sm_btns.png) 0 bottom repeat-x;margin-bottom: 30px;height: 35px;
    border: none;border-bottom: 1px solid #dddddd;}
    .nav{padding-left: 0;margin-bottom: 0;list-style: none;}
    .nav-tabs>li:first-child{margin-left: 0;}
    .nav-tabs li{overflow: visible;position: relative;display: block;float: left;}
    .nav-tabs>li{margin:0;}
    .nav-tabs li:first-child.active a{border-left: 1px solid #e1e1e1;}
    .nav-tabs li.active a{margin-bottom: -1px;background-color: #fff;border-bottom: 1px solid #fff;}
    .nav-tabs>li.active>a{color: #333;cursor: default;background-color: #fff;}
    .nav-tabs li a{margin-bottom: -2px;padding: 0 25px;display: block;border: 1px solid #e1e1e1;border-bottom-color: #e1e1e1;border-left: none;
    font-size: 13px;line-height: 35px;text-align: center;min-width: 114px;height: 35px;background-color: #f9f9f9;color: #666;font-weight: 700;}
    .blind{display: block;overflow: hidden;position: absolute;top: -1000em;left: -1000em;}
    .search_wrapper{width: auto;margin: 0 auto;text-align: right;}
    .customer_search_wrapper>input[type=text], .customer_search_wrapper>button.search{height: 29px;line-height: 25px;}
    .search_wrapper>input[type=text]{width: 199px;text-indent: 10px;font-size: 14px;border-right: none;}
    .search_wrapper>input[type=text], .search_wrapper>button.search{height: 32px;line-height: 32px;color: #666;border: 1px solid #d1d1d1;background-color: #fff;
    vertical-align: middle;}
    #btnNoticeSearchMEG{height: 32px;line-height: 32px;color: #666;border: 1px solid #d1d1d1;background-color: #fff;vertical-align: middle;}
    button.search{width: 37px;font-size: 18px;border-left: none;}
    .fa{display: inline-block;font-family: FontAwesome;font-style: normal;font-weight: normal;line-height: 1;-webkit-font-smoothing: antialiased;}     
    #tx{height: 32px;line-height: 32px;color: #666;border: 1px solid #d1d1d1;background-color: #fff;vertical-align: middle;}
    .full-width{padding: 0 11px;}
    #event_wrapper{display: block;overflow: hidden;margin: -7px auto;white-space: nowrap;word-wrap: break-word;width: 984px;}
    #event_wrapper>li{position: relative;display: block;width: 232px;height: 448px;border: 1px solid #d9d9d9;margin: 7px;float: left;}
    #event_wrapper>li>a{display: block;height: 100%;text-decoration: none;color: #666;font-size: 14px;}
    #event_wrapper>li img{height: 335px;border-bottom: 1px solid #9d9d9 d9;}
    #event_wrapper>li img, #event_wrapper>li span{display: block;width: 100%;word-break: break-all;white-space: normal;}
    #event_wrapper>li span.title{height: 56px;overflow: hidden;margin: 17px 0 6px;font-size: 20px;color: #333;font-weight: 700;}
    #event_wrapper>li span{padding: 0 12px;}
    .text-center{text-align: center}
    .text-rigth{text-align: right;}
    .custom-pagination{text-align: center}
    .custom-pagination li{display: inline-block;vertical-align: top;}
    .custom-pagination li a{display: block;border: 1px solid #ccc;padding: 0 8px;height: 25px;line-height: 25px;font-size: 12px;color: #666;vertical-align: middle;
    text-decoration: none;cursor: pointer;}
    .img_btn{overflow: hidden;text-indent: -9999px;background-repeat: no-repeat;background: transparent;}
    .img_btn.customer{background-image: url(http://image2.megabox.co.kr/mop/home/customer/bg_customer.png);}
    .custom-pagination li a.img_btn{border: none;padding: 0;width: 24px;height: 25px;}
    .custom-pagination li a.first{background-position: -300px -550px;}
    .custom-pagination li a.prev{background-position: -400px -550px;}
    .custom-pagination li a.next{background-position: -450px -550px;}
    .custom-pagination li a.last{background-position: -350px -550px;}
    
    .custom-pagination li a.active{border-color: #351F66;background-color: #503396;color: #fff;}
    .custom-pagination li a:hover{border-color: #ccc;background-color: #ccc;color: black;}
</style>
<script type="text/javascript">
 	function changeclear( ){
 		nform.keyword.value="";
 		nform.keyword.focus();
 	}//end
  </script>
<body>
  <div class="bin"></div>
  
  <!-- main start -->
  <div>
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
     <span class="sub_title customer st03">이벤트, KGCINEMA의 최신소식을 알려드립니다.</span>
    </h2>
    
    <!-- Event start-->
    <div id="centerEventList" class="tab_wrap customer_tab_wrap">
     <ul class="nav nav-tabs" style="margin-bottom:20px;">
      <li class="active">
       <a>이벤트</a>
      </li>
     </ul>
     
     <div class="tab-content">
      <h3 class="blind">이벤트</h3>
      <div class="tab-pane active" id="centerEventListAll">
       <div class="search_wrapper customer_search_wrapper mb10">
       <form name="nform" class="mb10">
        <label class="blind">검색어 입력</label>
        <input type="hidden" name="keyfield" value="${skey}" >
        <input id="tx" type="text" title="검색어 입력" id="blind" placeholder="검색어를 입력하세요" name="keyword" maxlength="20" value="${sval}" onfocus="changeclear();">
        <input type="submit" class="search" id="btnNoticeSearchMEG" value="검색" style="width:37px;text-indent: 0px;line-height:0px;">
        </botton>
       </form> 
       </div>
       
       <div id="container" class="pt20">
        <div class="full-width">
         <div id="eventList">
          <ul id="event_wrapper">
          <c:forEach var="item" items="${edb}">
           <li class="item">
            <a href="eventdetail.do?idx=${item.eno}">
             <img src="<%=request.getContextPath()%>/storage/${item.efile}">
             <span class="title">${item.etitle}</span>
             <span>${item.eperiod}</span>
            </a>
           </li>
          </c:forEach>          
          </ul>
         </div>
        </div>
       </div>
       
       <ul class="custom-pagination mt25">
       <c:if test="${startpage>10}">
        <li> 
         <a href="eventlist.do?pageNum=${pagecount-pagecount+1}" class="img_btn customer first" title="처음 페이지 보기">
          <span class="blind">처음 페이지</span>
         </a>         
        </li>
       </c:if>
        
       <c:if test="${startpage>10}">
        <li>
         <a href="eventlist.do?pageNum=${startpage-10}" class="img_btn customer prev" title="이전 10페이지 보기">
          <span class="blind">이전 10페이지</span>
         </a>         
        </li>
       </c:if> 

       
       <c:forEach var="i" begin="${startpage}" end="${endpage}">
        <c:choose>
    	  <c:when test="${i==pageNUM}"> 
    	    <li><a class="active" href="eventlist.do?pageNum=${i}${returnpage}">${i}</a></li>
    	  </c:when>
    	  <c:otherwise>
    	    <li><a href="eventlist.do?pageNum=${i}${returnpage}">${i}</a></li>
    	  </c:otherwise>
    	</c:choose>
       </c:forEach>
        
        
    
       <c:if test="${endpage<pagecount}">  
        <li>
         <a href="eventlist.do?pageNum=${startpage+10}" class="img_btn customer next" title="다음 10페이지 보기">
          <span class="blind">다음 10페이지</span>
         </a>         
        </li>
       </c:if> 
         
       <c:if test="${endpage<pagecount}">  
        <li>
         <a href="eventlist.do?pageNum=${pagecount}" class="img_btn customer last" title="마지막 페이지 보기">
          <span class="blind">마지막 페이지</span>
         </a>         
        </li>
        </c:if>    
       </ul>
       
       
      </div>
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