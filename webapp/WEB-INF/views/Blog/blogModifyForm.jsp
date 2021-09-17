<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>

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

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>

<body>

	<!------ br_container ------>
	<div class="clearfix" id="br_container">
		<c:import url="/views/Blog/includes/aside.jsp"></c:import>

		<!------ br_content ------>
		<div id="br_content">
			<c:import url="/views/Blog/includes/header.jsp"></c:import>

			<!-- 컨텐트 (프로필 수정) -->
			<div class="modify-header">
				<h5>블로그 관리</h5>
			</div>

			<div class="modify-form">
				<form action="" method="POST">
					<table>
						<tr>
							<td class="table-head"><label for="artistname">활동명</label></td>
							<td><input class="input" type="text" id="artistname" name="artistname" placeholder="활동명을 입력해주세요."></td>
						</tr>
						<tr>
							<td class="table-head"><label for="introduce">자기소개</label></td>
							<td><textarea class="input" placeholder="자기소개를 입력해주세요."></textarea></td>
						</tr>
						<tr>
							<td class="table-head"><label for="record">이력사항</label></td>
							<td><input class="input" type="text" id="record" name="record" placeholder="이력사항을 입력해주세요"></td>
						</tr>
						<tr id="banner">
							<td class="table-head"><label>대문이미지</label></td>
							<td><img src="../../assets/image/blog/img/profilebanner.jpg">
								<button id="banner-deletebutton">삭제</button>
								<button id="banner-changebutton">변경</button></td>
						</tr>
						<tr>
							<td class="table-head"><label>SNS 링크</label></td>
							<td class="label-width">
								<div>
									<div>
										<label>유튜브</label> <input class="sns-input" type="text">
									</div>
									<div>
										<label>페이스북</label> <input class="sns-input" type="text">
									</div>
									<div>
										<label>인스타그램</label> <input class="sns-input" type="text">
									</div>
								</div>

							</td>
						</tr>
					</table>
					<button class="float-end" id="profilecancel" onclick="location.href=''">취소</button>
					<button class="float-end" id="profilesubmit" onclick="location.href=''">수정</button>
			</div>
		</div>
	</div>
</body>

</html>