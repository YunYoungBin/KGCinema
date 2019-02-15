<%@ page language="java" contentType="text/html; charset=UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [openSb.jsp] </title>
	<style type="text/css">
		*{font-size: 14pt; font-weight: bold; }
	</style>
	
	<script type="text/javascript">
		function send() {
			subform.userid.value = window.opener.iform.id.value;
		} // send() end
	</script>
</head>
<body bgcolor="yellow" onload="send()">

<p>
	
	<div align="center">
	<form name="subform" action="sb.do">
	  아이디:<input type="text" name="userid" value="">
	  		<input type="submit" value="중복확인">
	</form>
	<img src="../images/bar.gif" width=400>
		
	</div>
	
	<c:if test="${count > 0 }">
		<script type="text/javascript">
			alert("이미 사용중인 아이디 입니다.");
			opener.iform.sabun.value="";
			opener.iform.sabun.focus();
			self.close();
		</script>
	</c:if><c:if test="${count ==0 }">
		<script type="text/javascript">
			alert("사용가능한 아이디 입니다.");
			opener.iform.name.focus();
			opener.temp=subform.userid.value;
			opener.flagI_t();
			
			self.close();
		</script>
	</c:if>
	
	
</body>
</html>