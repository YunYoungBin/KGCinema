
function cancel(data) {
	
	$.ajax({
		url: "cancel.do",
		data: "rno=" + $(data).attr("r_no"),
		dataType: "json",
		type: "GET",
		success: function(data) {
			if(data.check==1) {
				location.href='main.do';
			} else {
				alert("로그인 정보가 잘못되었습니다.");
				$("#userpw").focus();
			}
		},
		error: function(data) {
			console.log(data);
		}
	});
}
// 8명 초과할경우 0으로 초기화
$(document).ready(function() {
	$("#ticketTypeCode_01").change(function() {
		var adult = this.value;
		var youth = $("#ticketTypeCode_02").val();
		if((Number(adult)+Number(youth)) > 8) {
			alert("인원선택은 총 8명까지 가능합니다.");
			this.value = 0;
		} else if((Number(adult)+Number(youth)) < selInwon) {
			location.reload();
		} else {
			if(adult != 0 && youth != 0) {
				inwon_html = '<span>일반 '+adult+'명&nbsp;</span>';
				inwon_html += '<span>청소년 '+youth+'명&nbsp;</span>';
				$("#countSelectedByTicket").html(inwon_html);
				price = adult * 10000;
				price += youth * 8000;
				inwonStr = '일반 '+adult+'명, 청소년 '+youth+'명';
			} else if(adult == 0 && youth != 0) {
				inwon_html = '<span>청소년 '+youth+'명&nbsp;</span>';
				$("#countSelectedByTicket").html(inwon_html);
				price = youth * 8000;
				inwonStr = '청소년 '+youth+'명';
			} else if(youth == 0 && adult !=0) {
				inwon_html = '<span>일반 '+adult+'명&nbsp;</span>';
				$("#countSelectedByTicket").html(inwon_html);
				price = adult * 10000;
				inwonStr = '일반 '+adult+'명';
			} else {
				inwon_html = '';
				$("#countSelectedByTicket").html(inwon_html);
				price = 0;
			}
		    price_html = price.toString();
		    if(price >= 1000 && price < 10000) {
		    	price_html = price_html.substring(0,1) + "," + price_html.substring(1);
		    } else if(price >= 10000 && price < 100000) {
		    	price_html = price_html.substring(0,2) + "," + price_html.substring(2);
		    } else if(price >= 100000 && price < 1000000) {
		    	price_html = price_html.substring(0,3) + "," + price_html.substring(3);
		    }
		    $("#ticketTotalPrice").html(price_html);
		    
		    $("#r_inwon").attr("value",inwonStr);
		    $("#r_price").attr("value",price);
		}
	});
	$("#ticketTypeCode_02").change(function() {
		var youth = this.value;
		var adult = $("#ticketTypeCode_01").val();
		if((Number(youth)+Number(adult)) > 8) {
			alert("인원선택은 총 8명까지 가능합니다.");
			this.value = 0;
		} else if((Number(adult)+Number(youth)) < selInwon) {
			location.reload();
		} else {
			if(adult != 0 && youth != 0) {
				inwon_html = '<span>일반 '+adult+'명&nbsp;</span>';
				inwon_html += '<span>청소년 '+youth+'명&nbsp;</span>';
				$("#countSelectedByTicket").html(inwon_html);
				price = adult * 10000;
				price += youth * 8000;
				inwonStr = '일반 '+adult+'명, 청소년 '+youth+'명';
			} else if(adult == 0 && youth != 0) {
				inwon_html = '<span>청소년 '+youth+'명&nbsp;</span>';
				$("#countSelectedByTicket").html(inwon_html);
				price = youth * 8000;
				inwonStr = '청소년 '+youth+'명';
			} else if(youth == 0 && adult != 0) {
				inwon_html = '<span>일반 '+adult+'명&nbsp;</span>';
				$("#countSelectedByTicket").html(inwon_html);
				price = adult * 10000;
				inwonStr = '일반 '+adult+'명';
			} else {
				inwon_html = '';
				$("#countSelectedByTicket").html(inwon_html);
				price = 0;
			}
		    price_html = price.toString();
		    if(price >= 1000 && price < 10000) {
		    	price_html = price_html.substring(0,1) + "," + price_html.substring(1);
		    } else if(price >= 10000 && price < 100000) {
		    	price_html = price_html.substring(0,2) + "," + price_html.substring(2);
		    } else if(price >= 100000 && price < 1000000) {
		    	price_html = price_html.substring(0,3) + "," + price_html.substring(3);
		    }
		    $("#ticketTotalPrice").html(price_html);
		    
		    $("#r_inwon").attr("value",inwonStr);
		    $("#r_price").attr("value",price);
		}
	});
});

