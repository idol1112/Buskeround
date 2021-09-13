<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet" href="../../assets/css/MyPage/common.css">
<link rel="stylesheet" href="../../assets/css/MyPage/mypage.css">
</head>
<body>
    <c:import url="/views/includes/header.jsp"></c:import>
	<!-- Content -->
	<div class="row" id="contentbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8" id="mypage">
   			<c:import url="/views/MyPage/includes/aside.jsp"></c:import>
			<div id="mypage-right">
				<div id="mypage-right-header">
					<h5>아티스트 등록</h5>
				</div>
				<div id="mypage-right-content">
					<form action="" method="POST">
						<table>
							<tr>
								<td class="table-head"><label class="required" for="artistname">활동명</label></td>
								<td><input class="input" type="text" id="artistname" name="artistname" placeholder="활동명을 입력해주세요"></td>
							</tr>
							<tr>
								<td class="table-head"><label class="required" for="name">이름</label></td>
								<td><input class="input" type="text" id="name" name="name" placeholder="이름을 입력해주세요."></td>
							</tr>
							<tr>
								<td class="table-head"><label class="required" for="phone">연락처</label></td>
								<td><input class="input" type="text" id="phone" name="phone" placeholder="연락처를 입력해주세요."></td>
							</tr>
							<tr>
								<td class="table-head"><label for="gender">성별</label></td>
								<td><input class="radio" type="radio" name="gender"><span class="radiolabel">남</span> <input type="radio" name="gender"><span class="radiolabel">여</span></td>
							</tr>
							<tr>
								<td class="table-head"><label for="birthday">생년월일</label></td>
								<td><input class="input" type="text" id="birthday" name="birthday" placeholder="YYYY/MM/DD"></td>
							</tr>
							<tr>
								<td class="table-head"><label class="required" for="genre">퍼포먼스/장르</label></td>
								<td><input class="radio" type="radio" name="genre"><span class="radiolabel">발라드</span> <input class="radio" type="radio" name="genre"><span class="radiolabel">댄스</span> <input class="radio" type="radio" name="genre"><span class="radiolabel">랩/힙합</span> <input class="radio" type="radio" name="genre"><span class="radiolabel">R&B소울</span><br>
								<br> <input class="radio" type="radio" name="genre"><span class="radiolabel">악기</span> <input class="radio" type="radio" name="genre"><span class="radiolabel">기타공연</span></td>
							</tr>
							<tr>
								<td class="table-head"><label for="genretype">장르유형</label></td>
								<td><input class="input" type="text" id="genretype" name="genretype" placeholder="장르유형을 입력해주세요"></td>
							</tr>
						</table>
						<button type="submit" class="float-end" id="profilesubmit">등록</button>
					</form>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>


	<!-- Footer -->
	<c:import url="/views/MyPage/includes/aside.jsp"></c:import>
</body>
</html>