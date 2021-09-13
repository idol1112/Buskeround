<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css">
</head>

<body>
	<!-- header -->
	<div class="row" id="navbox">
		<div class="col-xl-2"></div>

		<!-- nav -->
		<div class="col-xl-8">
			<div class="navbar">

				<!-- nav_logo -->
				<div class="navbar_logo">
					<a href="">Br.</a>
				</div>

				<!-- nav_menu -->
				<ul class="navbar_menu">
					<li><a href="">공연</a></li>
					<li><a href="">아티스트</a></li>
					<li><a href="">버스킹존</a></li>
					<li><a href="">고객센터</a></li>
				</ul>

				<!-- nav_login -->
				<ul class="navbar_login">
					<li><a href="">로그인</a></li>
					<li><a href="">회원가입</a></li>
				</ul>
			</div>
		</div>
		<!------- nav -------->

		<div class="col-xl-2"></div>
	</div>
	<!------- header -------->
</body>
</html>