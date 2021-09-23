<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Artist/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Common/common.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>


</head>

<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<!-- nav_artist  -->
	<c:import url="/WEB-INF/views/Artist/includes/artbox.jsp"></c:import>



	<div class="section-01">
		<div class="leftsection">
			<!-- 종합랭킹 -->
			<div class="leftsection-01">
				<h2>종합랭킹</h2>
				<!-- 아티스트 검색 -->
				<div>
					<input type="text" placeholder="아티스트 검색"> <img src="${pageContext.request.contextPath}/assets/image/artist/icon/search.png" style="width: 20px">
				</div>
			</div>
			<!-- 종합랭킹 표그래프 -->
			<div class="leftsection-02">
				<table>
					<thead>
						<tr>
							<td>NO</td>
							<td></td>
							<td>활동명</td>
							<td>주요장르</td>
							<td>아티스트 정보</td>
							<td>좋아요</td>
							<td>팬 되기</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${artistRenkList}" var="aList">

							<!--1번-->
							<tr>
								<td>1</td>
								<td><img src="/Buskeround${aList.user_img}" style="width: 80px"></td>
								<td>
									<div>${aList.nickname}</div>
									<div>
										<img src="${pageContext.request.contextPath}/assets/image/artist/icon/facebook.png" style="width: 20px"> <img src="${pageContext.request.contextPath}/assets/image/artist/icon/insta.png" style="width: 20px">
									</div>
								</td>
								<td><img src="${pageContext.request.contextPath}/assets/image/artist/icon/musical.png" style="width: 60px"></td>
								<td>
									<div>${aList.genre_type}</div>
									<div>가입연도 ${aList.artist_regdate}년</div>
								</td>
								<td><img src="${pageContext.request.contextPath}/assets/image/artist/icon/heart2.png" style="width: 20px"> <span>530</span></td>
								<td><img src="${pageContext.request.contextPath}/assets/image/artist/icon/fan1.png" style="width: 20px"> <span>114</span></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<div class="rightsection">
			<div class="rightsection-01">
				<!-- 뉴아티스트 배너 -->
				<div class="rightsection-01-01">
					<h3>NEW ARTIST</h3>
					<div>
						<img src="${pageContext.request.contextPath}/assets/image/artist/icon/circle1.png" style="width: 8px"> <img src="${pageContext.request.contextPath}/assets/image/artist/icon/circle1.png" style="width: 8px"> <img src="${pageContext.request.contextPath}/assets/image/artist/icon/circle2.png" style="width: 8px"> <img src="${pageContext.request.contextPath}/assets/image/artist/icon/circle1.png" style="width: 8px"> <img src="${pageContext.request.contextPath}/assets/image/artist/icon/circle1.png" style="width: 8px">
					</div>
				</div>
				<div>
					<img src="${pageContext.request.contextPath}/assets/image/artist/img/22.PNG" style="width: 285px">
				</div>
			</div>
			<div class="rightsection-02">
				<!-- 라이브 표그래프 -->
				<div class="rightsection-02-01">
					<h3>NOW LIVE</h3>
					<div>
						<img src="${pageContext.request.contextPath}/assets/image/artist/icon/triangle1.png" style="width: 20px"> 1/2 <img src="${pageContext.request.contextPath}/assets/image/artist/icon/triangle2.png" style="width: 20px">
					</div>
				</div>
				<table>
					<tbody>
						<tr>
							<td>김진호</td>
							<td>오후 3:24~</td>
							<td>[위치 보기]</td>
						</tr>
						<tr>
							<td>나비</td>
							<td>오후 8:00~</td>
							<td>[위치 보기]</td>
						</tr>
						<tr>
							<td>이석훈</td>
							<td>오후 8:20~</td>
							<td>[위치 보기]</td>
						</tr>
						<tr>
							<td>지석진</td>
							<td>오후 8:40~</td>
							<td>[위치 보기]</td>
						</tr>
						<tr>
							<td>이지은</td>
							<td>오후 9:05~</td>
							<td>[위치 보기]</td>
						</tr>
						<tr>
							<td>홀리뱅</td>
							<td>오후 9:22~</td>
							<td>[위치 보기]</td>
						</tr>
						<tr>
							<td>하석훈</td>
							<td>오후 9:24~</td>
							<td>[위치 보기]</td>
						</tr>
						<tr>
							<td>YGXGIRL</td>
							<td>오후 10:00~</td>
							<td>[위치 보기]</td>
						</tr>
						<tr>
							<td>케이윌</td>
							<td>오후 11:09~</td>
							<td>[위치 보기]</td>
						</tr>
						<tr>
							<td>웨이비</td>
							<td>오후 11:25~</td>
							<td>[위치 보기]</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
</html>