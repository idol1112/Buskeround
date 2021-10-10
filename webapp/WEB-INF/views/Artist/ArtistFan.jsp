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
        	<!-- 팬 많은 순 -->
            <div class="leftsection-01">
                <h2>팬 많은 순</h2>
                
				<!-- 아티스트 검색 -->
				<div>
					<form action="" method="get">
						<input type="text" placeholder="아티스트 검색">
						<button class="buttonicon" type="button">
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
                            <td>    </td>
                            <td>활동명</td>
                            <td>주요장르</td>
                            <td>주요정보</td>
                            <td>좋아요</td>
                            <td>팬 되기</td>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach items="${artistFan}" var="fList">
                        <!--1번-->
                        <tr>
                            <td>${fList.rn}</td>
							<td>
								<c:if test="${fList.user_img == null}">
								<img src="/Buskeround/assets/image/blog/icon/user.png" style="width: 70px; height: 70px; border-radius: 70%; object-fit: cover;">
								</c:if>
								<c:if test="${fList.user_img != null}">
								<img src="${pageContext.request.contextPath}/upload/${fList.user_img}" style="width: 70px; height: 70px; border-radius: 70%; object-fit: cover;">
								</c:if>
							</td>
                            <td>
                                <div>${fList.nickname}</div>
                                <div>
                                	<img src="${pageContext.request.contextPath}/assets/image/artist/icon/youtube.png" style="width:20px">
                                    <img src="${pageContext.request.contextPath}/assets/image/artist/icon/facebook.png" style="width:20px">
                                    <img src="${pageContext.request.contextPath}/assets/image/artist/icon/insta.png" style="width:20px">
                                </div>
                            </td>
                            <!-- 장르 -->
							<c:if test="${fList.genre == 1}">
								<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/ballade.png" style="width: 60px"></td>
							</c:if>

							<c:if test="${fList.genre == 2}">
								<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/dance.png" style="width: 60px"></td>
							</c:if>

							<c:if test="${fList.genre == 3}">
								<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png" style="width: 60px"></td>
							</c:if>

							<c:if test="${fList.genre == 4}">
								<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/soul.png" style="width: 65px"></td>
							</c:if>

							<c:if test="${fList.genre == 5}">
								<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/musical.png" style="width: 60px"></td>
							</c:if>

							<c:if test="${fList.genre == 6}">
								<td class="articon"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/etc.png" style="width: 60px"></td>
							</c:if>

                            <td>
                                <div>${fList.genre_type}</div>
                                <div>가입연도 ${fList.artist_regdate}년</div>
                            </td>
                            <td>
                                <img src="${pageContext.request.contextPath}/assets/image/artist/icon/heart2.png" style="width:20px">
                                <span>${fList.likes}</span>
                            </td>
                            <td>
                                <img src="${pageContext.request.contextPath}/assets/image/artist/icon/fan1.png" style="width:20px">
                                <span>${fList.fan}</span>
                            </td>
                        </tr>
					  </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

	  <!-- nav_artist  -->
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


// 팬되기 눌렀을 때
$(".fan").on("click",function(){
	
	$(this).attr('src', '${pageContext.request.contextPath}/assets/image/artist/icon/fan2.png');
	var artist_no = $(this).data("no");
	
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