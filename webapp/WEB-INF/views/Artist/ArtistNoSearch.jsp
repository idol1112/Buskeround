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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Artist/ArtistNoSearch.css">

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
				<div class="nosearch-02">
					<p style="width:701px; height:900px;">입력하신 정보를 찾을 수 없습니다.</p>
				</div>

			</div>
		</div>

		<!-- aside  -->
		<c:import url="/WEB-INF/views/Artist/includes/aside.jsp"></c:import>
		
	</div>      
  
  
  <!-- footer -->
  <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
  
</body>
</html>  