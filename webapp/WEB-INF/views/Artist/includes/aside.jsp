<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="rightsection">
	<div class="rightsection-01">
		<!-- 뉴아티스트 배너 -->
		<div class="rightsection-01-01">
			<h3>NEW ARTIST</h3>
			<div>
				<img src="${pageContext.request.contextPath}/assets/image/artist/icon/circle1.png" style="width: 8px"> 
				<img src="${pageContext.request.contextPath}/assets/image/artist/icon/circle1.png" style="width: 8px"> 
				<img src="${pageContext.request.contextPath}/assets/image/artist/icon/circle2.png" style="width: 8px"> 
				<img src="${pageContext.request.contextPath}/assets/image/artist/icon/circle1.png" style="width: 8px"> 
				<img src="${pageContext.request.contextPath}/assets/image/artist/icon/circle1.png" style="width: 8px">
			</div>
		</div>
		<div style="width: 285px; height: 380px;">
			<img src="${pageContext.request.contextPath}/assets/image/artist/img/101.jfif" style="width: 285px; height: 285px; object-fit: cover;">
			<div style="max-width: 285px; max-height: 95px; width: 285px; height: 95px; background-color: #00ff00">
				<p>뉴아티스트 글씨 넣기뉴아티스트 글씨 넣기뉴아티스트 글씨 넣기뉴아티스트 글씨 넣기뉴아티스트</p>
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