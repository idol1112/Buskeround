<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

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
					<form action="${pageContext.request.contextPath}/Artist/ArtistSearch" method="get">
						<input name="keyword" type="text" placeholder="아티스트 검색">
						<button class="buttonicon" type="submit">
							<img src="${pageContext.request.contextPath}/assets/image/artist/icon/search.png" style="width: 20px">
						</button>
					</form>
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
							<td>주요정보</td>
							<td>좋아요</td>
							<td>팬 되기</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${artistRenkList}" var="aList">

							<!--1번-->
							<tr>
								<td>${aList.rn}</td>
								<td><c:if test="${aList.user_img == null}">
										<img src="/Buskeround/assets/image/blog/icon/user.png" style="width: 70px; height: 70px; border-radius: 70%; object-fit: cover;">
									</c:if> <c:if test="${aList.user_img != null}">
										<img src="${pageContext.request.contextPath}/upload/${aList.user_img}" style="width: 70px; height: 70px; border-radius: 70%; object-fit: cover;">
									</c:if></td>
								<td><a href="${pageContext.request.contextPath}/blog/blog_main/${aList.id}">${aList.nickname}</a>
									<div>
										<c:if test="${nList.y_url != null}">
											<img src="${pageContext.request.contextPath}/assets/image/artist/icon/youtube.png" style="width: 20px">
										</c:if>
										<c:if test="${nList.f_url != null}">
											<img src="${pageContext.request.contextPath}/assets/image/artist/icon/facebook.png" style="width: 20px">
										</c:if>
										<c:if test="${nList.i_url != null}">
											<img src="${pageContext.request.contextPath}/assets/image/artist/icon/insta.png" style="width: 20px">
										</c:if>
									</div></td>
								<!-- 장르 -->
								<c:if test="${aList.genre == 1}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/ballade.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${aList.genre == 2}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/dance.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${aList.genre == 3}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${aList.genre == 4}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/soul.png" style="width: 65px"></td>
								</c:if>

								<c:if test="${aList.genre == 5}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/musical.png" style="width: 60px"></td>
								</c:if>

								<c:if test="${aList.genre == 6}">
									<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/etc.png" style="width: 60px"></td>
								</c:if>
								<td>
									<div>${aList.genre_type}</div>
									<div>가입연도 ${aList.artist_regdate}년</div>
								</td>
									<td class="left02_td"><img class="likes" src="${pageContext.request.contextPath}/assets/image/artist/icon/heart1.png" style="width: 20px"> <span>${aList.likes}</span></td>
								<c:choose>
									<c:when test="${aList.fanOk == true}">
										<td class="left02_td"><img class="fan" data-no="${aList.user_no}" src="${pageContext.request.contextPath}/assets/image/artist/icon/fan2.png" style="width: 20px"><span>${aList.fan}</span></td>
									</c:when>
									<c:otherwise>
										<td class="left02_td"><img class="fan" data-no="${aList.user_no}" src="${pageContext.request.contextPath}/assets/image/artist/icon/fan1.png" style="width: 20px"><span>${aList.fan}</span></td>
									</c:otherwise>
								</c:choose>
								
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<!-- aside -->
		<c:import url="/WEB-INF/views/Artist/includes/aside.jsp"></c:import>

	</div>

	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>

<script type="text/javascript">

// 팬되기 눌렀을 때
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
			console.log(result)
			
			if (result == false) {
				console.log("성공~");
				thiss.attr('src', '${pageContext.request.contextPath}/assets/image/artist/icon/fan2.png');
				
			} else {
				thiss.attr('src', '${pageContext.request.contextPath}/assets/image/artist/icon/fan1.png');
				
				
				
			}
		},

		// 실패할경우 error로 들어온다.
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
});





</script>

</html>