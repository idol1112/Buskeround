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
<link rel="stylesheet" href="../../assets/css/Common/common.css">
<link rel="stylesheet" href="../../assets/css/BuskingZone/busking.css">
</head>

<body>
	<!-- wrap -->
	<div id="wrap">
		<!-- header -->
		<c:import url="/views/includes/header.jsp"></c:import>
		<!------- header -------->

		<!-- content -->
		<div class="row" id="content">
			<div class="col-xl-3"></div>
			<div class="col-xl-3 main-content" id="companyInfo">
				<div id="title">공연 신청</div>
				<div class="img-area">
					<img id="com-img" src="../../assets/image/buskingZone/cgv.png">
				</div>
				<div class="title-area">
					<span>신촌 CGV</span>
				</div>
				<div id="infoArea">
					<div class="infoGroup">
						<div class="content-area">
							<span>대표자명:김덕배</span>
						</div>
						<div class="content-area">
							<span id="companyNum">1544-1122</span>
						</div>
						<div class="content-area">
							<span>서울 서대문구 신촌로 129 아트레온</span>
						</div>
					</div>
					<div class="infoGroup">
						<div class="condition-area">
							<label class="condition-title">우천시 진행</label> <span>가능</span>
						</div>
						<div class="condition-area">
							<label class="condition-title">무대조명</label> <span>가능</span>
						</div>
						<div class="condition-area">
							<label class="condition-title">주차</label> <span>가능</span>
						</div>
					</div>
					<div class="infoGroup">
						<div class="required-area">
							<label class="condition-title">요구사항</label>
							<div id="requiredContent">
								<p>-R&B/발라드 장르 하시는 솔로 가수</p>
								<p>-자작곡 3곡 이상 있으신 분</p>
								<p>-자세한 사항은 전화로 문의 주시기 바랍니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 main-content" id="applyInfo">
				<form>
					<div class="form-group">
						<label class="form-text" for="stage-select">공연장소</label> <select name="stage" id="stage-select">
							<option value="">7층 스테이지</option>
							<option value="">8층 카페</option>
						</select>
					</div>
					<div class="form-group">
						<label class="form-text" for="date-select">날짜</label> <select name="date" id="date-select">
							<option value="">2022-09-01</option>
							<option value="">2022-09-02</option>
						</select>
					</div>
					<div class="form-group">
						<label class="form-text" for="time-select">시간</label> <select name="time" id="time-select">
							<option value="">20:00-22:00</option>
							<option value="">22:00-24:00</option>
						</select>
					</div>
					<div class="form-group">
						<label class="form-text">활동명</label> <span>버스커</span>
					</div>
					<div class="form-group">
						<label class="form-text">연락처</label> <span>010-1234-1234</span>
					</div>
					<div class="form-group">
						<label class="form-text">장르</label> <span>R&B</span>
					</div>
					<div class="form-group">
						<label class="form-text" for="detailInfo">상세정보</label>
						<div id="inputDetail">
							<textarea id="detailInfo"></textarea>
						</div>
					</div>
					<div class="button-area">
						<button type="submit" class="btn btn-primary btn-sm btn-block" id="btn-submit">신청</button>
					</div>
				</form>
			</div>
			<div class="col-xl-3">3</div>
		</div>
		<!-------- content -------->

		<!-- footer -->
		<c:import url="/views/includes/footer.jsp"></c:import>
		<!------- footer -------->

	</div>
	<!------- wrap -------->
</body>
</html>
