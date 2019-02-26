<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scheduleEdit.jsp</title>
</head>
<script type="text/javascript">
	function check() {
	    var str = document.getElementById("ncontent").value;
	    alert(str);
	    str = str.replace(/(?:\r\n|\r|\n)/g, '<br/>');
	    document.noticeform.submit();
 }
</script>
<jsp:include page="admin_top.jsp"></jsp:include>

<body>
<form name="scheduleform" action="scheduleEditSave.do">
 <table>
  <tr>
  	<td>지점</td><td><input type="text" name="sloc" value="강남">
   	<input type="hidden" name="id" value="${sbean.id}"></td>
  </tr>
  <tr>
   <td>상영관</td><td><input type="text" name="sscrno" value="${sbean.scrno}"></td>
  </tr>
  <tr>
   <td>제 목</td><td><input type="text" name="stitle" value="${sbean.title}"></td>
  </tr>
  <tr>
   <td>영화시작시간</td><td><input type="text" name="sstarthour" placeholder="yyyy-mm-dd hh24:mi"><fmt:formatDate value="${sbean.starthour}" pattern="yyyy-MM-dd HH:mm" /></td>
  </tr>
  <tr>
   <td>영화종료시간</td><td><input type="text" name="sendhour" placeholder="yyyy-mm-dd hh24:mi"><fmt:formatDate value="${sbean.endhour}" pattern="yyyy-MM-dd HH:mm" /></td>
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