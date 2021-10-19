<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
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
					<h5>버스킹존 등록</h5>
				</div>
				<div id="mypage-right-content">
                    <form action="#" method="get">
                        <table>
                            <tr>
                                <td class="table-head"><label for="stage-select">장소명</label></td>
                                <td>
	                            	<select name="stage_no" id="stage-select" class="select-box input">
	                            		<c:forEach items="${stageList}" var="stageList" varStatus="status">
											<option value="${stageList.stage_no}">${stageList.stage_name}</option>
										</c:forEach>
									</select>
									<a href='${pageContext.request.contextPath}/Company/buskingZoneModifyForm'>
										<img id="setting" data-no="${authUser.user_no}" class="icon-img" src="${pageContext.request.contextPath}/assets/image/blog/icon/setting.png">
									</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="datepicker">공연 날짜</label></td>
                                <td>
                                	<input class="input" type="date" autocomplete="off" name="bus_date" id="datepicker"/>
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
                        </table>
                        <div class="btn-area">
                        	<button type="submit" class="float-end btn btn-primary btn-sm btn-size" id="insBtn">저장</button>
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

//datepicker
$("#datepicker").datepicker({
	language: 'ko',
	minDate: new Date(), // 최소 날짜 오늘 이후
	autoClose: true
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

//버스킹존 데이터 전송
$("form").on("click", "#insBtn", function() {
	event.preventDefault();
	console.log("저장 버튼");
	var start_time = [];
	var end_time = [];
	
	var busdateVo = {
			stage_no: $("[name='stage_no']").val(),
			bus_date: $("[name='bus_date']").val(),
			requirements: $("[name='requirements']").val()
	}
	
	$("[name='start_time']").each(function(index, item){
		start_time.push($(item).val());
		   });
	$("[name='end_time']").each(function(index, item){
		end_time.push($(item).val());
		   });
	
	var objParams = {
			"stage_no": $("[name='stage_no']").val(),
			"bus_date": $("[name='bus_date']").val(),
			"requirements": $("[name='requirements']").val(),
			"startArray": start_time,
			"endArray"  : end_time
	};
	
	console.log(objParams);
	
	$.ajax({
		url : "${pageContext.request.contextPath }/Company/buskingZoneInsert",
		type : "post",
		//contentType : "application/json",
		data :  objParams,
		//dataType : "json",
		success : function(count) {
			//성공시 처리해야될 코드 작성
			console.log(count);
			if(count>0) {
				$("[name='bus_date']").val("");
				$("[name='requirements']").val("");
				$("[name='start_time']").val("");
				$("[name='end_time']").val("");
				$("#timeList").empty();
			}
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
})

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
                    title: '버스킹존 등록이 완료되었습니다.'
                })
            });
        });




function add() {
	
	var str = '';
	
		str += '<div>';
		str += '<select name="start_time" class="input input-time">';
		str += '<option value="00:00">00:00</option><option value="00:30">00:30</option><option value="01:00">01:00</option><option value="01:30">01:30</option><option value="02:00">02:00</option><option value="02:30">02:30</option><option value="03:00">03:00</option><option value="03:30">03:30</option>';
		str += '<option value="04:00">04:00</option><option value="04:30">04:30</option><option value="05:00">05:00</option><option value="05:30">05:30</option><option value="06:00">06:00</option><option value="06:30">06:30</option><option value="07:00">07:00</option><option value="07:30">07:30</option>';
		str += '<option value="08:00">08:00</option><option value="08:30">08:30</option><option value="09:00">09:00</option><option value="09:30">09:30</option><option value="10:00">10:00</option><option value="10:30">10:30</option><option value="11:00">11:00</option><option value="11:30">11:30</option>';
		str += '<option value="12:00">12:00</option><option value="12:30">12:30</option><option value="13:00">13:00</option><option value="13:30">13:30</option><option value="14:00">14:00</option><option value="14:30">14:30</option><option value="15:00">15:00</option><option value="16:30">16:30</option>';
		str += '<option value="16:00">16:00</option><option value="16:30">16:30</option><option value="17:00">17:00</option><option value="17:30">17:30</option><option value="18:00">18:00</option><option value="18:30">18:30</option><option value="19:00">19:00</option><option value="19:30">19:30</option>';
		str += '<option value="20:00">20:00</option><option value="20:30">20:30</option><option value="21:00">21:00</option><option value="21:30">21:30</option><option value="22:00">22:00</option><option value="22:30">22:30</option><option value="23:00">23:00</option><option value="23:30">23:30</option><option value="24:00">24:00</option>';
		str += '</select>';
		str += '<img class="add-img" src="${pageContext.request.contextPath}/assets/image/company/icon/from.png">';
		str += '<select name="end_time" class="input input-time">';
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