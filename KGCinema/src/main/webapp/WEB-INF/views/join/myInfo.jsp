<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="headLogin.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<title>myInfo.jsp</title>
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/full-slider.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./slick-master/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="./slick-master/slick/slick-theme.css">
    <script src="vendor/bootstrap/js/bootstrap.bundle2.min.js"></script>
    <script src="js/agency.min.js"></script>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="./slick-master/slick/slick.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
   
    <link href="vendor/bootstrap/css/bootstrap2.min.css" rel="stylesheet">
    <link href="css/agency.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/InputCSS1.css">
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="./js/EditJS2.js"></script>
    
  <style type="text/css">
    html, body {margin: 0;padding: 0;border:0;vertical-align: baseline;}
    * {box-sizing: border-box;font-family: '나눔고딕','NanumGothic','맑은 고딕','Malgun Gothic','돋움',dotum,'Apple SD Gothic Neo',sans-serif;}
    div{display:block;}
    table{border-collapse: collapse;border-spacing: 0;max-width: 100%;}
    h3{margin: 0;}
    ul, ol, dl, li, p {margin:0;padding:0;list-style: none;}
    img{vertical-align: middle;border:0;}
    button{font-family: inherit;font-size: inherit;line-height: inherit;}
    input{width: 200px;border: 1px solid #d9d9d9;line-height: 26px;height: 26px;background-color: #f8f8f8;font-size: 12px;color: #333;text-indent: 14px;vertical-align: middle;}
    .a{display: inline-block;width: 230px;height: 44px;margin-top: 10px;line-height: 44px;box-sizing: border-box;-webkit-box-sizing: border-box;-moz-box-sizing: border-box;text-align: center;font-size: 16px;color: #cdc197;background: #231f20;font-weight: bold;}
    .bin{width:100%;height:50px;}
    .sub_navi{background-color: #f2f2f2;border-top: 1px solid #e1e1e1;border-bottom: 3px solid #503396;}
    .sub_navi_wrap{position: relative;width: 970px;margin: 0 auto;}
    .sub_navi ul li:last-child{margin-right: 0;}
    .sub_navi ul li{position: relative;float: left;}
    .sub_navi ul li a{display: block;overflow: hidden;text-indent: -9999px;width: 60px;height: 50px;}
    .sub_navi ul li a.mypage{background: url(http://image2.megabox.co.kr/mop/home/btns/btn_sub_menu_mypage.png) 0 0 no-repeat;}
    .sub_navi ul li a.mypage.sm01{width: 85px;background-position: 0 0;}
    #container{position: relative;margin-top: 38px;margin-bottom: 85px;}
    .width-fixed{width: 970px;max-width: 970px;min-width: 970px;margin-left: auto;margin-right: auto;}
    .h2_mypage{position: relative;margin-bottom: 27px;}
    .h2_mypage h3.sub_title{font-size: 20px;display: inline-block;}
    .h2_mypage span{font-size: 13px;padding-left: 1rem;letter-spacing: -0.05em;}
    .personal_info_last{position: absolute;right: 0;text-align: right;}
    .personal_info_last span{margin-right: 16px;display: inline-block;height: 22px;line-height: 22px;color: #666;font-size: 12px;}
    .img_btn.mypage{background-image: url(http://image2.megabox.co.kr/mop/home/mypage/bg_mypage_160114.png);}
    .img_btn.mypage.personal_change_pw{display: inline-block;width: 88px;height: 22px;background-position: -550px -450px;}
    .mr6{margin-right: 6px;}
    .img_btn{overflow: hidden;text-indent: -9999px;border: none;background-repeat: no-repeat;background: transparent;vertical-align: middle;}
    .img_btn.mypage.personal_quit{display: inline-block;width: 62px;height: 22px;background-position: -650px -450px;}
    .text-sub{color: #666;font-size: 12px;display: inline-block;}
    .mb10{margin-bottom: 10px;}   
    .m15{margin-left: 5px;}
    .mr6{margin-right: 6px;}    
    .mr8{margin-right: 8px;}
    .mr2{margin-right: 2px;}
    .ml2{margin-left: 2px;}
    .mt{margin-top: 50px;}
    .mr7{margin-right: 7px;}
    .ml{margin-left: 7px;}
     input.w67{width:67px;}
     input.w44{width:44px;}
    .user_wrap .myInfoArea1{margin-left: 20px;margin-bottom: -30px;}
    .pull-left{float: left;}
    .img-circle{border-radius: 50%;}
    .user_wrap .myInfoArea1 .textArea{margin-top: 38px;margin-left: 20px;}
    .user_wrap .myInfoArea1 .textArea .profile_btn_wrap{display: block;margin-top:3px;}
    .user_wrap .myInfoArea1 .textArea .profile_btn_wrap button.fake_section{display: inline-block;background-position: -400px -200px;}
    .user_wrap .myInfoArea1 .textArea .profile_btn_wrap button{width: 70px;height: 26px;}
    .img_btn.user{background-image: url(http://image2.megabox.co.kr/mop/home/btns/btn_member.png);}
    .user_wrap .myInfoArea1 .textArea .profile_btn_wrap button.profile_del{background-position: -476px -200px;display: inline-block;}
    .form-style h4{font-size: 13px;padding-left: 1rem;letter-spacing: -0.05em;margin: 40px 0 10px;}
    .form-style .form-table{border-top: 2px solid #503396;border-bottom: 2px solid #d2d2d2;width: 100%;}
    .blind2{width: 0;height: 0;overflow: hidden;font-size: 0;}
    .form-style .form-table th, .form-style .form-table td{border-top: 1px solid #dcdcdc;padding: 5px;}    
    .form-style .form-table th{    padding-left: 26px;background-color: #f8f8f8;vertical-align: top;font-size: 12px;font-weight: normal;}
    .form-style .form-table th label{font-size: 12px;font-weight: normal;}
    .form-style .form-table td{padding-left: 30px;}
    .form-style .form-table td span{display: inline-block;}
    .file_button{width: 70px;height: 26px;display: inline-block;background-position: -400px -200px;}
    .text-center{text-align: center;}
    .user_wrap .btn_wrap{overflow: hidden;margin: 50px auto 0;}
    .cancel{display: inline-block;width: 123px;height: 45px;background-position: 0 -300px;cursor: pointer;}
    .modify{display: inline-block;width: 123px;height: 45px;background-position: -200px -650px;cursor: pointer;}
    .image_width{width:100px; height:100px;}
  </style>

  
</head>
<body>
 <div class="bin"></div>
 
 <div>
  <div class="sub_navi">
   <div class="sub_navi_wrap">
    <ul class="clearfix">
     <li>
      <a class="mypage sm01">나의 메가박스</a>
     </li>
    </ul>
   </div>
  </div>

 <form name="iform" method="post" action="edit.do" enctype="multipart/form-data">  
  <div class="main-content">
   <div class="mypage_container" id="container">
    <div class="width-fixed mypage_membership_wrap" style="position: relative;">
     <div class="h2_mypage">
      <h3 class="sub_title">개인정보 수정</h3>
      <span> 회원님의 정보를 정확히 입력해주세요. </span>
     </div>
     <div class="personal_info_last">
      <span class="">마지막 비밀번호 변경 : 2일 전에 함 (2018.12.31)</span>
      <button type="button" class="img_btn mypage personal_change_pw mr6"></button>
      <button type="button" class="img_btn mypage personal_quit"></button>
     </div>
     <div class="user_wrap">
      <div class="form-style">
       <div class="clearfix">
        <span class="text-sub mb10">*표시 항목은 필수입력 항목입니다.</span>
       </div>
       <div class="clearfix myInfoArea1">
       <c:choose>
        <c:when test="${bean.file eq '' || empty bean.file}">
         <img id="preview" class="img-circle pull-left image_width" name="basic" src="http://image2.megabox.co.kr/mop/home/user/profile_m.png">
        </c:when>
        <c:otherwise>
         <img id="preview" class="img-circle pull-left image_width" name="sujung_img" src="<%=request.getContextPath()%>/storage/${bean.file}">
        </c:otherwise>
       </c:choose>
        <div class="pull-left textArea">
         <strong>${bean.id}</strong> <input type='text' hidden="" name="id" value="${bean.id}">
         <span class="profile_btn_wrap">
          <input type="file" id="file" name="file" class="img_btn user fake_section file_button">
          <!--<button id="imgDeleteBtn" name="imgDeleteBtn" class="img_btn user profile_del">삭제</button>-->
          <input type="button" class="img_btn user profile_del"
          style="width: 70px;height: 26px;background-position: -476px -200px;display: inline-block;">
         </span>
        </div>
       </div>
       <h4>기본정보 (필수입력)</h4>
       <table class="form-table">
        <caption class="blind2">개인정보(필수입력)수정:비밀번호 입력,이름,생년월일,휴대폰,이메일 수정</caption>
        <colgroup>
         <col width="181">
         <col width>
        </colgroup>
        <tbody>
         <tr>
          <th scope="row" id="th_myInfo_password">
           <label>*비밀번호</label>
          </th>
          <td>
           <input type="password" name="pwd" fieldname="비밀번호" value="" onkeyup="checklen(this,10)">
           <input type='text' hidden="" name="pass" value="${bean.pwd}">
          </td>
         </tr>
         <tr>
          <th scope="row" id="th_myInfo_name">
           <label>*이름</label>
          </th>
          <td>
           <input type="text" name="name" fieldname="이름" value="${bean.name}" readonly>
           <input id="filename" type="hidden" name="filename" fieldname="이름" value="${bean.file}">
          </td>
         </tr>     
         <tr>
          <th scope="row" id="th_myInfo_birthday">
           <label>*생년월일</label>
          </th>
          <td>
           <input class="w67" type="text" name="year" fieldname="생년월일"  maxlength="4" value="${bean.getBirth().substring(0,4)}" onfocus="birth()" onchange="birth()" >
           <span class="text-sub ml5 mr8">년</span>
           <input class="w44" type="text" name="month" fieldname="생년월일"  maxlength="2" value="${bean.getBirth().substring(5,7)}" onchange="birth()">
           <span class="text-sub ml5 mr8">월</span>
           <input class="w44" type="text" name="day" fieldname="생년월일" maxlength="2" value="${bean.getBirth().substring(8)}" onchange="birth()">
           <span class="text-sub ml5 mr8">일</span>
          </td>
         </tr>      
         </tr>     
         <tr>
          <th scope="row" id="th_myInfo_mobile">
           <label>*휴대폰</label>
          </th>
          <td>
           <input class="w67" type="text" name="num1" onfocus="num()" onchange="num()" maxlength="3" value="${bean.phone.substring(0,3)}">
           <span class="text-sub ml2 mr2">-</span>
           <input class="w67" type="text" name="num2" onchange="num()" maxlength="4" value="${bean.phone.substring(4,8)}">
           <span class="text-sub ml2 mr2">-</span>
           <input class="w67" type="text" name="num3" onchange="num()" maxlength="4" value="${bean.phone.substring(9)}">
          </td>
         </tr>     
         <tr>
          <th scope="row" id="th_myInfo_email">
           <label>*이메일</label>
          </th>
          <td>
           <input type="text" name="email" value="${bean.email}" onblur="emailcheck()" onkeyup="checklen(this,30)">
           <span id="email_ch"></span>
          </td>
         </tr>            
       <tr>
        <th scope="row" id="th_myInfo_email">
           <label>*주소</label>         
        </th>
         <td>
          <input type="text" size="10" id="code" name="code" value="12345" readonly> <input type="button" onclick="DaumPostcode()" value="우편번호"><p>
         <input type="text" size="40" id="juso1" name="juso1" value="${bean.juso1}" readonly><p>
         <input type="text" size="40" id="juso2" name="juso2" value="${bean.juso2}" onkeyup="checklen(this,30)">&nbsp;&nbsp;상세주소를 입력하세요 <br>
       </td>
      </tr>                        
        </tbody>
       </table>
      </div>
     </div>
      <div class="btn_wrap text-center mt50">
       <a href="index.jsp"><button type="button" class="img_btn user cancel mr7" onclick="">취소</button></a>
       <button type="button" class="img_btn user modify ml7" onclick="check()" style="background: url(http://image2.megabox.co.kr/mop/home/mypage/bg_mypage_160114.png) -200px -650px no-repeat;"></button>
      </div>
     
    </div>
   </div>
  </div>
 </form> 
 </div>
 
 <script>
   $(".profile_del").click(function(){
      $("#preview").attr("src", "http://image2.megabox.co.kr/mop/home/user/profile_m.png");
      $("#filename").val("");
   });
 </script>
 
 <div style="width:100%;height:48px;"></div>
 
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>