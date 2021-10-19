<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buskeround</title>
<!-- Title Icon -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/image/common/title.jpg">

<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>

<!-- font(Logo) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Common/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/MyPage/mypage.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/DatePicker/datepicker.min.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- datepicker -->
<script src="${pageContext.request.contextPath}/assets/js/datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/i18n/datepicker.ko.js"></script>

<!-- sweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!------- header -------->

	<!-- Content -->
	<div class="row" id="contentbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8" id="mypage">
			<div id="mypage-left">
				<!-- aside -->
                <c:import url="/WEB-INF/views/Company/includes/aside.jsp"></c:import>
                <!-------- aside --------->
			</div>
			<div id="mypage-right">
				<div id="mypage-right-header">
					<h5>버스킹존 관리</h5>
				</div>
				<div id="mypage-right-content">
                    <form action="#" method="get">
                    	<input type="hidden" name="bus_date" value=""/>
                    	<input type="hidden" name="date_no" value=""/>
                        <table>
                            <tr>
                                <td class="table-head"><label for="stage-select">장소명</label></td>
                                <td>
	                            	<select name="stage_no" id="stage-select" class="select-box input">
										<c:forEach items="${stageList}" var="stageList" varStatus="status">
											<option value="${stageList.stage_no}">${stageList.stage_name}</option>
										</c:forEach>
									</select>
									
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="datepicker">공연 날짜</label></td>
                                <td>
                                	<div id="datepicker" class="datepicker-here input" data-language='ko'>
                           
                                	</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="requirements">요구 사항</label></td>
                                <td>
                                	<textarea id="requirements" name="requirements" class="input form-control" style= width:395px;height:200px></textarea>
                                </td>
                            </tr>
                            <tr>
                            	<td class="table-head"><label>공연 시간</label></td>
                            	<td id="time-table">
                            		<select name="start_time" class="input input-time">
                            			<option value="00:00">00:00</option><option value="00:30">00:30</option><option value="01:00">01:00</option><option value="01:30">01:30</option><option value="02:00">02:00</option><option value="02:30">02:30</option><option value="03:00">03:00</option><option value="03:30">03:30</option>
                            			<option value="04:00">04:00</option><option value="04:30">04:30</option><option value="05:00">05:00</option><option value="05:30">05:30</option><option value="06:00">06:00</option><option value="06:30">06:30</option><option value="07:00">07:00</option><option value="07:30">07:30</option>
                            			<option value="08:00">08:00</option><option value="08:30">08:30</option><option value="09:00">09:00</option><option value="09:30">09:30</option><option value="10:00">10:00</option><option value="10:30">10:30</option><option value="11:00">11:00</option><option value="11:30">11:30</option>
                            			<option value="12:00">12:00</option><option value="12:30">12:30</option><option value="13:00">13:00</option><option value="13:30">13:30</option><option value="14:00">14:00</option><option value="14:30">14:30</option><option value="15:00">15:00</option><option value="15:30">15:30</option>
                            			<option value="16:00">16:00</option><option value="16:30">16:30</option><option value="17:00">17:00</option><option value="17:30">17:30</option><option value="18:00">18:00</option><option value="18:30">18:30</option><option value="19:00">19:00</option><option value="19:30">19:30</option>
                            			<option value="20:00">20:00</option><option value="20:30">20:30</option><option value="21:00">21:00</option><option value="21:30">21:30</option><option value="22:00">22:00</option><option value="22:30">22:30</option><option value="23:00">23:00</option><option value="23:30">23:30</option><option value="24:00">24:00</option>
                            		</select>
                            		<img class="icon-img" src="${pageContext.request.contextPath}/assets/image/company/icon/from.png">
                            		<select name="end_time" class="input input-time">
                            			<option value="00:00">00:00</option><option value="00:30">00:30</option><option value="01:00">01:00</option><option value="01:30">01:30</option><option value="02:00">02:00</option><option value="02:30">02:30</option><option value="03:00">03:00</option><option value="03:30">03:30</option>
                            			<option value="04:00">04:00</option><option value="04:30">04:30</option><option value="05:00">05:00</option><option value="05:30">05:30</option><option value="06:00">06:00</option><option value="06:30">06:30</option><option value="07:00">07:00</option><option value="07:30">07:30</option>
                            			<option value="08:00">08:00</option><option value="08:30">08:30</option><option value="09:00">09:00</option><option value="09:30">09:30</option><option value="10:00">10:00</option><option value="10:30">10:30</option><option value="11:00">11:00</option><option value="11:30">11:30</option>
                            			<option value="12:00">12:00</option><option value="12:30">12:30</option><option value="13:00">13:00</option><option value="13:30">13:30</option><option value="14:00">14:00</option><option value="14:30">14:30</option><option value="15:00">15:00</option><option value="15:30">15:30</option>
                            			<option value="16:00">16:00</option><option value="16:30">16:30</option><option value="17:00">17:00</option><option value="17:30">17:30</option><option value="18:00">18:00</option><option value="18:30">18:30</option><option value="19:00">19:00</option><option value="19:30">19:30</option>
                            			<option value="20:00">20:00</option><option value="20:30">20:30</option><option value="21:00">21:00</option><option value="21:30">21:30</option><option value="22:00">22:00</option><option value="22:30">22:30</option><option value="23:00">23:00</option><option value="23:30">23:30</option><option value="24:00">24:00</option>
                            		</select>
                            		<img class="icon-img addBtn" src="${pageContext.request.contextPath}/assets/image/company/icon/add.png">
                            		<div id="timeList"></div>
                            	</td>
                            </tr>
                            <tr>
                            	<td class="table-head"><label>공연 일정</label></td>
                            	<td id="bus_plan">
                            		
                            	</td>
                            </tr>
                        </table>
                        <div class="btn-area">
	                        <input type="button" class="float-end btn btn-danger btn-sm btn-size" id="delBtn" value="삭제">
	                        <button type="submit" class="float-end btn btn-primary btn-sm btn-nm" id="insBtn">저장</button>
                        </div>
                    </form>
                </div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>


	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!------- footer -------->
</body>
<script type="text/javascript">
var available_days = [],
	$picker = $('#datepicker'),
	months = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
	
//datepicker
$picker.datepicker({
	language: 'ko',
	minDate: new Date(), // 최소 날짜 오늘 이후
	
	//선택한 날짜를 가져옴
	onSelect: function(date) {
		console.log(date);
		$("[name='date_no']").val("");
		$("[name='requirements']").val("");
		$("#timeList").empty();
		$("#bus_plan").empty();
		$('option:selected', 'select[name="start_time"]').removeAttr('selected');
		$('option:selected', 'select[name="end_time"]').removeAttr('selected');
		
		var bus_date = date;
		$("[name='bus_date']").val(bus_date);
		
		var busdateVo = {
				stage_no: $("[name='stage_no']").val(),
				bus_date: bus_date
		}
		
		$.ajax({
			url : "${pageContext.request.contextPath }/Company/buskingZoneList",
			type : "post",
			//contentType : "application/json",
			data :  busdateVo,
			//dataType : "json",
			success : function(busdateVo) {
				//성공시 처리해야될 코드 작성
				console.log(busdateVo);
				$("[name='date_no']").val(busdateVo[0].date_no);
				$("[name='requirements']").val(busdateVo[0].requirements);
				
				var st = busdateVo[0].start_time.slice(11);
				var et = busdateVo[0].end_time.slice(11);
				//remove selected one
				$('option:selected', 'select[name="start_time"]').removeAttr('selected');
				$('option:selected', 'select[name="end_time"]').removeAttr('selected');
				//Using the value
				$('select[name="start_time"]').find('option[value="'+st+'"]').attr("selected",true);
				//Using the text
				$('select[name="end_time"]').find('option[value="'+et+'"]').attr("selected",true);
				
				if(busdateVo.length > 1) {
					for(var i=1;i<busdateVo.length;i++) {
						var st = busdateVo[i].start_time.slice(11);
						var et = busdateVo[i].end_time.slice(11);
						
						add(i);
						//Using the value
						$('select[name="start_time"][data-no="'+i+'"]').find('option[value="'+st+'"]').attr("selected",true);
						//Using the text
						$('select[name="end_time"][data-no="'+i+'"]').find('option[value="'+et+'"]').attr("selected",true);
					}
				}
				
				//버스킹 일정 불러오기
				var busplan = {
						date_no : busdateVo[0].date_no,
						stage_no : busdateVo[0].stage_no
				}
				
				$.ajax({
					url : "${pageContext.request.contextPath }/Company/buskingZonePlan",
					type : "post",
					//contentType : "application/json",
					data :  busplan,
					//dataType : "json",
					success : function(result) {
						//성공시 처리해야될 코드 작성
						console.log(result.length);
						var str = '';
						for(var i=0;i<result.length;i++) {
						str +='<div class="input">';
						str +='<span class="label label-default">'+result[i].start_time.substring(10, 16)+'-'+result[i].end_time.substring(10, 16)+'</span>';
						str +='<span class="plan_nickname">'+result[i].nickname+'</span>';
						str +='</div>';
						
						
						}
						$("#bus_plan").append(str);
						
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
});

//버스킹존 데이터 전송
$("form").on("click", "#insBtn", function() {
	event.preventDefault();
	console.log("저장 버튼");
	var start_time = [];
	var end_time = [];
	
	$("[name='start_time']").each(function(index, item){
		start_time.push($(item).val());
		   });
	$("[name='end_time']").each(function(index, item){
		end_time.push($(item).val());
		   });
	
	var objParams = {
			"date_no" : $("[name='date_no']").val(),
			"stage_no": $("[name='stage_no']").val(),
			"bus_date": $("[name='bus_date']").val(),
			"requirements": $("[name='requirements']").val(),
			"startArray": start_time,
			"endArray"  : end_time
	};
	
	console.log(objParams);
	
	$.ajax({
		url : "${pageContext.request.contextPath }/Company/buskingZoneModify",
		type : "post",
		//contentType : "application/json",
		data :  objParams,
		//dataType : "json",
		success : function(count) {
			//성공시 처리해야될 코드 작성
			console.log(count)
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
})

//공연장 선택시 버스킹 일정 불러오기(ajax)
$(document).ready(function () {
	var stage_no;
	stage_no = $("#stage-select").val();
	console.log(stage_no);
	
	$.ajax({
		url : "${pageContext.request.contextPath }/Company/buskingDateList",
		type : "post",
		//contentType : "application/json",
		data :  {stage_no:stage_no},
		//dataType : "json",
		success : function(busdateVo) {
			//성공시 처리해야될 코드 작성
			for(var i=0;i<busdateVo.length;i++) {
				available_days[i] = busdateVo[i].bus_date.substring(0, 10);
			}
			//등록된 버스킹일정 제외하고 날짜 비활성화
			$picker.datepicker({
			    onRenderCell: function (date, cellType) {

			    	var myDate = date.getFullYear()+'-'+months[date.getMonth()]+'-'+((date.getDate()<10)?'0':'')+date.getDate();
			    	console.log(myDate);
			        
			        if(available_days.indexOf(myDate) != -1) {
			            return {
			                disabled: false
			            }
			        } else {
			          return {
			        	disabled: true
			          }
			        }
			    }
				
			});
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	$("#stage-select").on("change",  function () {
		stage_no = $(this).val();
		console.log(stage_no);
		
		$.ajax({
			url : "${pageContext.request.contextPath }/Company/buskingDateList",
			type : "post",
			//contentType : "application/json",
			data :  {stage_no:stage_no},
			//dataType : "json",
			success : function(busdateVo) {
				//성공시 처리해야될 코드 작성
				var available_days2 = [];
				for(var i=0;i<busdateVo.length;i++) {
					available_days2[i] = (busdateVo[i].bus_date).substring(0, 10);
				}
				console.log(available_days2);
				//등록된 버스킹일정 제외하고 날짜 비활성화
				$picker.datepicker({
				    onRenderCell: function (date, cellType) {

				    	var myDate = date.getFullYear()+'-'+months[date.getMonth()]+'-'+((date.getDate()<10)?'0':'')+date.getDate();
				    	console.log(myDate);
				        
				        if(available_days2.indexOf(myDate) != -1) {
				            return {
				                disabled: false
				            }
				        } else {
				          return {
				        	disabled: true
				          }
				        }
				    }
					
				});
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
		
	});
});

//저장 완료 alert
$().ready(function () {
    $("#insBtn").click(function () {
        const Toast = Swal.mixin({
            toast: true,
            position: 'center-center',
            showConfirmButton: false,
            timer: 1500,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        })

        Toast.fire({
            icon: 'success',
            title: '버스킹존 수정이 완료되었습니다.'
        })
    });
});

//공연 시간 add 버튼
$("#time-table").on("click", ".addBtn", function() {
	console.log("add버튼");
	add();
});

//공연 시간 minus 버튼
$("#time-table").on("click", ".minusBtn", function() {
	console.log("minus버튼");
	$(this).parent().remove();
});

//버스킹 일정 삭제 이벤트
$().ready(function () {
	$("#delBtn").click(function () {
		Swal.fire({
			title: '정말로 삭제하시겠습니까?',
			text: "버스킹 일정을 삭제하시겠습니까?",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '확인',
			cancelButtonText: '취소'
		}).then((result) => {
			if (result.isConfirmed) {
				buskingDelete();
			} 
		})
	});
});


function buskingDelete() {

	var no = $("[name='date_no']").val();
	location.href =	"${pageContext.request.contextPath }/Company/buskingZoneDelete?no="+no+"";

}

function add(i) {
	
	var str = '';
	
		str += '<div>';
		str += '<select data-no="'+i+'" name="start_time" class="input input-time">';
		str += '<option value="00:00">00:00</option><option value="00:30">00:30</option><option value="01:00">01:00</option><option value="01:30">01:30</option><option value="02:00">02:00</option><option value="02:30">02:30</option><option value="03:00">03:00</option><option value="03:30">03:30</option>';
		str += '<option value="04:00">04:00</option><option value="04:30">04:30</option><option value="05:00">05:00</option><option value="05:30">05:30</option><option value="06:00">06:00</option><option value="06:30">06:30</option><option value="07:00">07:00</option><option value="07:30">07:30</option>';
		str += '<option value="08:00">08:00</option><option value="08:30">08:30</option><option value="09:00">09:00</option><option value="09:30">09:30</option><option value="10:00">10:00</option><option value="10:30">10:30</option><option value="11:00">11:00</option><option value="11:30">11:30</option>';
		str += '<option value="12:00">12:00</option><option value="12:30">12:30</option><option value="13:00">13:00</option><option value="13:30">13:30</option><option value="14:00">14:00</option><option value="14:30">14:30</option><option value="15:00">15:00</option><option value="16:30">16:30</option>';
		str += '<option value="16:00">16:00</option><option value="16:30">16:30</option><option value="17:00">17:00</option><option value="17:30">17:30</option><option value="18:00">18:00</option><option value="18:30">18:30</option><option value="19:00">19:00</option><option value="19:30">19:30</option>';
		str += '<option value="20:00">20:00</option><option value="20:30">20:30</option><option value="21:00">21:00</option><option value="21:30">21:30</option><option value="22:00">22:00</option><option value="22:30">22:30</option><option value="23:00">23:00</option><option value="23:30">23:30</option><option value="24:00">24:00</option>';
		str += '</select>';
		str += '<img class="add-img" src="${pageContext.request.contextPath}/assets/image/company/icon/from.png">';
		str += '<select data-no="'+i+'" name="end_time" class="input input-time">';
		str += '<option value="00:00">00:00</option><option value="00:30">00:30</option><option value="01:00">01:00</option><option value="01:30">01:30</option><option value="02:00">02:00</option><option value="02:30">02:30</option><option value="03:00">03:00</option><option value="03:30">03:30</option>';
		str += '<option value="04:00">04:00</option><option value="04:30">04:30</option><option value="05:00">05:00</option><option value="05:30">05:30</option><option value="06:00">06:00</option><option value="06:30">06:30</option><option value="07:00">07:00</option><option value="07:30">07:30</option>';
		str += '<option value="08:00">08:00</option><option value="08:30">08:30</option><option value="09:00">09:00</option><option value="09:30">09:30</option><option value="10:00">10:00</option><option value="10:30">10:30</option><option value="11:00">11:00</option><option value="11:30">11:30</option>';
		str += '<option value="12:00">12:00</option><option value="12:30">12:30</option><option value="13:00">13:00</option><option value="13:30">13:30</option><option value="14:00">14:00</option><option value="14:30">14:30</option><option value="15:00">15:00</option><option value="16:30">16:30</option>';
		str += '<option value="16:00">16:00</option><option value="16:30">16:30</option><option value="17:00">17:00</option><option value="17:30">17:30</option><option value="18:00">18:00</option><option value="18:30">18:30</option><option value="19:00">19:00</option><option value="19:30">19:30</option>';
		str += '<option value="20:00">20:00</option><option value="20:30">20:30</option><option value="21:00">21:00</option><option value="21:30">21:30</option><option value="22:00">22:00</option><option value="22:30">22:30</option><option value="23:00">23:00</option><option value="23:30">23:30</option><option value="24:00">24:00</option>';
		str += '</select>';
		str += '<img class="minus-img minusBtn" src="${pageContext.request.contextPath}/assets/image/company/icon/minus.png">';
		str += '</div>';
		
		$("#timeList").append(str);
}


</script>
</html>