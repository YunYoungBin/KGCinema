<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movieSlideInsert.jsp</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
</head>
<body>
<form name="adminform" action="mvsinsert.do"  enctype="multipart/form-data" method="post">
 <table> 
 
  <tr>
   <th>슬라이드 이미지 추가(size: 1600 * 600)</th>
  </tr>

  <tr>
   <td>
    <img id="preview" class="img-circle pull-left image_width" name="upload_img" width="250" height="250" >
   </td>
   
   <td>
    <input type="file" name="upload_file" id="file">
   </td>
  </tr>
  
    <tr>
   <th>영화슬라이드 클릭시 나오는 영상추가</th>
  </tr>

  <tr>
   <td>

   </td>
   
   <td>
    <input type="file" name="upload_video" id="file2">
   </td>
  </tr>
    
 </table>
 
 <table>
 <tr>
   <input type="submit" value=등록></td>
   <input type="reset" value=취소></td>
  </tr>
 </table>
</form>

<script>

$(document).ready(function() {
   function readURL(input) {
       if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function (e) {
               $('#preview').attr('src', e.target.result);
               $('#preview').attr('name', escape(e.name));
               $('#preview').css({'width' : '250px'});
               $('#preview').css({'height' : '250px'});
           }
           reader.readAsDataURL(input.files[0]);
       }
   }

   $("#file").change(function () {
       readURL(this);
   });
   
   });
   
</script>


</body>
</html>