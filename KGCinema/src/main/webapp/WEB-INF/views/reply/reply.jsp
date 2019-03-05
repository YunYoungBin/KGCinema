<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EventList</title>
</head>
<style>
body {
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
    margin: 49px 0 0 0;
    padding: 0;
}
div {
	display:block;
}
img {
    vertical-align: middle;
}
form {
    display: block;
    margin-top: 0em;
}
input {
    width: 200px;
    border: 1px solid #d9d9d9;
    line-height: 26px;
    height: 26px;
    background-color: #f8f8f8;
    font-size: 12px;
    color: #333;
    text-indent: 14px;
    vertical-align: middle;
}
ul, ol, dl, li, p {
    padding: 0;
    margin: 0;
    list-style: none;
}
textarea {
    display: block;
    width: 100%;
    padding: 10px;
    border: 1px solid #d9d9d9;
    background-color: #f8f8f8;
    font-size: 12px;
    line-height: 21px;
    color: #333;
}
.popup_box {
 	margin-bottom: 60px;
}
#movie_detail h3{
    padding: 0;
    background: none;
}
.popup_box h3 {
    margin: 0 0 15px 0;
    font-size: 18px;
    color: #333;
}
.popup_box h3 span {
    color: #666;
    font-size: 14px;
}
.write_wrap {
    overflow: hidden;
    margin-bottom: 30px;
} 
.write_wrap .photo_profile {
    float: left;
    padding-top: 58px;
}
.photo_profile img {
    position: relative;
    width: 56px;
    height: 56px;
    display: block;
    -webkit-border-radius: 30px;
    -moz-border-radius: 30px;
    -ms-border-radius: 30px;
    -o-border-radius: 30px;
    border-radius: 30px;
    border: 1px solid #ccc;
    behavior: url(PIE.htc);
}
.write_wrap .write {
    width: 724px;
    float: right;
}
.write_wrap .write .name {
    overflow: hidden;
    margin: 7px 0 10px 0;
}
.write_wrap .write .name span:first-child {
    float: left;
    font-size: 18px;
    color: #333;
}
.write_wrap .write .name span {
    float: right;
    color: #666;
    font-size: 14px;
}
.write_wrap .write .input {
    overflow: hidden;
    height: 86px;
    border: 1px solid #e1e1e1;
}
.write_wrap .write .input .rate {
    width: 158px;
}
.write_wrap .write .input>div {
    float: left;
}
.write_wrap .write .input .rate .star-wrap-critic {
    margin: 22px auto 9px auto;
}
.star-wrap-critic input {
    background: transparent;
    border: 0;
    width: 21px;
    height: 20px;
}
.write_wrap .write .input .rate p {
    text-align: center;
    font-size: 12px;
    color: #666;
}
.text-center {
    text-align: center;
}
.write_wrap .write .input .textarea {
    width: 480px;
}
.write_wrap .write .input>div {
    float: left;
}
.write_wrap .write .input .textarea textarea {
    height: 84px;
    font-size: 14px;
    border: none;
    border-left: 1px solid #e1e1e1;
    border-right: 1px solid #e1e1e1;
    background-color: #fff;
}
.write_wrap .write .input .btn_wrap {
    width: 84px;
    height: 100%;
}
.write_wrap .write .input>div {
    float: left;
}
.write_wrap .write .input .btn_wrap button[type=submit] {
    width: 100%;
    height: 100%;
    vertical-align: middle;
    background-position: -600px -100px;
}
.img_btn.movie {
    background-image: url(http://image2.megabox.co.kr/mop/home/btns/btn_movie.png);
}
.img_btn {
    display: block;
    overflow: hidden;
    text-indent: -9999px;
    border: none;
    background-repeat: no-repeat;
    background: transparent;
    vertical-align: middle;
}
.mb15 {
    margin-bottom: 15px;
}
.pull-right {
    float: right;
}
.sort {
    overflow: hidden;
    padding-right: 6px;
}
.sort li {
    float: left;
    padding-left: 10px;
    margin-left: 10px;
    border-left: 1px solid #ddd;
    line-height: 12px;
}
.sort li:first-child {
    padding: 0;
    margin: 0;
    border: none;
}
.sort li a {
    color: #666;
    text-decoration: none;
    font-size: 12px;
}
.c_mint {
    color: #198591 !important;
}
.list .item_2block {
    clear: both;
    overflow: hidden;
    width: 100%;
    display: table;
    border-top: 1px solid #f0f0f0;
    border-bottom: 1px solid #f0f0f0;
}
.list .item_2block .row {
    display: table-row;
    height: 100%;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}
.list .item_2block .row .cell:first-child {
    border-right: 1px solid #f0f0f0;
}
.list .item_2block .row .cell {
    display: table-cell;
    vertical-align: top;
    width: 50%;
    height: 100%;
    border-bottom: 1px solid #f0f0f0;
    overflow: hidden;
    padding: 20px 20px;
    position: relative;
}
.my_list {
    border-top: 1px solid #ccc !important;
    border-bottom: 1px solid #ccc !important;
    background-color: #f2f2f2;
}
.list .item_2block .row .my_list {
    border-right: 1px solid #ccc !important;
}
.list .item_2block .row .cell>div {
    float: left;
}
.list .item_2block .row .cell .photo_profile {
    width: 80px;
}

.list .item_2block .row .cell .text {
    width: 77%;
    position: relative;
}
.list .item_2block .row .cell .text .name {
    margin-bottom: 1px;
    overflow: hidden;
}
.list .item_2block .row .cell .text .name strong {
    font-size: 18px;
    line-height: 18px;
    color: #503396;
    display: inline-block;
}
.list .item_2block .row .cell .text .dateStarReal span {
    font-size: 12px;
    color: #666;
    display: inline-block;
    margin-right: 6px;
    float: left;
}
.list .item_2block .row .cell .text .dateStarReal .small_star2 {
    display: block;
    position: relative;
    width: 73px;
    height: 12px;
    background: url(http://image2.megabox.co.kr/mop/home/star_s.png) 0 -12px no-repeat;
    margin-top: 2px;
}
.list .item_2block .row .cell .text .dateStarReal .small_star2 .fill {
    position: absolute;
    width: 73px;
    height: 12px;
    background: url(http://image2.megabox.co.kr/mop/home/star_s.png) 0 0 no-repeat;
}
.list .item_2block .row .cell .text>p {
    color: #333;
    font-size: 14px;
    line-height: 20px;
    margin: 4px 0 35px;
}
.list .item_2block .my_review {
    width: 59px;
    height: 22px;
    background-position: -60px 0;
    margin-right: 3px;
}
.list .item_2block .btn_modify, .list .item_2block .btn_delete, .list .item_2block .my_review, .list .item_2block .btn_cancle, .list .item_2block .btn_edit {
    display: inline-block;
    overflow: hidden;
    width: 18px;
    height: 18px;
    background: #fff url(http://image2.megabox.co.kr/mop/home/btns/bg_sm_btns.png) 0 0 no-repeat;
    border: none;
    text-indent: -9999px;
    vertical-align: middle;
    margin-top: -5px;
}
.list .item_2block .row .cell .btn_wrap {
    position: absolute;
    bottom: 20px;
    left: 100px;
    width: 314.33px;
    text-align: right;
}
.list .item_2block .row .cell .btn_wrap div.recommend {
    float: left;
    cursor: pointer;
    font-size: 12px;
    margin-right: 8px;
}
.list .item_2block .row .cell .btn_wrap div.recommend .i_recommend {
    background-image: url(http://image2.megabox.co.kr/mop/home/moviePost/moviePost_icon.png) !important;
    background-position: -242px -50px;
    background-repeat: no-repeat;
    overflow: hidden;
    display: inline-block;
    width: 16px;
    height: 15px;
    vertical-align: middle;
    margin: -1px 4px 0 0;
}
.list .item_2block .row .cell .btn_wrap div.recommend strong {
    padding-left: 5px;
    font-weight: bold;
    color: #666;
}
.list .item_2block .btn_modify {
    background-position: -30px 0;
}
.list .item_2block .btn_delete {
    background-position: 0 0;
}
.list .item_2block .row .cell .btn_wrap .report {
    float: left;
    font-size: 12px;
    color: #999;
    cursor: pointer;
}
.blind {
    display: block;
    overflow: hidden;
    position: absolute;
    top: -1000em;
    left: -1000em;
}
.dateStarReal{
	height:17px;
}
</style>

<script type="text/javascript">

</script>
  
<body>
<div class="popup_box row5">
	<h3>한줄평 <span id="movieCommentTotalCount">(1278)</span></h3>

	<!-- 한줄평 쓰기// -->
	<div class="write_wrap">
		<div class="photo_profile">

				<img src="http://imageu.megabox.co.kr/profile/2019/01/04/2F/4A8D2A-751D-4ABB-AB12-05BEA12030D8.thumb.jpg" alt="윤영빈 프로필사진">


		</div>
		<div class="write">
			<div class="name">

				<span>윤영빈</span>
				<span id="wordCheckCount">4/100</span>
			</div>
			<form id="movieCommentFrm" onsubmit="return false;">

				<div class="input">
					<div class="rate">

						<div class="star-wrap-critic" id="myStarScore" style="cursor: pointer; width: 125px;"><input type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_on.png" alt="별점1 괜히봤어요" title="별점1 괜히봤어요">&nbsp;<input type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_on.png" alt="별점2 기대하진 말아요" title="별점2 기대하진 말아요">&nbsp;<input type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_on.png" alt="별점3 무난했어요" title="별점3 무난했어요">&nbsp;<input type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점4 기대해도 좋아요!" title="별점4 기대해도 좋아요!">&nbsp;<input type="image" src="http://image2.megabox.co.kr/mop/home/star_mid_off.png" alt="별점5 너무 멋진 영화였어요!" title="별점5 너무 멋진 영화였어요!"><input type="hidden" name="starScore" value="3"></div>
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

</div>

</body>
</html>