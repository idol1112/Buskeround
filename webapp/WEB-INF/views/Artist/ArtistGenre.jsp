<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Artist/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Common/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Artist/ArtistGenre.css">

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
				<h2>장르별 순위</h2>

				<!-- 아티스트 검색 -->
				<div>
					<form action="${pageContext.request.contextPath}/Artist/ArtistSearch" method="get">
						<input name="keyword" type="text" placeholder="아티스트 검색">
						<button class="buttonicon" type="submit">
							<img src="${pageContext.request.contextPath}/assets/image/artist/icon/search.png" style="width: 20px">
						</button>
					</form>
				</div>
			</div>

			<!-- 장르 검색 -->
			<div class="row" id="genrebox">
				<div class="col-xl-3"></div>

				<div class="col-xl-7">
					<ul class="navbar_genremenu">
						<li><a href="${pageContext.request.contextPath}/Artist/ArtistGenre/1">발라드</a></li>
						<li><a href="${pageContext.request.contextPath}/Artist/ArtistGenre/2">댄스</a></li>
						<li><a href="${pageContext.request.contextPath}/Artist/ArtistGenre/3">랩/힙합</a></li>
						<li><a href="${pageContext.request.contextPath}/Artist/ArtistGenre/4">R&B/SOUL</a></li>
						<li><a href="${pageContext.request.contextPath}/Artist/ArtistGenre/5">악기</a></li>
						<li><a href="${pageContext.request.contextPath}/Artist/ArtistGenre/6">기타공연</a></li>
					</ul>
				</div>
			</div>

			<div class="col-xl-3"></div>
			<!-- 종합랭킹 표그래프 -->

			<div class="leftsection-02" style="width: 701px; height: 900px;">
				<table>
					<thead>
						<tr>
							<td>NO</td>
							<td></td>
							<td>활동명</td>
							<td>주요장르</td>
							<td>주요정보</td>
							<td>좋아요</td>
							<td>팬 되기</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ArtistGenre}" var="gList">
							<!--1번-->
							<tr>
								<td>${gList.rn}</td>
								<td><c:if test="${gList.user_img == null}">
										<img src="/Buskeround/assets/image/blog/icon/user.png" style="width: 70px; height: 70px; border-radius: 70%; object-fit: cover;">
									</c:if> <c:if test="${gList.user_img != null}">
										<img src="${pageContext.request.contextPath}/upload/${gList.user_img}" style="width: 70px; height: 70px; border-radius: 70%; object-fit: cover;">
									</c:if></td>
								<td>
									<a href="${pageContext.request.contextPath}/blog/blog_main/${gList.id}">${gList.nickname}</a>
								</td>
								<!-- 장르 -->
								<c:if test="${gList.genre == 1}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/ballade.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${gList.genre == 2}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/dance.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${gList.genre == 3}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${gList.genre == 4}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/soul.png" style="width: 65px"></td>
								</c:if>

								<c:if test="${gList.genre == 5}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/musical.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${gList.genre == 6}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/etc.png" style="width: 60px"></td>
								</c:if>

								<td>
									<div>${gList.genre_type}</div>
									<div>가입연도 ${gList.artist_regdate}년</div>
								</td>
								<c:choose>
									<c:when test="${gList.likeOk == true}">
										<td class="left02_td"><img class="likes" data-no="${gList.user_no}" src="${pageContext.request.contextPath}/assets/image/artist/icon/heart2.png" style="width: 20px"> <span class="likes2-${gList.user_no}">${gList.likes}</span></td>
									</c:when>
									<c:otherwise>
										<td class="left02_td"><img class="likes" data-no="${gList.user_no}" src="${pageContext.request.contextPath}/assets/image/artist/icon/heart1.png" style="width: 20px"> <span class="likes2-${gList.user_no}">${gList.likes}</span></td>
									</c:otherwise>
								</c:choose>
								
								<c:choose>
									<c:when test="${gList.fanOk == true}">
										<td class="left02_td"><img class="fan" data-no="${gList.user_no}" src="${pageContext.request.contextPath}/assets/image/artist/icon/fan2.png" style="width: 20px"><span class="fan2-${gList.user_no}">${gList.fan}</span></td>
									</c:when>
									<c:otherwise>
										<td class="left02_td"><img class="fan" data-no="${gList.user_no}" src="${pageContext.request.contextPath}/assets/image/artist/icon/fan1.png" style="width: 20px"><span class="fan2-${gList.user_no}">${gList.fan}</span></td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<!-- aside  -->
		<c:import url="/WEB-INF/views/Artist/includes/aside.jsp"></c:import>

	</div>



	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	<script type="text/javascript">

// 팬 로딩되었을 때
$(document).ready(function(){

	$.ajax({
		// 컨트롤러에서 대기중인 URL 주소이다.
		url : "${pageContext.request.contextPath}/Artist/FanLoading",

		// HTTP method type(GET, POST) 형식이다.
		type : "post",


		data : {
		user_no : ${authUser.user_no}
		},

		// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
		success : function(result) {
			/*성공시 처리해야될 코드 작성*/

		},

		// 실패할경우 error로 들어온다.
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});  

});


//팬되기 눌렀을 때
$(".fan").on("click",function(){
	
	var artist_no = $(this).data("no");
	
	var thiss = $(this); 
	
	console.log(artist_no);
	
	$.ajax({
		// 컨트롤러에서 대기중인 URL 주소이다.
		url : "${pageContext.request.contextPath}/Artist/Fan",

		// HTTP method type(GET, POST) 형식이다.
		type : "get",
		
		// Json 형태의 데이터로 보낸다.
		contentType : "application/json",

		// Json 형식의 데이터를 받는다.
		dataType : "json",


		data : {
		artist_no : artist_no,
		user_no : ${authUser.user_no}
		},

		// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
		success : function(result) {
			/*성공시 처리해야될 코드 작성*/
		var fan = $(".fan2-" + artist_no + "");
		if (result == false) {
			thiss.attr('src', '${pageContext.request.contextPath}/assets/image/artist/icon/fan2.png');
			var fanV = parseInt(fan.html()) + 1;
			fan.html(fanV);
			
		} else {
			thiss.attr('src', '${pageContext.request.contextPath}/assets/image/artist/icon/fan1.png');
			var fanV = parseInt(fan.html()) - 1;
			fan.html(fanV);

		}
			
		},

		// 실패할경우 error로 들어온다.
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
});


// 좋아요 눌렀을 때
$(".likes").on("click",function(){
	
	var artist_no = $(this).data("no");
	
	var thiss = $(this); 
	
	console.log(artist_no);
	
	$.ajax({
		// 컨트롤러에서 대기중인 URL 주소이다.
		url : "${pageContext.request.contextPath}/Artist/Likes",

		// HTTP method type(GET, POST) 형식이다.
		type : "get",
		
		// Json 형태의 데이터로 보낸다.
		contentType : "application/json",

		// Json 형식의 데이터를 받는다.
		dataType : "json",


		data : {
		artist_no : artist_no,
		user_no : ${authUser.user_no}
		},

		// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
		success : function(result) {
			/*성공시 처리해야될 코드 작성*/
		var likes = $(".likes2-" + artist_no + "");
		if (result == false) {
			thiss.attr('src', '${pageContext.request.contextPath}/assets/image/artist/icon/heart2.png');
			var likesV = parseInt(likes.html()) + 1;
			likes.html(likesV);
			
		} else {
			thiss.attr('src', '${pageContext.request.contextPath}/assets/image/artist/icon/heart1.png');
			var likesV = parseInt(likes.html()) - 1;
			likes.html(likesV);

		}
			
		},

		// 실패할경우 error로 들어온다.
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
});





</script>

</body>
</html>