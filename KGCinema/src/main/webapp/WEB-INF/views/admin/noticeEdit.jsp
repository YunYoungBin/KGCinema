<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
    pageContext.setAttribute("br", "<br/>");
	pageContext.setAttribute("cn", "\n");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeEdit.jsp</title>
</head>
<script type="text/javascript">
	function check() {
	    var str = document.getElementById("e_ncontent").value;
	    alert(str);
	    str = str.replace(/(?:\r\n|\r|\n)/g, '<br/>');
	    document.noticeEDform.submit();
 	}
</script>
<jsp:include page="admin_top.jsp"></jsp:include>
<body>
<%
	int a=Integer.parseInt(request.getParameter("idx"));
	
	String b=request.getParameter("loc");
	String c=request.getParameter("title");
	String d=request.getParameter("content");
	System.out.println(a+"/"+b+"/"+c+"/"+d);
%>

<form name=noticeEDform action="noticeEdit.do">
 <table>
  <tr>
   <td></td><td><input type="hidden" name=e_nno value=<%=a%>></td>
  </tr>
  <tr>
   <td>지점</td><td><input type="text" name=e_nloc value=<%=b%>></td>
  </tr>
  <tr>
   <td>제목</td><td><input type="text" name=e_ntitle value=<%=c%>></td>
  </tr>
  <tr>
   <td>내용</td><td><textarea name=e_ncontent id=e_ncontent cols="50" rows="10"><%=d%></textarea>
   <textarea hidden="" name="result" id="result" rows="10" cols="10"></textarea></td>
  </tr>
 </table>
 <table >
 <tr>
   <input type="button" value=수정 onclick="check()"></td>
   <input type="reset" value=취소></td>
  </tr>
  </table>
</form>


</body>
</html>