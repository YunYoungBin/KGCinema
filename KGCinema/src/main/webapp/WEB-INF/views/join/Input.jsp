<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="headLogin.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" type="text/css" href="./css/InputCSS1.css">

</head>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="./js/InputJS.js"></script>

<body>
	<div class="all" align="center">
		<div class="title"><br><div><h2>회원가입<span class="ml10">KG CINEMA에 오신것을 환영합니다</span></h2></div></div>
		<div class="cf"><br><span class="text-sub mb10">* 표시 항목은 필수입력 항목입니다.</span></div>
		<form name="iform" method="post" action="join.do"> <!-- enctype="multipart/form-data" -->
			<table class="table1">
				<tr>
					<th>* 아이디</th>
					<td >
						<input type="text" size="19" name="id"  onkeyup="checklen(this,15)" value="whalsanr"> 
						<input type="button" class="button button1" onclick="checkId()" style="vertical-align: middle;" value="중복확인">
						<label id="idlabel"></label>
					</td>
				</tr>
				<tr>
					<th>* 이름</th>
					<td>
					    <input type="text" size="19" name="name" onchange="checkName()" onkeyup="checklen(this,15)" value="조민묵">
					    <label id="namelabel"></label>    
					</td>
				</tr>
				<tr>
					<th>* 비밀번호</th>
					<td ><input type="password" name="pwd" onkeyup="checklen(this,10)" value="wmf892"></td>
				</tr>
				<tr>
					<th>* 비밀번호 확인</th>
					<td>
						<input type="password" name="pwd2" onkeyup="checkPwd();" value="wmf892">
						<label id="pwdlabel">&nbsp;&nbsp;비밀번호를 한번 더 입력해주세요.</label>
					</td>

				</tr>
				<tr>
					<th>* 주소</th>
					<td colspan= "2">
						<input type="text" size="10" id="code" name="code" readonly value="06267"> <input type="button" class="post" onclick="DaumPostcode()" value="우편번호 검색"><p>
						<input type="text" size="40" id="juso1" name="juso1" readonly value="강남대로"><p>
						<input type="text" size="40" id="juso2" name="juso2" onkeyup="checklen(this,30)" value="123">&nbsp;&nbsp;상세주소를 입력하세요 <br>
					</td>
				</tr>
				
				<tr>
					<th>* 생년월일</th>
					<td colspan= "2">
						<input type="text" class="w67" size="4" name="year" onfocus="birth()" onchange="birth()" maxlength="4" value="1994">&nbsp;년&nbsp;
						<input type="text" class="w44" size="2" name="month" onchange="birth()" maxlength="2" value="01">&nbsp;월&nbsp;
						<input type="text" class="w44" size="2" name="day" onchange="birth()" maxlength="2" value="17">&nbsp;일&nbsp;
						<label id="birthlabel">&nbsp;&nbsp;생년월일을 입력하세요</label>
					</td>
				</tr>
				
				<tr>
					<th>* 휴대폰</th>
					<td colspan= "2">
						<input type="text" class="w67" size="3" name="num1" onfocus="num()" onchange="num()" maxlength="3" value="010">-
						<input type="text" class="w67" size="4" name="num2" onchange="num()" maxlength="4" value="7766">-
						<input type="text" class="w67" size="4" name="num3" onchange="num()" maxlength="4" value="7936">&nbsp;
						<label id="numlabel">&nbsp;&nbsp;숫자3~4자리 입력하세요></label>
					</td>
				</tr>
				<tr>
					<th>* email</th>
					<td colspan= "2">
						<input type="text" size="40" name="email" onblur="emailcheck()" onkeyup="checklen(this,30)" placeholder="aaa@aaa.aa형식으로 입력" value="alsanr@naver.com">
						<span id="email_ch"></span>
					</td>
				</tr>

			</table>
			<p>
			<input type="button" class="button button2" value="취소" onclick="location.href='index.jsp'">&nbsp;&nbsp;&nbsp;
			<input type="button" class="button button3" value="등록" onclick="check()">
		</form>
	</div>
</body>
</html>