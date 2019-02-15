<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [eventDetail.jsp]</title>
  <style type="text/css">
                 
  </style>
 </head>
<body>
<table height=300></table>

 <table align="center" width=1000 border=0 cellspacing=0 cellpadding=5>
  <tr align="center"><td colspan=4><img src="<%=request.getContextPath()%>/storage/${bean.econtent}" width=700 height=2380> </td>  </tr>
  <p>
  <form action="eventlist.do">
   <tr align="center">
   <td>
   <input type="submit" value="목록">
   </td>
   </tr>
  </form>
 
 </table>
 <table height=300></table>
</body>
</html>




