<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scheduleInsert.jsp</title>
</head>
<style>
 *{margin:0;padding:0;}
</style>
<script type="text/javascript">
	function check() {
	    var str = document.getElementById("ncontent").value;
	    alert(str);
	    str = str.replace(/(?:\r\n|\r|\n)/g, '<br/>');
	    document.noticeform.submit();
 }
</script>

<body>

<form name="scheduleform" action="scheduleinsert.do">
 <table>
  
  <tr>
   <td>지점</td><td>   
    <select name="theater">
    <c:forEach var="t" items="${tselect}"> 
     <option>${t.t_theater}</option>
    </c:forEach> 
    </select>
   </td>
  </tr>
  <tr>
   <td>상영관</td><td>
    <select name="scrno">
     <option></option>
     <c:forEach var="sr" items="${srselect}">     
      <option value="${sr.s_scrno}">${sr.s_scrno}</option>
     </c:forEach> 
    </select>
   </td>
  </tr>
  <tr>
   <td>제 목</td><td><input type="text" name="title"></td>
  </tr>
  <tr>
   <td>영화시작시간</td><td><input type="text" name="upload_starthour" placeholder="yyyy-mm-dd hh:mi"></td>
  </tr>
  <tr>
   <td>영화종료시간</td><td><input type="text" name="upload_endhour" placeholder="yyyy-mm-dd hh:mi"></td>
  </tr>
  
 </table>
 <table >
 <tr>
 <td>
   <input type="submit" value="등록">
   <input type="reset" value=취소></td>
  </tr>
  </table>
</form>


</body>
</html>