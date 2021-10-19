<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogModify.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogStart.css">

<!-- sweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>

<body>

	<!------ br_container ------>
	<div class="clearfix" id="br_container">
    <c:import url="/WEB-INF/views/Blog/includes/aside.jsp"></c:import>

		<!------ br_content ------>
		<div id="br_content">
      	<c:import url="/WEB-INF/views/Blog/includes/header.jsp"></c:import>

			<!-- 컨텐트 (프로필 수정) -->
			<div class="modify-header">
				<h5>블로그 관리</h5>
			</div>

			<div class="modify-form">
				<form id="artistModify" action="${pageContext.request.contextPath}/blog/modify" method="POST" enctype="multipart/form-data">
					<input type="hidden" name="user_no" value="${blogVo.user_no}">
					<input type="hidden" name="id" value="${blogVo.id}">
					<input id="img_check" type="hidden" name="img_check" value="0">
					<table>
						<tr>
							<td class="table-head"><label for="nickname">활동명</label></td>
							<td><input class="input" type="text" id="artistname" name="nickname" placeholder="활동명을 입력해주세요." value="${blogVo.nickname}"></td>
						</tr>
						<tr>
							<td class="table-head"><label for="intro">자기소개</label></td>
							<td><textarea class="input" name="intro" placeholder="자기소개를 입력해주세요.">${blogVo.intro}</textarea></td>
						</tr>
						<tr>
							<td class="table-head"><label for="resume_content[]">이력사항</label></td>
							<td class="field_wrapper">
								<input class="input" type="text" id="record" name="resume_content[]" placeholder="이력사항을 입력해주세요" value="${resumeList[0].resume_content} ">
								<a href="javascript:void(0);" class="add_button" title="Add field"><img src="/Buskeround/assets/image/blog/icon/add.png"/></a>
								
								<c:if test="${fn:length(resumeList) > 1}">
									<c:forEach items="${resumeList}" var="resumeList" varStatus="status" begin="1">
										<div class="additionalResume"><input class="input" type="text" id="record" name="resume_content[]" value="${resumeList.resume_content}">
										<a href="javascript:void(0);" class="remove_button"><img src="/Buskeround/assets/image/blog/icon/minus.png" style="margin-left: -3px"/></a></div>
									</c:forEach>
								</c:if>
							</td>
							
						</tr>
						<tr id="banner">
							<td class="table-head"><label>대문이미지</label></td>
							<td class="bannerTable">
								<c:if test="${blogVo.banner == null}">
									<img id="bannerImg" src="/Buskeround/assets/image/blog/img/defaultbanner.jpg">
								</c:if>
								
								<c:if test="${blogVo.banner != null}">
									<img id="bannerImg" src="${pageContext.request.contextPath}/upload/${blogVo.banner}">
								</c:if>
								
								<label id="banner-deletebutton" class="btn-danger btn-sm">
								삭제
								</label>
								
								<label id="banner-changebutton" class="btn-success btn-sm">
							    <input type="file" id="file1" name="file1" accept="image/*" onchange="setThumbnail(event);">
							    변경
								</label>
								
							</td>
						</tr>
						<tr>
							<td class="table-head"><label>SNS 링크</label></td>
							<td class="label-width">
								<div>
									<div>
										<label>유튜브</label> <input class="sns-input" name="y_url" type="text" value="${blogVo.y_url}">
									</div>
									<div>
										<label>페이스북</label> <input class="sns-input" name="f_url" type="text" value="${blogVo.f_url}">
									</div>
									<div>
										<label>인스타그램</label> <input class="sns-input" name="i_url" type="text" value="${blogVo.i_url}">
									</div>
								</div>

							</td>
						</tr>
					</table>
					<button class="float-end" id="profilecancel" onclick="history.back(); return false;" style="background-color: red; color:white;">취소</button>
					<button type="submit" class="float-end" id="profilesubmit">수정</button>
				</form>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">

	$(document).ready(function(){
	    var fieldHTML = '<div class="additionalResume"><input class="input" type="text" id="record" name="resume_content[]"><a href="javascript:void(0);" class="remove_button"><img src="/Buskeround/assets/image/blog/icon/minus.png"/></a></div>'; //New input field html 
	    var x = '${fn:length(resumeList)}'; //Field 
	    
	    //이력사항 +
	    $(".add_button").click(function(){
	    	console.log("addbutton")
	        //Check maximum number of input fields
	        if(x < 6){ 
	            x++; //Increment field counter
	            $(".field_wrapper").append(fieldHTML); //Add field html
	        }
	    });
	    
	    //이력사항 -
	    $(".field_wrapper").on('click', '.remove_button', function(e){
	    	console.log("deletebutton")
	        e.preventDefault();
	        $(this).parent('div').remove(); //Remove field html
	        x--; //Decrement field counter
	    });
	});
	    
	//미리보기
	function setThumbnail(event) { 
		console.log("미리보기 실험")
		var reader = new FileReader(); 
		
		var picture = document.getElementById("profilepicture");
		
		reader.onload = function(event) { 
			document.querySelector("img#bannerImg").setAttribute("src", event.target.result); 
			document.querySelector("input#img_check").setAttribute("value", '1'); 
		}; 
		
		reader.readAsDataURL(event.target.files[0]); 
		}
	
	//미리보기 삭제
	$("#banner-deletebutton").on("click", function(){
		console.log("미리보기 삭제")
		
		document.querySelector("img#bannerImg").setAttribute("src", '/Buskeround/assets/image/blog/img/defaultbanner.jpg'); 
		document.querySelector("input#img_check").setAttribute("value", '2'); 
	});
	
	$("#profilesubmit").on("click", function(e) {
		e.preventDefault();
		var form = $(this).parents('form');
		
		if ($("[name=nickname]").val().length < 1) {
			alert("활동명을 입력해 주세요.");

			return false;
		}
		
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
	        title: '블로그 정보가 수정되었습니다.'
	    })
	    
		setTimeout(function () {
		  form.submit();
		}, 1500);

	})
		
</script>

</html>