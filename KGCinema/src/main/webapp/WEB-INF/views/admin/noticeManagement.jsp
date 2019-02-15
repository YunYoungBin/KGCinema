<%@ page language="java" contentType="text/html; charset=UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="cinema_adminController.NoticeListController" %>
<%@ page import="cinema_common.GlobalVariable" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [noticeManagement.jsp]</title>
  <style type="text/css">
    html, body {margin: 0;padding: 0;border:0;vertical-align: baseline;}
    * {box-sizing: border-box;font-family: '나눔고딕','NanumGothic','맑은 고딕','Malgun Gothic','돋움',dotum,'Apple SD Gothic Neo',sans-serif;}
    ul, ol, dl, li, p {margin:0;padding:0;list-style: none;}
    a{font-size:12pt; font-weight:bold; text-decoration:none; color: black; font-family:NanumGothic; }
    a:hover{font-size:12pt; font-weight:bold; color: #351F66; text-decoration:underline; }                
  </style>

  <script type="text/javascript">
 	function changeclear( ){
 		myform.keyword.value="";
 		myform.keyword.focus();
 	}//end
  </script>
 </head>
 <jsp:include page="admin_top.jsp"></jsp:include>
<body>
   <%
   String sval=(String)request.getAttribute("sval");
   int Gtotal3 = (int)request.getAttribute("Gtotal");
   int Stotal3 = (int)request.getAttribute("Stotal");
   int pageNUM3 = (int)request.getAttribute("pageNUM");
   int num2;
   if(sval==null || sval=="") {
   	 num2=Gtotal3-(pageNUM3-1)*10;
   }else {
	 num2=Stotal3-(pageNUM3-1)*10;  
   }
  
   %>
<div>
<p style="text-align:center;">공지사항 관리</p>

 <table width=900 border=1 cellspacing=0 style="margin:0 auto">
 <tr align="right">
  <td colspan="5">
  <form action="noticeInsert.jsp">
  	  <input type="submit" value="공지사항 추가">
  	 </form>
  </td>
  </tr>
  	</td>
  <tr align="right">
  	<td colspan="5">
  	 <form name="myform">
  	 	<input type="hidden" name="keyfield" value="${skey}" >
  	 	검색 :
  	 	<input type="text" name="keyword"  size=10 value="${sval}">
  	 	<input type="submit" value="검 색 "> 
  	 	
  	 </form>
  	 
  </tr>
   
   
  <tr align="center">
  	<th width=150 style="border-left-width:0px; border-right-width: 0px;">NO</th> 
  	<th width=150 style="border-left-width:0px; border-right-width: 0px;">지역/영화관</th> 
  	<th width=450 style="border-left-width:0px; border-right-width: 0px;">제 목</th> 
  	<th width=150 style="border-left-width:0px; border-right-width: 0px;">등록일</th>
  	<th width=150 style="border-left-width:0px;">수정/삭제</th>
  </tr>
   <c:forEach var="bean" items="${naver}">
   <tr align="center">
    

	<td style="border-left-width:0px; border-right-width: 0px;"><%=num2--%></td>
     
    
     <td style="border-left-width:0px; border-right-width: 0px;"> ${bean.nloc}  </td>
     <td style="border-left-width:0px; border-right-width: 0px;"> <a href="noticedetail.do?idx=${bean.nno}">${bean.ntitle}</a> </td>
     <td style="border-left-width:0px; border-right-width: 0px;"> ${bean.ndate} </td>
     <td style="border-left-width:0px;">
      <a href="noticeEdit.jsp?idx=${bean.nno}&loc=${bean.nloc}&title=${bean.ntitle}&content=${bean.ncontent}">[수정]</a>
      <a href="noticeDelete.do?idx=${bean.nno}">[삭제]</a> 
     </td>
   </tr>  
   </c:forEach>
   
  <tr align="center">
   <td colspan="5">
   
    <c:if test="${startpage>10}">
     <a href="noticemglist.do?pageNum=${startpage-10}${returnpage}">[이전]</a>
    </c:if>
    
    
    <c:forEach var="i" begin="${startpage}" end="${endpage}">
    	<c:choose>
    	  <c:when test="${i==pageNUM}"> 
    	    <font style='font-size:15pt; color:red;'>[${i}]</font>
    	  </c:when>
    	  <c:otherwise>
    	    <a href="noticemglist.do?pageNum=${i}${returnpage}">[${i}]</a> 
    	  </c:otherwise>
    	</c:choose>
    </c:forEach>
 
     <!-- 다음  10 20 30 40 endpage, pagecount -->
       
  <c:if test="${endpage<pagecount}">
   <a href="noticemglist.do?pageNum=${startpage+10}">[다음]</a>
  </c:if>
  
   </td>
  </tr>
 </table> 
 
 </div>
</body>
</html>
