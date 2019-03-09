<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EventList</title>
<link rel="stylesheet" type="text/css" href="./resources/css/reply.css">
</head>
<script type="text/javascript">

</script>
  
<body>
<div class="popup_box row5">
	<h3>한줄평 <span id="movieCommentTotalCount">(1278)</span></h3>

	<!-- 한줄평 쓰기// -->
	<div class="write_wrap">
		<div class="photo_profile">
		    <c:choose>
            <c:when test="${bean.j_file1 eq '' || empty bean.j_file1}">
             <img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="">
            </c:when>
            <c:otherwise>
             <img src="${pageContext.request.contextPath}/resources/storage/${bean.j_file1}" alt="">
            </c:otherwise>
           </c:choose>
		</div>
		<div class="write">
			<div class="name">

				<span>${bean.j_name}</span>
				<span id="wordCheckCount"></span>
			</div>
		  <c:choose>
 		   <c:when test="${myreply.dr_id eq '' || empty myreply.dr_id}">
				<div class="input">
					<div class="rate_insert">
						<div class="star-wrap-critic" id="myStarScore" style="cursor: pointer; width: 125px;">
					        <input id="aa" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점1 괜히봤어요" value="1">
					        <input id="bb" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점2 기대하진 말아요" value="2">
					        <input id="cc" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점3 무난했어요" value="3">
					        <input id="dd" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점4 기대해도 좋아요!" value="4">
					        <input id="ee" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점5 너무 멋진 영화였어요!" value="5">
						</div>
						<p class="text-center">평점을 입력해주세요</p>

					</div>
					<div class="textarea">
						<textarea title="댓글쓰기" name="comment" cols="30" rows="10" maxlength="100" onkeyup="checkWordLenth(this, 100, 'wordCheckCount');"></textarea>
					</div>
					<div class="btn_wrap">
						<button type="submit" class="img_btn movie nowfocus" onclick="MovieComment.regist()">등록</button>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="input">
					<div class="rate rate_edit">
						<div class="star-wrap-critic" id="myStarScore" style="cursor: pointer; width: 125px;">
					        <input id="aa" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점1 괜히봤어요" value="1">
					        <input id="bb" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점2 기대하진 말아요" value="2">
					        <input id="cc" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점3 무난했어요" value="3">
					        <input id="dd" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점4 기대해도 좋아요!" value="4">
					        <input id="ee" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점5 너무 멋진 영화였어요!" value="5">
						</div>
						<p class="text-center">평점을 입력해주세요</p>

					</div>
					<div class="textarea">
						<textarea title="댓글쓰기" name="comment" cols="30" rows="10" maxlength="100" onkeyup="checkWordLenth(this, 100, 'wordCheckCount');"></textarea>
					</div>
					<div class="btn_wrap">
						<button type="submit" class="img_btn movie nowfocus" onclick="MovieComment.regist()">등록</button>
					</div>
				</div>		
			</c:otherwise>
			</c:choose>
		</div>
	</div>
	<!-- //한줄평 쓰기 -->

	<!-- 한줄평 목록// -->
	<div id="movieCommentList" class="list">












<ul class="sort pull-right mb15" style="overflow:visible">
	<li><a href="javascript:void(0)" class="c_mint" onclick="MovieComment.list('createDate')" title="최신순 정렬하기">최신순</a></li>
	<li><a href="javascript:void(0)" class="" onclick="MovieComment.list('likeCount')" title="추천순 정렬하기">추천순</a></li>
	<li><a href="javascript:void(0)" class="" onclick="MovieComment.list('starScore')" title="평점순 정렬하기">평점순</a></li>

</ul>
<div class="item_2block">

<div class="row">

	<!-- 반복// -->
	<div class="cell ">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="rkdekd** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>rkdekd**</strong>
			</div>
			<div class="dateStarReal">
				<span>19.03.05</span>
				
				<div>

					<span class="small_star2">
					<span class="fill" style="width:100.0%;"><span class="blind">별점5 너무 멋진 영화였어요!</span></span> <!-- 별 그래프 -->
					<!-- <span name="<!%=my_star_name %>" class="fill" style="width:<!%= starScore * 10 %>%;"></span>  --><!-- 별 그래프 -->
					</span>

				</div>

				
				<span class="realView">실관람</span>

			</div>
			<p>
<span class="comment">원체 이런 스토리를 좋아해서 전 정말 잘 봤어요!!
그 놈의 욕심과 집착이..

용이 뱀이 되었구나!!</span>
			</p>
			<!-- 한줄평 쓰기// -->
		</div>
		<div class="btn_wrap">

			<div class="recommend" onclick="MovieComment.like('1360122D-7117-4343-8734-8DA509671A11', 'N')">
				<i class="i_recommend" aria-hidden="true"></i>추천<strong>1</strong>
			</div>
			<div class="report" onclick="MovieComment.showReportSpoiler(this);">
				<i class="i_report" aria-hidden="true"></i>신고하기
			</div>
			<div class="btn_edit_wrap" style="display: none;">
				<ul>
					<!-- //TODO 코멘트ID? -->
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '10', '015123', '1360122D-7117-4343-8734-8DA509671A11');" title="스포일러 신고">스포일러 신고</a></li>
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '20', '015123', '1360122D-7117-4343-8734-8DA509671A11');" title="욕설/비방/광고 신고">욕설/비방/광고 신고</a></li>
				</ul>
			</div>

		</div>

	</div>
	<!-- 코멘트 편집 -->
	<div class="cell " style="display: none;">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="rkdekd** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>rkdekd**</strong>
			</div>
			<div class="write_wrap edit_wrap">
				<div class="write2">
					<div class="input">
	
					</div>
				</div>
			</div>
		</div>
	</div>
	
		<!-- 반복// -->
	<div class="cell ">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="rkdekd** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>rkdekd**</strong>
			</div>
			<div class="dateStarReal">
				<span>19.03.05</span>
				
				<div>

					<span class="small_star2">
					<span class="fill" style="width:100.0%;"><span class="blind">별점5 너무 멋진 영화였어요!</span></span> <!-- 별 그래프 -->
					<!-- <span name="<!%=my_star_name %>" class="fill" style="width:<!%= starScore * 10 %>%;"></span>  --><!-- 별 그래프 -->
					</span>

				</div>

				
				<span class="realView">실관람</span>

			</div>
			<p>
<span class="comment">원체 이런 스토리를 좋아해서 전 정말 잘 봤어요!!
그 놈의 욕심과 집착이..

용이 뱀이 되었구나!!</span>
			</p>
			<!-- 한줄평 쓰기// -->
		</div>
		<div class="btn_wrap">

			<div class="recommend" onclick="MovieComment.like('1360122D-7117-4343-8734-8DA509671A11', 'N')">
				<i class="i_recommend" aria-hidden="true"></i>추천<strong>1</strong>
			</div>
			<div class="report" onclick="MovieComment.showReportSpoiler(this);">
				<i class="i_report" aria-hidden="true"></i>신고하기
			</div>
			<div class="btn_edit_wrap" style="display: none;">
				<ul>
					<!-- //TODO 코멘트ID? -->
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '10', '015123', '1360122D-7117-4343-8734-8DA509671A11');" title="스포일러 신고">스포일러 신고</a></li>
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '20', '015123', '1360122D-7117-4343-8734-8DA509671A11');" title="욕설/비방/광고 신고">욕설/비방/광고 신고</a></li>
				</ul>
			</div>

		</div>

	</div>
	<!-- 코멘트 편집 -->
	<div class="cell " style="display: none;">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="rkdekd** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>rkdekd**</strong>
			</div>
			<div class="write_wrap edit_wrap">
				<div class="write2">
					<div class="input">
	
					</div>
				</div>
			</div>
		</div>
	</div>



</div> 



</div>

<!-- //코멘트 편집 -->

	   <ul class="custom-pagination mt25">
       <c:if test="${startpage>10}">
        <li> 
         <a href="eventlist.do?pageNum=${pagecount-pagecount+1}" class="img_btn customer first" title="처음 페이지 보기">
          <span class="blind">처음 페이지</span>
         </a>         
        </li>
       </c:if>
        
       <c:if test="${startpage>10}">
        <li>
         <a href="eventlist.do?pageNum=${startpage-10}" class="img_btn customer prev" title="이전 10페이지 보기">
          <span class="blind">이전 10페이지</span>
         </a>         
        </li>
       </c:if> 

       
       <c:forEach var="i" begin="${startpage}" end="${endpage}">
        <c:choose>
    	  <c:when test="${i==pageNUM}"> 
    	    <li><a class="active" href="eventlist.do?pageNum=${i}${returnpage}">${i}</a></li>
    	  </c:when>
    	  <c:otherwise>
    	    <li><a href="eventlist.do?pageNum=${i}${returnpage}">${i}</a></li>
    	  </c:otherwise>
    	</c:choose>
       </c:forEach>
        
        
    
       <c:if test="${endpage<pagecount}">  
        <li>
         <a href="eventlist.do?pageNum=${startpage+10}" class="img_btn customer next" title="다음 10페이지 보기">
          <span class="blind">다음 10페이지</span>
         </a>         
        </li>
       </c:if> 
         
       <c:if test="${endpage<pagecount}">  
        <li>
         <a href="eventlist.do?pageNum=${pagecount}" class="img_btn customer last" title="마지막 페이지 보기">
          <span class="blind">마지막 페이지</span>
         </a>         
        </li>
        </c:if>    
       </ul>

</div>
</div>
</body>
</html>