<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- nav_artist  -->
	<div class="row" id="artbox">
		<div class="col-xl-3"></div>

		<div class="col-xl-7">
			<ul class="navbar_artmenu">
				<li><a href="${pageContext.request.contextPath}/Artist/ArtistRenk">종합랭킹</a></li>
				<li><a href="${pageContext.request.contextPath}/Artist/ArtistFan">팬 많은 순</a></li>
				<li><a href="${pageContext.request.contextPath}/Artist/ArtistNew">NEW 아티스트순</a></li>
				<li><a href="${pageContext.request.contextPath}/Artist/ArtistGenre/1">장르별 순위</a></li>
				<c:if test="${authUser.user_no != null}">
					<li><a href="${pageContext.request.contextPath}/Artist/ArtistFanList">팬 등록 리스트</a></li>
				</c:if>

			</ul>
		</div>
	</div>

	<div class="col-xl-3"></div>
</body>
</html>