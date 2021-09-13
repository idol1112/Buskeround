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
<link rel="stylesheet" href="../../assets/css/BuskingZone/common.css">
<link rel="stylesheet" href="../../assets/css/BuskingZone/company.css">
</head>

<body>
	<!-- header -->
	<c:import url="/views/includes/header.jsp"></c:import>
	<!------- header -------->

	<!-- Content -->
	<div class="row" id="contentbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8" id="mypage">
			<div id="mypage-left">
				<ul id="mypage-category">
					<h4>제휴사 관리</h4>
					<li><a href="./companyInfo.jsp">제휴사 정보</a></li>
					<li><a class="active" href="./stageManage.jsp">공연장 관리</a></li>
					<li><a href="./buskingZoneManage.jsp">버스킹존 등록</a></li>
					<li><a href="./applyManage.jsp">공연신청 관리</a></li>
				</ul>
			</div>
			<div id="mypage-right">
				<div id="mypage-right-header">
					<h5>공연장 관리</h5>
				</div>
				<div id="mypage-left-content">
					<p class="content-title">공연 장소</p>

					<div class="place-add">
						<input type="text" placeholder="공연 장소를 입력하세요" value="">
						<button class="img-btn" type="submit">
							<img class="btn-img" src="../../assets/image/buskingZone/icon/add.png">
						</button>
					</div>
					<ul class="place-list-group">
						<li class="place-list">7층 스테이지
							<button class="img-btn" type="submit">
								<img class="btn-img" src="../../assets/image/buskingZone/icon/delete.png">
							</button>
						</li>
						<li class="place-list">8층 카페
							<button class="img-btn" type="submit">
								<img class="btn-img" src="../../assets/image/buskingZone/icon/delete.png">
							</button>
						</li>
					</ul>
				</div>
				<div id="mypage-right-content">
					<p class="content-title">공연 조건</p>

					<div class="condition-state">우천시 진행</div>
					<label class="radio-inline"> <input type="radio" name="rain-keepgoing" id="rain-keepgoing" value="able" checked="checked"> 가능
					</label> <label class="radio-inline"> <input type="radio" name="rain-keepgoing" id="rain-keepgoing" value="disable"> 불가능
					</label>
					<div class="condition-state">무대조명</div>
					<label class="radio-inline"> <input type="radio" name="stage-lighting" id="stage-lighting" value="able" checked="checked"> 가능
					</label> <label class="radio-inline"> <input type="radio" name="stage-lighting" id="stage-lighting" value="disable"> 불가능
					</label>
					<div class="condition-state">주차</div>
					<label class="radio-inline"> <input type="radio" name="parking" id="parking" value="able" checked="checked"> 가능
					</label> <label class="radio-inline"> <input type="radio" name="parking" id="parking" value="disable"> 불가능
					</label>

				</div>
				<div class="btn-area">
					<button type="submit" class="btn-primary btn-sm">저장</button>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>


	<!-- footer -->
	<c:import url="/views/includes/footer.jsp"></c:import>
	<!------- footer -------->
</body>
</html>