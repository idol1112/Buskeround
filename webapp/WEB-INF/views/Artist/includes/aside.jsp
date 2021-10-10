<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="rightsection">
	<div class="rightsection-01">
		<!-- 뉴아티스트 배너 -->
		<div class="rightsection-01-01">
			<div>
				<h3>NEW ARTIST</h3>
			</div>
			<!-- 캐러샐 -->
			<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">

				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
				</div>

				<div class="carousel-inner" style="width: 285px; height: 380px;">
					<div class="carousel-item active">
						<img src="${pageContext.request.contextPath}/assets/image/artist/img/101.jfif" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
						<table class="">
							<tr>
								<td class="">아티스트 이름</td>
								<td class="">장르</td>
								<td class="">자기소개</td>
							</tr>
						</table>
					</div>
					<div class="carousel-item">
						<img src="${pageContext.request.contextPath}/assets/image/artist/img/100.jfif" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
					</div>
					<div class="carousel-item">
						<img src="${pageContext.request.contextPath}/assets/image/artist/img/101.jfif" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
					</div>
					<div class="carousel-item">
						<img src="${pageContext.request.contextPath}/assets/image/artist/img/100.jfif" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
					</div>
					<div class="carousel-item">
						<img src="${pageContext.request.contextPath}/assets/image/artist/img/101.jfif" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
					</div>
				</div>

				<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="visually-hidden">Next</span>
				</button>


			</div>
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
				<c:forEach items="${artistLiveList}" var="aLive">
					<tr>
						<td>${aLive.nickname}</td>
						<td>오후 3:24~</td>
						<td>[위치 보기]</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>

