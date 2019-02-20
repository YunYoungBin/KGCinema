<%@ page language="java" contentType="text/html; charset=UTF-8"  %>
<%@ include file="admin_top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [movieManagement.jsp]</title>
  <style type="text/css">
    html, body {margin: 0;padding: 0;border:0;vertical-align: baseline;}
    * {box-sizing: border-box;font-family: '나눔고딕','NanumGothic','맑은 고딕','Malgun Gothic','돋움',dotum,'Apple SD Gothic Neo',sans-serif;}
    ul, ol, dl, li, p {margin:0;padding:0;list-style: none;}
    a{font-size:12pt; font-weight:bold; text-decoration:none; color: black; font-family:NanumGothic; }
    a:hover{font-size:12pt; font-weight:bold; color: #351F66; text-decoration:underline; }                
  </style>

  <script type="text/javascript">
  </script>
 </head>
<body>
   
<div>

<p style="text-align:center;">영화정보 관리</p>

 <table width=900 border=1 cellspacing=0 style="margin:0 auto;">
 <tr align="right">
  <td colspan="6">
  <form action="moviewrite.do">
       <input type="submit" value="영화 추가">
      </form>
  </td>
  </tr>
     </td>
  <tr align="right">
     <td colspan="6">
      <form name="myform">
         <input type="hidden" name="keyfield" value="${skey}" >
         검색 :
         <input type="text" name="keyword"  size=10 value="${sval}">
         <input type="submit" value="검 색 "> 
         
      </form>
      
  </tr>
   
   
  <tr align="center">
     <th width=150 style="border-left-width:0px; border-right-width: 0px;">NO</th> 
     <th width=150 style="border-left-width:0px; border-right-width: 0px;">제 목</th> 
     <th width=450 style="border-left-width:0px; border-right-width: 0px;">타 입</th> 
     <th width=150 style="border-left-width:0px; border-right-width: 0px;">장 르</th>
     <th width=150 style="border-left-width:0px; border-right-width: 0px;">개봉일</th>
     <th width=150 style="border-left-width:0px;">수정/삭제</th>
  </tr>
   <c:forEach var="movie" items="${naver}">
   <tr align="center">
    

   <td style="border-left-width:0px; border-right-width: 0px;">${movie.m_rn}</td>
     
    
     <td style="border-left-width:0px; border-right-width: 0px;"> ${movie.m_title}  </td>
     <td style="border-left-width:0px; border-right-width: 0px;"> ${movie.m_type} </td>
     <td style="border-left-width:0px; border-right-width: 0px;"> ${movie.m_genre} </td>
     <td style="border-left-width:0px; border-right-width: 0px;"> <fmt:formatDate value="${movie.m_premiere}" pattern="yyyy/MM/dd" /> </td>
     <td style="border-left-width:0px;">
      <a href="movieedit.do?idx=${movie.m_no}">[수정]</a>
      <a href="movieDelete.do?idx=${movie.m_no}">[삭제]</a> 
     </td>
   </tr>  
   </c:forEach>
   
  <tr align="center">
   <td colspan="6">
   
    <c:if test="${startpage>10}">
     <a href="moviemglist.do?pageNum=${startpage-10}${returnpage}">[이전]</a>
    </c:if>
    
    
    <c:forEach var="i" begin="${startpage}" end="${endpage}">
       <c:choose>
         <c:when test="${i==pageNUM}"> 
           <font style='font-size:15pt; color:red;'>[${i}]</font>
         </c:when>
         <c:otherwise>
           <a href="moviemglist.do?pageNum=${i}${returnpage}">[${i}]</a> 
         </c:otherwise>
       </c:choose>
    </c:forEach>
 
     <!-- 다음  10 20 30 40 endpage, pagecount -->
       
  <c:if test="${endpage<pagecount}">
   <a href="moviemglist.do?pageNum=${startpage+10}">[다음]</a>
  </c:if>
  
   </td>
  </tr>
 </table> 
 </div>
</body>
</html>