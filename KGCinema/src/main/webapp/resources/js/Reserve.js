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



inwon = 0;
selInwon = 0;
seat_html = "";

var BookingSeatDatas = {
		checkSeat: function(data) {
			var seat_html = "";
			var adult = $("#ticketTypeCode_01").val();
			var youth = $("#ticketTypeCode_02").val();
			inwon = Number(adult) + Number(youth);
			
			if(inwon < 1) {
				alert("인원을 먼저 선택해주세요.");
				return;
			} else if(inwon - selInwon <= 0) {
				alert("모두 선택하였습니다");
				return;
			} else if(inwon - selInwon == 1) {
			    $(data).attr("class","seat_selected");
			    $(data).attr("title",$(data).attr("seatgroup")+$(data).attr("seatno")+"(선택됨)");
			    $(data).attr("onmouseover","");
			    $(data).attr("onmouseout","");
			    $(data).attr("onclick","BookingSeatDatas.deselectSeat(\""+$(data).attr("seatgroup")+"\","+"\""+$(data).attr("seatno")+"\")");
			    $(data).attr("onkeyup","");
			    $(data).attr("onblur","");
			    $(data).attr("onkeypress","");
			    selInwon += 1;
			    // <li data-seat-num="A1">A1</li>
			    
			    seat_html += '<li data-seat-num="A2">A2</li>';
			    $("#selectedSeatNumbers1").html(seat_html);
				return;
			} else if(inwon - selInwon != 1) {
				var px = $(data).attr("style").split(" ")[5].split("px")[0];
				var prepx = Number(px) - 18;
				var nextpx = Number(px) + 18;
				
				var bean = $(data).attr("id").split("_");
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
				} else {
					$("#"+data).addClass("seat_selected_hover");
					selInwon += 1;					
				}
			}
			alert($(data).attr("seatgroup"));
			alert($(data).attr("seatno"));
			var seatgroup = $(data).attr("seatgroup");
			var seatno = $(data).attr("seatno");
		},
		
		seatMouseOver: function(data) {
			var adult = $("#ticketTypeCode_01").val();
			var youth = $("#ticketTypeCode_02").val();
			inwon = Number(adult) + Number(youth);
			if(inwon < 1) {
				return;
			} else if(inwon - selInwon <= 0) {
				return;
			} else if(inwon - selInwon == 1) {
				$("#"+data).addClass("seat_selected_hover");
			} else if(inwon - selInwon != 1) {
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
			}
			
			
			
			
		},
		
		seatMouseOut: function(data) {
			var adult = $("#ticketTypeCode_01").val();
			var youth = $("#ticketTypeCode_02").val();
			inwon = Number(adult) + Number(youth);
			if(inwon < 1) {
				return;
			} else if(inwon - selInwon <= 0) {
				return;
			} else if(inwon - selInwon == 1) {
				$("#"+data).removeClass("seat_selected_hover");
			} else if(inwon - selInwon != 1) {
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
		},
		
		deselectSeat: function(group, no) {
			
		}
}


function reserveCheck() {
	var theater = document.getElementById("theaterTemp").value;
	var scrno = document.getElementById("scrnoTemp").value;
	var start = document.getElementById("timeTemp").value;
	var test = $("#seat_A_1_10").attr("class");

	$.ajax({
		url: "seatReserveCheck.do",
		data: "theater=" + $("#theaterTemp").val() + "&scrno=" + $("#scrnoTemp").val()+"&start="+ $("#timeTemp").val(),
		dataType: "json",
		type: "GET",
		success: function(data) {
			var reserveString = data.reserveSeat;
			var reserveSplit = reserveString.split(",");
			for(var i=0; i<reserveSplit.length-1; i++) {
				var group = reserveSplit[i].substring(0,1);
				var no = reserveSplit[i].substring(1);
				$("#seat_"+group+"_"+no+"_10").attr("title",group+no+"(선택불가)");
				$("#seat_"+group+"_"+no+"_10").attr("class","seat_done");
				$("#seat_"+group+"_"+no+"_10").attr("onmouseover","");
				$("#seat_"+group+"_"+no+"_10").attr("onmouseout","");
				$("#seat_"+group+"_"+no+"_10").attr("onclick","");
				$("#seat_"+group+"_"+no+"_10").attr("onkeyup","");
				$("#seat_"+group+"_"+no+"_10").attr("onblur","");
				$("#seat_"+group+"_"+no+"_10").attr("onkeypress","");
			}
		}
	})
}


