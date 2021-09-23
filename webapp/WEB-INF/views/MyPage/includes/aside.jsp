<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="mypage-left">
		<ul id="mypage-category">
			<h4>마이페이지</h4>
			<li><a href="${pageContext.request.contextPath}/MyPage/profileModify">프로필 수정</a></li>
			
			<c:if test="${authUser.user_type == 1}">
				<li><a href="${pageContext.request.contextPath}/MyPage/mypageArtist">아티스트 등록</a></li>
			</c:if>
			
			<c:if test="${authUser.user_type == 2}">
				<li><a href="${pageContext.request.contextPath}/MyPage/mypageArtist">아티스트 수정</a></li>			
			</c:if>
			
			<li><a href="${pageContext.request.contextPath}/Company/mypageCompany">제휴사 등록</a></li>
			<li><a href="${pageContext.request.contextPath}/Company/applyList">공연신청 현황</a></li>
		</ul>
	</div>
</body>
</html>