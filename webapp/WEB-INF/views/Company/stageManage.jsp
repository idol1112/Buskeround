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

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

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
					<h5>공연장 관리</h5>
				</div>
				
				<div id="mypage-right-content">
                    <form id="form-stage" action="${pageContext.request.contextPath}/Company/stageInsert" method="get">
                    <input type="hidden" name="user_no" value="${sessionScope.authUser.user_no }">
                        <table>
                            <tr>
                                <td class="table-head"><label for="stage_name">장소명</label></td>
                                <td><input class="input" type="text" id="stage_name" name="stage_name" value=""></td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="rain_progress">우천시 진행</label></td>
                                <td>
                                	<div class="radio-group">
	                                	<label class="radio-inline">
	                                		<input type="radio" name="rain_progress" value="1"> 가능
										</label> 
										<label class="radio-inline">
											<input type="radio" name="rain_progress" value="0"> 불가능
										</label>
									</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="stage_light">무대조명</label></td>
                                <td>
                                	<div class="radio-group">
	                               		<label class="radio-inline">
	                                		<input type="radio" name="stage_light" id="stage_light" value="1"> 가능
										</label> 
										<label class="radio-inline">
											<input type="radio" name="stage_light" id="stage_light1" value="0"> 불가능
										</label>
									</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="parking">주차</label></td>
                                <td>
                                	<div class="radio-group">
	                                	<label class="radio-inline">
	                                		<input type="radio" name="parking" id="parking" value="1"> 가능
										</label> 
										<label class="radio-inline">
											<input type="radio" name="parking" id="parking1" value="0"> 불가능
										</label>
									</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="business_number">공연장리스트</label></td>
                                <td>
                                	<ul class="list-group">
                                	<c:forEach items="${stageList}" var="stageList" varStatus="status">
										<li id="l-${stageList.stage_no}" class="list">
											<span class="label label-default" data-no="${stageList.stage_no}">${stageList.stage_name}</span>
											<img class="delBtn" data-no="${stageList.stage_no}" src="${pageContext.request.contextPath}/assets/image/company/icon/delete.png">
										</li>
									</c:forEach>
									</ul>
                                </td>
                            </tr>
                        </table>
                        <div class="btn-area">
                        	<button type="submit" class="float-end btn btn-primary btn-sm btn-size" id="stageInsbtn">저장</button>
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


//공연장 저장 이벤트
$("#stageInsbtn").on("click", function(e) {
	e.preventDefault();
	var form = $(this).parents('form');
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
        title: '공연장 정보가 저장되었습니다.'
    })
	setTimeout(function () {
	  form.submit();
	}, 1500);

})


$(".list-group").on("click", ".delBtn", function() {
	console.log("삭제 버튼");
	
	var no = $(this).data("no");
	console.log(no);
	
	$.ajax({
			url : "${pageContext.request.contextPath }/Company/stageRemove",
			type : "post",
			//contentType : "application/json",
			data : {stage_no : no},
			//dataType : "json",
			success : function(count) {
				if (count === 1) {
					//리스트에 삭제버튼이 있던 테이블 화면에서 지운다
					$("#l-" + no).remove();
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
	
	});
})

$(".list-group").on("click", ".label", function() {
	console.log("리스트 버튼");
	$("input[name = 'stage_no']").remove();
	var no = $(this).data("no");
	console.log(no);
	$("form").attr("action", "${pageContext.request.contextPath}/Company/stageModify");
	$("form").append("<input type='hidden' name='stage_no' value='"+no+"'>");
	
	
	$.ajax({
		url : "${pageContext.request.contextPath }/Company/stageModifyForm",
		type : "post",
		//contentType : "application/json",
		data : {stage_no : no},
		//dataType : "json",
		success : function(stageVo) {
		console.log(stageVo);
		$("input[id = 'stage_name']").val(stageVo.stage_name);
		
		if(stageVo.rain_progress == '1') {
			$("input[name='rain_progress'][value ='1']").prop("checked", true);
			$("input[name='rain_progress'][value ='0']").prop("checked", false);
		}else if(stageVo.rain_progress == '0') {
			$("input[name='rain_progress'][value ='1']").prop("checked", false);
			$("input[name='rain_progress'][value ='0']").prop("checked", true);

		}
		
		if(stageVo.stage_light == '1') {
			$("input[name='stage_light'][value ='1']").prop("checked", true);
			$("input[name='stage_light'][value ='0']").prop("checked", false);
		}else if(stageVo.stage_light == '0') {
			$("input[name='stage_light'][value ='1']").prop("checked", false);
			$("input[name='stage_light'][value ='0']").prop("checked", true);
		}
		if(stageVo.parking == '1') {
			$("input[name='parking'][value ='1']").prop("checked", true);
			$("input[name='parking'][value ='0']").prop("checked", false);
		}else if(stageVo.parking == '0') {
			$("input[name='parking'][value ='1']").prop("checked", false);
			$("input[name='parking'][value ='0']").prop("checked", true);
		}
		
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}

	});
	
})

</script>
</html>