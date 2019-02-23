<%@ page language="java" contentType="text/html; charset=UTF-8"  %>
<%@ include file="admin_top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [mainManagement.jsp]</title>
  <style type="text/css">
    html, body {margin: 0;padding: 0;border:0;vertical-align: baseline;}
    * {box-sizing: border-box;font-family: '나눔고딕','NanumGothic','맑은 고딕','Malgun Gothic','돋움',dotum,'Apple SD Gothic Neo',sans-serif;}
    ul, ol, dl, li, p {margin:0;padding:0;list-style: none;}
    a{font-size:12pt; font-weight:bold; text-decoration:none; color: black; font-family:NanumGothic; }
    a:hover{font-size:12pt; font-weight:bold; color: #351F66; text-decoration:underline; }                
  </style>

 </head>
<body>
<div>
<p style="text-align:center;">메인슬라이드 관리</p>

 <table width=900 border=1 cellspacing=0 style="margin:0 auto">
 <tr align="right">
  <td colspan="5">
  <form action="mswrite.do">
  	  <input type="submit" value="메인슬라이드 추가">
  	 </form>
  </td>
  </tr>
  	</td>
      
  <tr align="center">
  	<th width=150 style="border-left-width:0px; border-right-width: 0px;">NO</th> 
  	<th width=450 style="border-left-width:0px; border-right-width: 0px;">파일명</th> 
  	<th width=150 style="border-left-width:0px; border-right-width: 0px;">등록일</th>
  	<th width=150 style="border-left-width:0px;">수정/삭제</th>
  </tr>
   <c:forEach var="ms" items="${ms}">
   <tr align="center">
    

	<td style="border-left-width:0px; border-right-width: 0px;">${ms.ms_rn}</td>
     <td style="border-left-width:0px; border-right-width: 0px;"> ${ms.ms_file}</td>
     <td style="border-left-width:0px; border-right-width: 0px;"> <fmt:formatDate value="${ms.ms_date}" pattern="yyyy/MM/dd" /> </td>
     <td style="border-left-width:0px;">
      <a href="msedit.do?idx=${ms.ms_no}">[수정]</a>
      <a href="msdelete.do?idx=${ms.ms_no}">[삭제]</a> 
     </td>
   </tr>  
   </c:forEach>
   
 </table> 
 
 </div>
</body>
</html>
