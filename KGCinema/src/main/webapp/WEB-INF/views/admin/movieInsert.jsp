<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movieInsert.jsp</title>
</head>

<script type="text/javascript">
	function check() {
		var str = document.getElementById("textarea").value;
		document.getElementById("temp").value = str.replace(/(?:\r\n|\r|\n)/g, '<br/>');
		document.adminform.submit();
	}
</script>

<body>
<form name="adminform" action="movieInsert.do" enctype="multipart/form-data" method="post">
 <table>
  <tr>
   <th>등록항목</th> <th>등록내용</th>
  </tr>
  <tr>
   <td>제목</td><td><input type="text" name=title></td>
  </tr>
  <tr>
   <td>부제</td><td><input type="text" name=subtitle></td>
  </tr>
  <tr>
   <td>등급</td><td><input type="text" name=grade></td>
  </tr>
  <tr>
   <td>타입</td><td><input type="text" name=type></td>
  </tr>
  <tr>
   <td>개봉일</td><td><input type="text" name=premiere placeholder="yyyy-mm-dd"></td>
  </tr>
  <tr>
   <td>감독</td><td><input type="text" name=director></td>
  </tr>
  <tr>
   <td>배우</td><td><input type="text" name=actor></td>
  </tr>
  <tr>
   <td>장르</td><td><input type="text" name=genre></td>
  </tr>
  <tr>
   <td>줄거리</td><td><textarea name="textarea" id="textarea" rows="15" cols="85"></textarea>
  <textarea hidden="" name="story" id="temp" rows="10" cols="10"></textarea></td>
  </tr>
  <tr>
   <td>포스터</td><td><input type="file" name=poster></td>
  </tr>
  <tr>
   <td>스틸컷1</td><td><input type="file" name=steal1></td>
  </tr>
  <tr>
   <td>스틸컷2</td><td><input type="file" name=steal2></td>
  </tr>
  <tr>
   <td>스틸컷3</td><td><input type="file" name=steal3></td>
  </tr>
  <tr>
   <td>스틸컷4</td><td><input type="file" name=steal4></td>
  </tr>
  <tr>
   <td>스틸컷5</td><td><input type="file" name=steal5></td>
  </tr>
  
 </table>
 <table >
 <tr>
   <input type="button" value=등록 onclick="check();"></td>
   <input type="reset" value=취소></td>
  </tr>
  </table>
</form>


</body>
</html>