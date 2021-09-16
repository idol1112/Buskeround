<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
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
<link rel="stylesheet" href="../../assets/css/BuskingZone/busking.css">
<link rel="stylesheet" href="../../assets/css/MyPage/mypage.css">
</head>

<body>
	<!-- header -->
	<c:import url="/views/includes/header.jsp"></c:import>
	<!------- header -------->

	<!-- Content -->
	<div class="row" id="contentbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8" id="mypage">
			<c:import url="/views/MyPage/includes/aside.jsp"></c:import>
			<div id="mypage-right">
				<div id="mypage-right-header">
					<h5>공연신청 현황</h5>
				</div>
				<div id="mypage-right-content">
					<table class="table table-bordered">
						<colgroup>
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 17%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 23%">
							<col style="width: 10%">
							<col style="width: 10%">
						</colgroup>

						<tr>
							<th>장소명</th>
							<th>연락처</th>
							<th>공연장소</th>
							<th>날짜</th>
							<th>시간</th>
							<th>상세정보</th>
							<th>상태</th>
							<th></th>
						</tr>
						<tr>
							<td>신촌CGV</td>
							<td>1544-1122</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>상세정보</td>
							<td>수락</td>
							<td>
								<button type="submit" class="btn btn-danger btn-sm btn-block" id="btn-submit">취소</button>
							</td>
						</tr>
						<tr>
							<td>신촌CGV</td>
							<td>1544-1122</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>상세정보</td>
							<td>진행중</td>
							<td>
								<button type="submit" class="btn btn-danger btn-sm btn-block" id="btn-submit">취소</button>
							</td>
						</tr>
						<tr>
							<td>신촌CGV</td>
							<td>1544-1122</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>상세정보</td>
							<td>거절</td>
							<td>
								<button type="submit" class="btn btn-danger btn-sm btn-block" id="btn-submit">취소</button>
							</td>
						</tr>
						<tr>
							<td>신촌CGV</td>
							<td>1544-1122</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>상세정보</td>
							<td>진행중</td>
							<td>
								<button type="submit" class="btn btn-danger btn-sm btn-block" id="btn-submit">취소</button>
							</td>
						</tr>
						<tr>
							<td>신촌CGV</td>
							<td>1544-1122</td>
							<td>7층 스테이지</td>
							<td>2021-09-01</td>
							<td>22:00-24:00</td>
							<td>상세정보</td>
							<td>진행중</td>
							<td>
								<button type="submit" class="btn btn-danger btn-sm btn-block" id="btn-submit">취소</button>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>

	<!-- content -->
	<div class="row" id="content"></div>
	<!-------- content -------->

	<!-- footer -->
	<c:import url="/views/includes/footer.jsp"></c:import>
	<!------- footer -------->

	</div>
	<!------- wrap -------->
</body>
</html>