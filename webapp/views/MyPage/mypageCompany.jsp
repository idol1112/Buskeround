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
<link rel="stylesheet" href="../../assets/css/Common/common.css">
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
					<h5>제휴사 등록</h5>
				</div>
				<div id="mypage-right-content">
					<form action="" method="POST">
						<table>
							<tr>
								<td class="table-head"><label for="profilepicture">회사 로고</label></td>
								<td><img id="profilepicture" src="../../assets/img/cgv.png"><br>
									<button id="profilepicturechange" class="btn-success btn-sm" type="submit">변경</button>
									<button id="profilepicturedelete" class="btn-delete btn-sm" type="submit">삭제</button></td>
							</tr>
							<tr>
								<td class="table-head"><label class="required" for="buildingname">건물명</label></td>
								<td><input class="input" type="text" id="buildingname" name="buildingname" placeholder="건물명을 입력해주세요"></td>
							</tr>
							<tr>
								<td class="table-head"><label class="required" for="address">주소</label></td>
								<td><input class="input" type="text" id="address" name="address" placeholder="주소 입력해주세요."></td>
							</tr>
							<tr>
								<td class="table-head"><label class="required" for="companycontact">연락처</label></td>
								<td><input class="input" type="text" id="companycontact" name="companycontact" placeholder="연락처를 입력해주세요."></td>
							</tr>
							<tr>
								<td class="table-head"><label class="required" for="representative">대표자명</label></td>
								<td><input class="input" type="text" id="representative" name="representative" placeholder="대표자명 입력해주세요."></td>
							</tr>
							<tr>
								<td class="table-head"><label class="required" for="businessnumber">사업자번호</label></td>
								<td><input class="input" type="text" id="businessnumber" name="businessnumber" placeholder="사업자번호를 입력해주세요"></td>
							</tr>
						</table>
						<button type="submit" class="float-end btn-primary btn-sm" id="profilesubmit">등록</button>
					</form>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>

	<!-- Footer -->
    <c:import url="/views/includes/footer.jsp"></c:import>
</body>
</html>