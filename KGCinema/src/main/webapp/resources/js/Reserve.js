/*
$(document).ready(function(){
$("#btnlogin").click(function() {
	if ($("#userid").val() == "") {
		alert("아이디를 입력해주세요.");
		return;
	} else if($("#userpw").val() == "") {
		alert("비밀번호를 입력해주세요.");
		return;
	} else{
	$.ajax({
		url: "login.do",
		data: "userid=" + $("#userid").val() + "&userpw=" + $("#userpw").val(),
		dataType: "json",
		type: "GET",
		success: function(data) {
			if(data.check==1){
				location.href='main.do';
			} else {
				alert("로그인 정보가 잘못되었습니다");
				$("#userpw").focus();
			}
		},
		error: function(data) {
			console.log(data);
		}
	}); }
});
});
*/

// 8명 초과할경우 0으로 초기화
$(document).ready(function() {
	$("#ticketTypeCode_01").change(function() {
		var adult = this.value;
		var youth = $("#ticketTypeCode_02").val();
		if((Number(adult)+Number(youth)) > 8) {
			alert("인원선택은 총 8명까지 가능합니다.");
			this.value = 0;
		}
	});
	$("#ticketTypeCode_02").change(function() {
		var youth = this.value;
		var adult = $("#ticketTypeCode_01").val();
		if((Number(youth)+Number(adult)) > 8) {
			alert("인원선택은 총 8명까지 가능합니다.");
			this.value = 0;
		}
	});
});




var BookingSeatDatas = {
		checkSeat: function(data) {
			var adult = $("#ticketTypeCode_01").val();
			var youth = $("#ticketTypeCode_02").val();
			if((Number(youth)+Number(adult)) < 1) {
				alert("인원을 먼저 선택해주세요.");
				return;
			} else {
				alert("하이");
				
			        $(data).toggleClass("seat_selected");
			     
				 return;
			}
			alert($(data).attr("seatgroup"));
			alert($(data).attr("seatno"));
			var seatgroup = $(data).attr("seatgroup");
			var seatno = $(data).attr("seatno");
		},
		
		seatMouseOver: function(data) {
			var px = $("#"+data).attr("style").split(" ")[5].split("px")[0];
			var prepx = Number(px) - 18;
			var nextpx = Number(px) + 18;
			
			var bean = data.split("_");
			var next = bean[0]+"_"+bean[1]+"_"+(Number(bean[2])+1)+"_"+bean[3];
			var pre = bean[0]+"_"+bean[1]+"_"+(Number(bean[2])-1)+"_"+bean[3];
			var preno = $("#"+pre).attr("seatno");
			var nextno = $("#"+next).attr("seatno");
			
			if(nextno != undefined) {
				var nextcheck = $("#"+next).attr("style").split(" ")[5].split("px")[0];
				if(nextpx == nextcheck) {
					$("#"+next).addClass("seat_selected_hover");
				} else {
					$("#"+pre).addClass("seat_selected_hover");
				}
			} else if(preno != undefined) {
				var precheck = $("#"+pre).attr("style").split(" ")[5].split("px")[0];
				if(prepx == precheck) {
					$("#"+pre).addClass("seat_selected_hover");
				}
			}
			
			$("#"+data).addClass("seat_selected_hover");
		},
		
		seatMouseOut: function(data) {
			var px = $("#"+data).attr("style").split(" ")[5].split("px")[0];
			var prepx = Number(px) - 18;
			var nextpx = Number(px) + 18;
			
			var bean = data.split("_");
			var next = bean[0]+"_"+bean[1]+"_"+(Number(bean[2])+1)+"_"+bean[3];
			var pre = bean[0]+"_"+bean[1]+"_"+(Number(bean[2])-1)+"_"+bean[3];
			var preno = $("#"+pre).attr("seatno");
			var nextno = $("#"+next).attr("seatno");
			
			if(nextno != undefined) {
				var nextcheck = $("#"+next).attr("style").split(" ")[5].split("px")[0];
				if(nextpx == nextcheck) {
					$("#"+next).removeClass("seat_selected_hover");
				} else {
					$("#"+pre).removeClass("seat_selected_hover");
				}
			} else if(preno != undefined) {
				var precheck = $("#"+pre).attr("style").split(" ")[5].split("px")[0];
				if(prepx == precheck) {
					$("#"+pre).removeClass("seat_selected_hover");
				}
			}
			
			$("#"+data).removeClass("seat_selected_hover");
		}
}





