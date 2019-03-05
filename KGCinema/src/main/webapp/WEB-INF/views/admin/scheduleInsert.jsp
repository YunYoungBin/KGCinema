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
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</head>
<style>
 *{margin:0;padding:0;}
</style>
<script type="text/javascript">
$(document).on('ready', function() {
	$("#theater").change(function() {
		var s_theater = this.value;
		alert(s_theater);
		
		$.ajax({
			url:"scrNo.do",
			data: "s_theater="+s_theater,
			dataType: "json",
			type: "GET",
			success: function(data){
				$("#scrno #scrno_option").eq(0).text(data.scrno);

			},//sucess end
			error: function(data){
				alert("실패"+data.theater);
				console.log(data);
			}
		
		});//eventdetail end
	});
});
</script>

<body>

<form name="scheduleform" action="scheduleinsert.do">
 <table>
  
  <tr>
   <td>지점</td><td>   
    <select id="theater" name="theater">
     <option></option>
    <c:forEach var="t" items="${tselect}"> 
     <option>${t.t_theater}</option>
    </c:forEach> 
    </select>
   </td>
  </tr>
  <tr>
   <td>상영관</td><td>
    <select id="scrno" name="scrno">
     <option></option>
     <c:forEach var="sr" items="${srselect}">     
      <option id="scrno_option" value="${sr.s_scrno}">${sr.s_scrno}</option>
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