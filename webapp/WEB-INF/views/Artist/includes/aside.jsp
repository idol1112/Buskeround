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
					<div class="carousel-item active" data-bs-interval="3000">
						<img src="${pageContext.request.contextPath}/assets/image/artist/img/2.PNG" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
					</div>
					<div class="carousel-item" data-bs-interval="3000">
						<img src="${pageContext.request.contextPath}/assets/image/artist/img/3.PNG" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
					</div>
					<div class="carousel-item" data-bs-interval="3000">
						<img src="${pageContext.request.contextPath}/assets/image/artist/img/4.PNG" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
					</div>
					<div class="carousel-item" data-bs-interval="3000">
						<img src="${pageContext.request.contextPath}/assets/image/artist/img/7.PNG" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
					</div>
					<div class="carousel-item" data-bs-interval="3000">
						<img src="${pageContext.request.contextPath}/assets/image/artist/img/6.PNG" class="d-block w-100" style="width: 285px; height: 380px; object-fit: cover;">
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

			</div>
		</div>
		<table>
			<tbody>
				<c:forEach items="${artistLiveList}" var="aLive">
					<tr>
						<td>${aLive.nickname}</td>
						<td>${aLive.p_start}~</td>
						<td><a href="${pageContext.request.contextPath}/mapOne?user_no=${aLive.user_no}">[위치 보기]</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>

