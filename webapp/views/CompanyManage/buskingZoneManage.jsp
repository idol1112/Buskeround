<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
	<div class="row" id="header">
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

	<!-- Content -->
	<div class="row" id="contentbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8" id="mypage">
			<div id="mypage-left">
				<ul id="mypage-category">
					<h4>제휴사 관리</h4>
					<li><a href="./companyInfo.jsp">제휴사 정보</a></li>
					<li><a href="./stageManage.jsp">공연장 관리</a></li>
					<li><a class="active" href="./buskingZoneManage.jsp">버스킹존 등록</a></li>
					<li><a href="./applyManage.jsp">공연신청 관리</a></li>
				</ul>
			</div>
			<div id="mypage-right">
				<div id="mypage-right-header">
					<h5>버스킹존 등록</h5>
				</div>
				<div id="mypage-left-content">
					<p class="content-title">공연 시간</p>
					<div class="form-group">
						<select name="stage" id="stage-select" class="select-box">
							<option value="">7층 스테이지</option>
							<option value="">8층 카페</option>
						</select>
					</div>
					<div class="form-group">
						<img id="calendar" src="../../assets/image/buskingZone/calendar.png">
					</div>
					<div class="form-group">
						<div class="time-table">
							<input class="input-time" type="text" id="start-time" name="start-time" placeholder="시간 입력"> <img class="from-img" src="../../assets/image/buskingZone/icon/from.png"> <input class="input-time" type="text" id="start-time" name="start-time" placeholder="시간 입력">
							<button class="img-btn" type="submit">
								<img class="btn-img" src="../../assets/image/buskingZone/icon/add.png">
							</button>
						</div>
					</div>
					<div class="form-group">
						<ul>
							<li class="time-list"><span class="list-time">18:00</span> <img class="from-img" src="../../assets/image/buskingZone/icon/from.png"> <span class="list-time">20:00</span>
								<button class="img-btn" type="submit">
									<img class="btn-img" src="../../assets/image/buskingZone/icon/delete.png">
								</button></li>
							<li class="time-list"><span class="list-time">20:00</span> <img class="from-img" src="../../assets/image/buskingZone/icon/from.png"> <span class="list-time">22:00</span>
								<button class="img-btn" type="submit">
									<img class="btn-img" src="../../assets/image/buskingZone/icon/delete.png">
								</button></li>
						</ul>
					</div>
				</div>
				<div id="mypage-right-content">
					<p class="content-title">공연 조건</p>
					<div class="condition-state title-content">우천시 진행</div>
					<span class="availability">가능</span>
					<div class="condition-state title-content">무대조명</div>
					<span class="availability">가능</span>
					<div class="condition-state title-content">주차</div>
					<span class="availability">가능</span>

					<div class="form-group requirement">
						<label class="title-content" for="requirement-text">요구사항</label>
						<textarea class="form-control" id="requirement-text" rows="5">
                        </textarea>
					</div>

				</div>
				<div class="btn-area">
					<button type="submit" class="btn-primary btn-sm">등록</button>
					<button type="submit" class="btn-danger btn-sm">삭제</button>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>


	<!-- footer -->
	<div class="row" id="footerbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8">
			<div class="footer">
				<p style="text-align: center; padding-top: 47px;">
					대표이사 김영기 | 주소 서울 강남구 테헤란로 415(L7 HOTELS 강남타워 6,7층) | 버스커라운드 주식회사<br> 사업자 등록번호 133-12-15979 | 문의전화 02-8732-4204 | 메일 HELP@buskeround.com<br> COPYRIGHT©BUSKEROUND CROP ALL RIGHTS RESERVED. <br>
				</p>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>
	<!------- footer -------->
</body>
</html>