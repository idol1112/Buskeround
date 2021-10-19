<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<!-- sweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<!-- Content -->
	<div class="row" id="contentbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8" id="mypage">

			<c:import url="/WEB-INF/views/MyPage/includes/aside.jsp"></c:import>

			<div id="mypage-right">
				<div id="mypage-right-header">
					<h5>프로필 수정</h5>
				</div>
				<div id="mypage-right-content">
					<form action="${pageContext.request.contextPath}/MyPage/modify" method="POST" enctype="multipart/form-data">
					<input type="hidden" name="user_no" value="${sessionScope.authUser.user_no}">
					<input id="img_check" type="hidden" name="img_check" value="0">
						<table>
							<tr>
								<td class="table-head"><label for="profilepicture">프로필 사진</label></td>
								<td>
									<div id="image_container">
										<c:if test="${authUser.user_img == null}">
											<img id="profilepicture" src="/Buskeround/assets/image/blog/icon/user.png">
										</c:if>
										
										<c:if test="${authUser.user_img != null}">
											<img id="profilepicture" src="${pageContext.request.contextPath}/upload/${sessionScope.authUser.user_img}">
										</c:if>
									</div>
									
									<label id="profilepicturechange" class="btn-success btn-sm">
								    <input type="file" id="file1" name="file1" accept="image/*" onchange="setThumbnail(event);">
								    변경
									</label>
									<label id="profilepicturedelete" class="btn-danger btn-sm">
									삭제
									</label>
								</td>
							</tr>
							<tr>
								<td class="table-head"><label for="id">아이디</label></td>
								<td><p class="input">${sessionScope.authUser.id}</p></td>
							</tr>
							<tr>
								<td class="table-head"><label for="email">이메일</label></td>
								<td><input class="input" type="email" id="email" name="email" placeholder="이메일을 입력해주세요" value="${sessionScope.authUser.email}"></td>
							</tr>
							<tr>
								<td class="table-head"><label for="password">페스워드</label></td>
								<td><input class="input" type="password" id="password" name="password" placeholder="페스워드를 입력해주세요" value="${sessionScope.authUser.password}"></td>
							</tr>
							<tr>
								<td class="table-head"><label for="nickname">닉네임</label></td>
								<td><input class="input" type="text" id="nickname" name="nickname" placeholder="닉네임을 입력해주세요" value="${sessionScope.authUser.nickname}"></td>
							</tr>
						</table>
						<button class="float-end btn-primary btn-sm" id="profilesubmit">수정</button>
					</form>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>


	<!-- Footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>

<script type="text/javascript">

	//미리보기
	function setThumbnail(event) { 
		console.log("미리보기 실험")
		var reader = new FileReader(); 
		
		var picture = document.getElementById("profilepicture");
		
		reader.onload = function(event) { 
			document.querySelector("img#profilepicture").setAttribute("src", event.target.result); 
			document.querySelector("input#img_check").setAttribute("value", '1'); 
		}; 
		
		reader.readAsDataURL(event.target.files[0]); 
		}
	
	//미리보기 삭제
	$("#profilepicturedelete").on("click", function(){
		console.log("미리보기 삭제")
		
		document.querySelector("img#profilepicture").setAttribute("src", '/Buskeround/assets/image/blog/icon/user.png'); 
		document.querySelector("input#img_check").setAttribute("value", '2'); 
	});
	
	//저장 완료 alert
	$("#profilesubmit").on("click", function(e) {
		e.preventDefault();
		var form = $(this).parents('form');
		
		if ($("[name=nickname]").val().length < 1) {
			alert("닉네임을 입력해 주세요.");

			return false;
		}

		if ($("[name=email]").val().length < 1) {
			alert("이메일을 입력해 주세요.");

			return false;
		}

		if ($("[name=password]").val().length < 1) {
			alert("페스워드를 입력해 주세요.");

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
	        title: '프로필 정보가 수정되었습니다.'
	    })
	    
		setTimeout(function () {
		  form.submit();
		}, 1500);

	})


</script>
</html>