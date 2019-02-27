<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>theaterEdit.jsp</title>
</head>
<script type="text/javascript">
	function check() {
	    var str = document.getElementById("ncontent").value;
	    alert(str);
	    str = str.replace(/(?:\r\n|\r|\n)/g, '<br/>');
	    document.noticeform.submit();
 }
</script>

<body>
<form name="theaterform" action="theatereditsave.do">
 <table>
    <input type="hidden" name="t_no" value="${theater.t_no}">
  <tr>
  	<td>극 장</td><td><input type="text" name="t_theater" value="${theater.t_theater}"></td>
  </tr>
  <tr>
   <td>주 소1</td><td><input type="text" name="t_juso1" value="${theater.t_juso1}"></td>
  </tr>
  <tr>
   <td>주 소2</td><td><input type="text" name="t_juso2" value="${theater.t_juso2}"></td>
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