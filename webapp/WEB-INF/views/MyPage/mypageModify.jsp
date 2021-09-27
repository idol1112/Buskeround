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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Common/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/MyPage/mypage.css">
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
					<form action="" method="POST">
						<table>
							<tr>
								<td class="table-head"><label for="profilepicture">프로필 사진</label></td>
								<td>
									<img id="profilepicture" src="../../assets/img/profilepicture.jpg"><br>
									<label id="profilepicturechange" class="btn-success btn-sm">
								    <input type="file">
								    변경
									</label>
									<button id="profilepicturedelete" class="btn-danger btn-sm" type="submit">삭제</button>
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
								<td><input class="input" type="password" id="password" name="password" placeholder="페스워드를 입력해주세요"></td>
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
</html>