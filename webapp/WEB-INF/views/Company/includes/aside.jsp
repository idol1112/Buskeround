<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul id="mypage-category">
		<h4>제휴사 관리</h4>
		<li><a href="${pageContext.request.contextPath}/Company/companyInfo">제휴사 정보</a></li>
		<li><a href="${pageContext.request.contextPath}/Company/stageManage">공연장 관리</a></li>
		<li><a href="${pageContext.request.contextPath}/Company/buskingZoneManage">버스킹존 관리</a></li>
		<li><a href="${pageContext.request.contextPath}/Company/applyManage">공연신청 관리</a></li>
	</ul>

</body>
</html>