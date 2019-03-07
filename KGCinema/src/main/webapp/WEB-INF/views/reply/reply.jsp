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
				<span id="wordCheckCount">4/100</span>
			</div>
			<form id="movieCommentFrm" onsubmit="return false;">

				<div class="input">
					<div class="rate">

						<div class="star-wrap-critic" id="myStarScore" style="cursor: pointer; width: 125px;">
					        <input id="aa" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점1 괜히봤어요" title="별점1 괜히봤어요">
					        <input id="bb" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점2 기대하진 말아요" title="별점2 기대하진 말아요">
					        <input id="cc" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점3 무난했어요" title="별점3 무난했어요">
					        <input id="dd" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점4 기대해도 좋아요!" title="별점4 기대해도 좋아요!">
					        <input id="ee" type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점5 너무 멋진 영화였어요!" title="별점5 너무 멋진 영화였어요!">
					        <input type="hidden" name="score">
						</div>
						<p class="text-center">무난했어요</p>

					</div>
					<div class="textarea">
						<textarea title="댓글쓰기" name="comment" cols="30" rows="10" maxlength="100" onkeyup="checkWordLenth(this, 100, 'wordCheckCount');"></textarea>
					</div>
					<div class="btn_wrap">
						<button type="submit" class="img_btn movie nowfocus" onclick="MovieComment.regist()">등록</button>
					</div>
				</div>
			</form>
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
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="laevao** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>laevao**</strong>
			</div>
			<div class="dateStarReal">
				<span>19.03.05</span>
				
				<div>

					<span class="small_star2">
					<span class="fill" style="width:80.0%;"><span class="blind">별점4 기대해도 좋아요!</span></span> <!-- 별 그래프 -->
					<!-- <span name="<!%=my_star_name %>" class="fill" style="width:<!%= starScore * 10 %>%;"></span>  --><!-- 별 그래프 -->
					</span>

				</div>

				
				<span class="realView">실관람</span>

			</div>
			<p>
<span class="comment">긴장감 유지되고 나쁘지 않은 결말
종교에 대해 생각해 볼 수있는 내용
이정재 연기도 좋다고 생각</span>
			</p>
			<!-- 한줄평 쓰기// -->
		</div>
		<div class="btn_wrap">

			<div class="recommend" onclick="MovieComment.like('798D28E5-AA3E-4B52-97C1-94826C420787', 'N')">
				<i class="i_recommend" aria-hidden="true"></i>추천<strong>1</strong>
			</div>
			<div class="report" onclick="MovieComment.showReportSpoiler(this);">
				<i class="i_report" aria-hidden="true"></i>신고하기
			</div>
			<div class="btn_edit_wrap" style="display: none;">
				<ul>
					<!-- //TODO 코멘트ID? -->
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '10', '015123', '798D28E5-AA3E-4B52-97C1-94826C420787');" title="스포일러 신고">스포일러 신고</a></li>
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '20', '015123', '798D28E5-AA3E-4B52-97C1-94826C420787');" title="욕설/비방/광고 신고">욕설/비방/광고 신고</a></li>
				</ul>
			</div>

		</div>

	</div>
	<!-- 코멘트 편집 -->
	<div class="cell " style="display: none;">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="laevao** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>laevao**</strong>
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



<div class="row">

	<!-- 반복// -->
	<div class="cell ">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="kkb072609** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>kkb072609**</strong>
			</div>
			<div class="dateStarReal">
				<span>19.03.05</span>
				
				<div>

					<span class="small_star2">
					<span class="fill" style="width:100.0%;"><span class="blind">별점5 너무 멋진 영화였어요!</span></span> <!-- 별 그래프 -->
					<!-- <span name="<!%=my_star_name %>" class="fill" style="width:<!%= starScore * 10 %>%;"></span>  --><!-- 별 그래프 -->
					</span>

				</div>

				
			</div>
			<p>
<span class="comment">이정재 너무 멋있어요. 목소리 연기외모 너무 좋아요.
한번쯤 봐도 좋은영화..하지만 스토리가 왠지 뭔가 부족한 느낌이예요</span>
			</p>
			<!-- 한줄평 쓰기// -->
		</div>
		<div class="btn_wrap">

			<div class="recommend" onclick="MovieComment.like('26F77A20-E8ED-4DC3-A35A-5B923BEB0585', 'N')">
				<i class="i_recommend" aria-hidden="true"></i>추천<strong>0</strong>
			</div>
			<div class="report" onclick="MovieComment.showReportSpoiler(this);">
				<i class="i_report" aria-hidden="true"></i>신고하기
			</div>
			<div class="btn_edit_wrap" style="display: none;">
				<ul>
					<!-- //TODO 코멘트ID? -->
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '10', '015123', '26F77A20-E8ED-4DC3-A35A-5B923BEB0585');" title="스포일러 신고">스포일러 신고</a></li>
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '20', '015123', '26F77A20-E8ED-4DC3-A35A-5B923BEB0585');" title="욕설/비방/광고 신고">욕설/비방/광고 신고</a></li>
				</ul>
			</div>

		</div>

	</div>
	<!-- 코멘트 편집 -->
	<div class="cell " style="display: none;">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="kkb072609** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>kkb072609**</strong>
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
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="dohee1** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>dohee1**</strong>
			</div>
			<div class="dateStarReal">
				<span>19.03.05</span>
				
				<div>

					<span class="small_star2">
					<span class="fill" style="width:80.0%;"><span class="blind">별점4 기대해도 좋아요!</span></span> <!-- 별 그래프 -->
					<!-- <span name="<!%=my_star_name %>" class="fill" style="width:<!%= starScore * 10 %>%;"></span>  --><!-- 별 그래프 -->
					</span>

				</div>

				
			</div>
			<p>
<span class="comment">간간히 눈 못뜨겠더라고요 ㅠ 의미를알고 생각하면 더좋은 작품입니다 근데 전반적인 분위기는 이런걸 잘 못봐서 그런지 무섭고 가슴도좀 답딥하고 그랬어요</span>
			</p>
			<!-- 한줄평 쓰기// -->
		</div>
		<div class="btn_wrap">

			<div class="recommend" onclick="MovieComment.like('86E4BC0A-DCEA-4ADE-B4ED-0F0B8860041A', 'N')">
				<i class="i_recommend" aria-hidden="true"></i>추천<strong>0</strong>
			</div>
			<div class="report" onclick="MovieComment.showReportSpoiler(this);">
				<i class="i_report" aria-hidden="true"></i>신고하기
			</div>
			<div class="btn_edit_wrap" style="display: none;">
				<ul>
					<!-- //TODO 코멘트ID? -->
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '10', '015123', '86E4BC0A-DCEA-4ADE-B4ED-0F0B8860041A');" title="스포일러 신고">스포일러 신고</a></li>
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '20', '015123', '86E4BC0A-DCEA-4ADE-B4ED-0F0B8860041A');" title="욕설/비방/광고 신고">욕설/비방/광고 신고</a></li>
				</ul>
			</div>

		</div>

	</div>
	<!-- 코멘트 편집 -->
	<div class="cell " style="display: none;">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="dohee1** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>dohee1**</strong>
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



<div class="row">

	<!-- 반복// -->
	<div class="cell ">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="wdpk00** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>wdpk00**</strong>
			</div>
			<div class="dateStarReal">
				<span>19.03.05</span>
				
				<div>

					<span class="small_star2">
					<span class="fill" style="width:80.0%;"><span class="blind">별점4 기대해도 좋아요!</span></span> <!-- 별 그래프 -->
					<!-- <span name="<!%=my_star_name %>" class="fill" style="width:<!%= starScore * 10 %>%;"></span>  --><!-- 별 그래프 -->
					</span>

				</div>

				
				<span class="realView">실관람</span>

			</div>
			<p>
<span class="comment">재밌어요</span>
			</p>
			<!-- 한줄평 쓰기// -->
		</div>
		<div class="btn_wrap">

			<div class="recommend" onclick="MovieComment.like('ACA83A96-5930-43DB-B6BD-A303035A19B6', 'N')">
				<i class="i_recommend" aria-hidden="true"></i>추천<strong>0</strong>
			</div>
			<div class="report" onclick="MovieComment.showReportSpoiler(this);">
				<i class="i_report" aria-hidden="true"></i>신고하기
			</div>
			<div class="btn_edit_wrap" style="display: none;">
				<ul>
					<!-- //TODO 코멘트ID? -->
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '10', '015123', 'ACA83A96-5930-43DB-B6BD-A303035A19B6');" title="스포일러 신고">스포일러 신고</a></li>
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '20', '015123', 'ACA83A96-5930-43DB-B6BD-A303035A19B6');" title="욕설/비방/광고 신고">욕설/비방/광고 신고</a></li>
				</ul>
			</div>

		</div>

	</div>
	<!-- 코멘트 편집 -->
	<div class="cell " style="display: none;">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="wdpk00** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>wdpk00**</strong>
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
			<img src="http://imageu.megabox.co.kr/profile/2015/03/30/87/418201-C7FB-4755-A5A7-04819E238CDC.thumb.jpg" alt="1101ba** 프로필사진">
		</div>
		<div class="text">
			<div class="name">
				<strong>1101ba**</strong>
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
<span class="comment">배우분들 연기도 너무 좋았고,
적당한 공포 좋았습니다~~
역시 그 분의 등장은... ㅎ</span>
			</p>
			<!-- 한줄평 쓰기// -->
		</div>
		<div class="btn_wrap">

			<div class="recommend" onclick="MovieComment.like('05D753FA-ECCB-4382-8149-8C69E41380CA', 'N')">
				<i class="i_recommend" aria-hidden="true"></i>추천<strong>0</strong>
			</div>
			<div class="report" onclick="MovieComment.showReportSpoiler(this);">
				<i class="i_report" aria-hidden="true"></i>신고하기
			</div>
			<div class="btn_edit_wrap" style="display: none;">
				<ul>
					<!-- //TODO 코멘트ID? -->
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '10', '015123', '05D753FA-ECCB-4382-8149-8C69E41380CA');" title="스포일러 신고">스포일러 신고</a></li>
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '20', '015123', '05D753FA-ECCB-4382-8149-8C69E41380CA');" title="욕설/비방/광고 신고">욕설/비방/광고 신고</a></li>
				</ul>
			</div>

		</div>

	</div>
	<!-- 코멘트 편집 -->
	<div class="cell " style="display: none;">
		<div class="photo_profile">
			<img src="http://imageu.megabox.co.kr/profile/2015/03/30/87/418201-C7FB-4755-A5A7-04819E238CDC.thumb.jpg" alt="1101ba** 프로필사진">
		</div>
		<div class="text">
			<div class="name">
				<strong>1101ba**</strong>
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



<div class="row">

	<!-- 반복// -->
	<div class="cell ">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="gene01** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>gene01**</strong>
			</div>
			<div class="dateStarReal">
				<span>19.03.05</span>
				
				<div>

					<span class="small_star2">
					<span class="fill" style="width:100.0%;"><span class="blind">별점5 너무 멋진 영화였어요!</span></span> <!-- 별 그래프 -->
					<!-- <span name="<!%=my_star_name %>" class="fill" style="width:<!%= starScore * 10 %>%;"></span>  --><!-- 별 그래프 -->
					</span>

				</div>

				
			</div>
			<p>
<span class="comment">영화가 내포하는 의미를 알면 작품성이 훌륭한 영화라고 생각됩니다. 선과 악의 모호한 경계를 잘 나타내준 것 같아요.
재밌게 잘 봤습니다!</span>
			</p>
			<!-- 한줄평 쓰기// -->
		</div>
		<div class="btn_wrap">

			<div class="recommend" onclick="MovieComment.like('AE009010-AB29-4323-A69B-96DF7D8B1F29', 'N')">
				<i class="i_recommend" aria-hidden="true"></i>추천<strong>2</strong>
			</div>
			<div class="report" onclick="MovieComment.showReportSpoiler(this);">
				<i class="i_report" aria-hidden="true"></i>신고하기
			</div>
			<div class="btn_edit_wrap" style="display: none;">
				<ul>
					<!-- //TODO 코멘트ID? -->
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '10', '015123', 'AE009010-AB29-4323-A69B-96DF7D8B1F29');" title="스포일러 신고">스포일러 신고</a></li>
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '20', '015123', 'AE009010-AB29-4323-A69B-96DF7D8B1F29');" title="욕설/비방/광고 신고">욕설/비방/광고 신고</a></li>
				</ul>
			</div>

		</div>

	</div>
	<!-- 코멘트 편집 -->
	<div class="cell " style="display: none;">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="gene01** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>gene01**</strong>
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
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="sena10** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>sena10**</strong>
			</div>
			<div class="dateStarReal">
				<span>19.03.05</span>
				
				<div>

					<span class="small_star2">
					<span class="fill" style="width:80.0%;"><span class="blind">별점4 기대해도 좋아요!</span></span> <!-- 별 그래프 -->
					<!-- <span name="<!%=my_star_name %>" class="fill" style="width:<!%= starScore * 10 %>%;"></span>  --><!-- 별 그래프 -->
					</span>

				</div>

				
				<span class="realView">실관람</span>

			</div>
			<p>
<span class="comment">굿 굿</span>
			</p>
			<!-- 한줄평 쓰기// -->
		</div>
		<div class="btn_wrap">

			<div class="recommend" onclick="MovieComment.like('AB81ABE7-5A4E-4AEA-91E7-EF4C11F82BB2', 'N')">
				<i class="i_recommend" aria-hidden="true"></i>추천<strong>0</strong>
			</div>
			<div class="report" onclick="MovieComment.showReportSpoiler(this);">
				<i class="i_report" aria-hidden="true"></i>신고하기
			</div>
			<div class="btn_edit_wrap" style="display: none;">
				<ul>
					<!-- //TODO 코멘트ID? -->
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '10', '015123', 'AB81ABE7-5A4E-4AEA-91E7-EF4C11F82BB2');" title="스포일러 신고">스포일러 신고</a></li>
					<li><a href="javascript:void(0);" onclick="MovieComment.checkReportSpoiler(this, '20', '015123', 'AB81ABE7-5A4E-4AEA-91E7-EF4C11F82BB2');" title="욕설/비방/광고 신고">욕설/비방/광고 신고</a></li>
				</ul>
			</div>

		</div>

	</div>
	<!-- 코멘트 편집 -->
	<div class="cell " style="display: none;">
		<div class="photo_profile">
			<img src="http://image2.megabox.co.kr/mop/home/user/profile_m.png" alt="sena10** 프로필사진 없음">
		</div>
		<div class="text">
			<div class="name">
				<strong>sena10**</strong>
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