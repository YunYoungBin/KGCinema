<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movieEdit.jsp</title>
</head>
<jsp:include page="admin_top.jsp"></jsp:include>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>


<body>


<form name="adminform" action="movieEditSave.do" method="post" enctype="multipart/form-data">
 <table>
  <tr>
   <th>수정항목</th> <th>수정내용</th>
  </tr>
  <tr>
   <td><input type="hidden" name=ed_nno value="${bean.no}"></td>
  </tr>
  <tr>
   <td>제목</td><td><input type="text" name=ed_title value="${bean.title}"></td>
  </tr>
  <tr>
   <td>부제</td><td><input type="text" name=ed_subtitle value="${bean.subtitle}"></td>
  </tr>
  <tr>
   <td>등급</td><td><input type="text" name=ed_grade value="${bean.grade}"></td>
  </tr>
  <tr>
   <td>타입</td><td><input type="text" name=ed_type value="${bean.type}"></td>
  </tr>
  <tr>
   <td>개봉일</td><td><input type="text" name=ed_premiere value="${bean.premiere}"></td>
  </tr>
  <tr>
   <td>감독</td><td><input type="text" name=ed_director value="${bean.director}"></td>
  </tr>
  <tr>
   <td>배우</td><td><input type="text" name=ed_actor value="${bean.actor}"></td>
  </tr>
  <tr>
   <td>장르</td><td><input type="text" name=ed_genre value="${bean.genre}"></td>
  </tr>
  <tr>
   <td>줄거리</td><td><input type="text" name=ed_story value="${bean.story}"></td>
  </tr>
  <tr>
   <td>포스터</td>
   <td>

    <img id="preview" class="img-circle pull-left image_width" name="sujung_img" width="250" height="250" src="<%=request.getContextPath()%>/storage/${bean.poster}">

   </td>
   <td><input type="file" name="ed_poster" id="file">
   <input type="hidden" name="ed_poster2"  value="${bean.poster}">
   
   </td>
  </tr>
  <tr>
   <td>스틸컷1</td>
   <td>
    <img id="preview2" class="img-circle pull-left image_width" name="sujung_img" width="250" height="250" src="<%=request.getContextPath()%>/storage/${bean.steal1}">
   </td>
   <td>
    <input type="file" name="ed_steal1" id="file2" >
     <input type="hidden" name="ed_steal11"  value="${bean.steal1}">
   </td>
  </tr>
  <tr>
   <td>스틸컷2</td>
   <td>
    <img id="preview3" class="img-circle pull-left image_width" name="sujung_img" width="250" height="250" src="<%=request.getContextPath()%>/storage/${bean.steal2}">
   </td>
   <td>
    <input type="file" name="ed_steal2" id="file3">
    <input type="hidden" name="ed_steal22"  value="${bean.steal2}">
   </td>
  </tr>
  <tr>
   <td>스틸컷3</td>
   <td><img id="preview4" class="img-circle pull-left image_width" name="sujung_img" width="250" height="250" src="<%=request.getContextPath()%>/storage/${bean.steal3}">
   </td>
   <td>
    <input type="file" name="ed_steal3" id="file4">
    <input type="hidden" name="ed_steal33"  value="${bean.steal3}">
   </td>
  </tr>
  <tr>
   <td>스틸컷4</td>
   <td><img id="preview5" class="img-circle pull-left image_width" name="sujung_img" width="250" height="250" src="<%=request.getContextPath()%>/storage/${bean.steal4}">
   </td>
   <td>
    <input type="file" name="ed_steal4" id="file5">
    <input type="hidden" name="ed_steal44"  value="${bean.steal4}">
   </td>
  </tr>
  <tr>
   <td>스틸컷5</td>
   <td><img id="preview6" class="img-circle pull-left image_width" name="sujung_img" width="250" height="250" src="<%=request.getContextPath()%>/storage/${bean.steal5}">
   </td>
   <td>
    <input type="file" name="ed_steal5" id="file6">
    <input type="hidden" name="ed_steal55"  value="${bean.steal5}">
   </td>
  </tr>
  
 </table>
 <table >
 <tr>
   <input type="submit" value=수정></td>
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
   
$(document).ready(function() {
   function readURL(input) {
       if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function (e) {
               $('#preview2').attr('src', e.target.result);
               $('#preview2').attr('name', escape(e.name));
               $('#preview2').css({'width' : '250px'});
               $('#preview2').css({'height' : '250px'});
           }
           reader.readAsDataURL(input.files[0]);
       }
   }

   $("#file2").change(function () {
       readURL(this);
   });
   
   });
$(document).ready(function() {
   function readURL(input) {
       if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function (e) {
               $('#preview3').attr('src', e.target.result);
               $('#preview3').attr('name', escape(e.name));
               $('#preview3').css({'width' : '250px'});
               $('#preview3').css({'height' : '250px'});
           }
           reader.readAsDataURL(input.files[0]);
       }
   }

   $("#file3").change(function () {
       readURL(this);
   });
   
   });
   
$(document).ready(function() {
   function readURL(input) {
       if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function (e) {
               $('#preview4').attr('src', e.target.result);
               $('#preview4').attr('name', escape(e.name));
               $('#preview4').css({'width' : '250px'});
               $('#preview4').css({'height' : '250px'});
           }
           reader.readAsDataURL(input.files[0]);
       }
   }

   $("#file4").change(function () {
       readURL(this);
   });
   
   });   
   
$(document).ready(function() {
   function readURL(input) {
       if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function (e) {
               $('#preview5').attr('src', e.target.result);
               $('#preview5').attr('name', escape(e.name));
               $('#preview5').css({'width' : '250px'});
               $('#preview5').css({'height' : '250px'});
           }
           reader.readAsDataURL(input.files[0]);
       }
   }

   $("#file5").change(function () {
       readURL(this);
   });
   
   });
   
$(document).ready(function() {
   function readURL(input) {
       if (input.files && input.files[0]) {
           var reader = new FileReader();
           reader.onload = function (e) {
               $('#preview6').attr('src', e.target.result);
               $('#preview6').attr('name', escape(e.name));
               $('#preview6').css({'width' : '250px'});
               $('#preview6').css({'height' : '250px'});
           }
           reader.readAsDataURL(input.files[0]);
       }
   }

   $("#file6").change(function () {
       readURL(this);
   });
   
   });

</script>

</body>
</html>