<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="https://fonts.googleapis.com/css2?family=Festive&family=Hind+Siliguri:wght@500&display=swap" rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Main/main.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<body>
  <!-- header -->
  <div id="header">
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
  </div>
  <!-- header -->
  <!-- cont_wrap -->
  <div id="cont_wrap" class="clfix">

    <!-- cont_section -->
    <div id="cont_section" class="pr_none">
      <!-- contents -->
      <div id="conts" class="clfix">
        <!-- 맵 -->
        <div class="map">
          <h2><a>LIVE</a></h2>
          <div id="map"></div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79c2ae6522e8e0df7b0592164f933676"></script>

			<script>

			//===============================기본 MAP 옵션=================================//
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div
			mapOption = {
			    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			    level: 3 // 지도의 확대 레벨
			};

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

			var imageSrc = '/Buskeround/assets/image/map/makericon.png', // 마커이미지의 주소입니다
			imageSize = new kakao.maps.Size(48, 48), // 마커이미지의 크기입니다
			imageOption = {offset: new kakao.maps.Point(26, 40)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
			//============================================================================//

			var positions = [];
			var num = -1;




			        var lat = 37.49771173238123
			            lon = 127.02675145777664

			        var locPosition = new kakao.maps.LatLng(lat, lon)

			        <c:forEach items="${mapList}" var="mapList">
			        num += 1;
			        positions[num] = new kakao.maps.LatLng(${mapList.latitude}, ${mapList.longitude});
			        var data = positions[num];
			        var content = '<div class="wrap">' +
			        '    <div class="info">' +
			        '        <div class="title">' +
			        '            Buskeround' +
			        '        </div>' +
			        '        <div class="body">' +
			        '              <div class="img">' +
			        '		<c:if test="${mapList.user_img != null}">' +
			        '                 <img style="width:100%;height:80px;	" src="${pageContext.request.contextPath }/upload/${mapList.user_img}">' +
			        '		</c:if>' +
			        '		<c:if test="${mapList.user_img == null}">' +
			        '                 <img src="/Buskeround/assets/image/blog/icon/user.png" width="73px">' +
			        '		</c:if>' +
			        '              </div>' +
			        '            <div class="desc">' +
			        '                <div class="ellipsis">활동명 : ${mapList.nickname}</div>' +
			        '                <div class="ellipsis">' +
			        '				 <c:if test="${mapList.genre == 1}">' +
			        '                <div>장르   : 발라드</div>' +
			        '				 </c:if>' +
			        '				 <c:if test="${mapList.genre == 2}">' +
			        '                <div>장르   : 댄스</div>' +
			        '				 </c:if>' +
			        '				 <c:if test="${mapList.genre == 3}">' +
			        '                <div>장르   : 랩/힙합</div>' +
			        '				 </c:if>' +
			        '				 <c:if test="${mapList.genre == 4}">' +
			        '                <div>장르   : R&B/Soul</div>' +
			        '				 </c:if>' +
			        '				 <c:if test="${mapList.genre == 5}">' +
			        '                <div>장르   : 악기</div>' +
			        '				 </c:if>' +
			        '				 <c:if test="${mapList.genre == 6}">' +
			        '                <div>장르   : 기타</div>' +
			        '				 </c:if>' +
			        '                </div>' +
			        '                <div class="jibun ellipsis">${mapList.intro}</div>' +
			        '            </div>' +
			        '        </div>' +
			        '    </div>' +
			        '</div>';

			        displayMarker(locPosition,data,content);
			        </c:forEach>


		//=================== 함수 ===================//
			function displayMarker(locPosition,data,content) {

			    // 마커를 생성합니다
			    var marker = new kakao.maps.Marker({
			        map: map,
			        position: data,
			        image: markerImage
			    });

				//오버레이 생성
			    var overlay = new kakao.maps.CustomOverlay({
			        yAnchor: 3,
			        position: data
			    });

			    overlay.setContent(content);

			    kakao.maps.event.addListener(marker, 'click', function() {
			        overlay.setMap(map);
			    });

			    kakao.maps.event.addListener(map, 'click', function() {
			        overlay.setMap(null);
			    });

			    // 지도 중심좌표를 접속위치로 변경합니다
			    map.setCenter(locPosition);
			}
			//==========================================//



		</script>
        </div>
        <!-- 맵 -->
        <!-- 뉴 아티스트 -->
        <div class="new_artist">
          <h2>NEW ARTIST</h2>
          <!-- 캐러샐 -->
          <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">

            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
            </div>

            <div class="carousel-inner" style="width: 314px; height: 316px;">
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
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>
        <!-- 뉴 아티스트 -->
        <!-- 로그인/신청 -->
        <div class="id_wrap">
          <div class="login_wrap">
            <div class="login_box">

              <!-- 로그인 전 -->
              <c:if test="${authUser == null}">
              <p class="login_msg">버스커라운드를 더 편리하게 이용하세요.</p>
              <a class="link_login" href="${pageContext.request.contextPath}/user/loginForm">Buskeround 로그인</a>
              <div class="sub_area">
              	<div class="look_box">
              		<a href="#" class="link_look id_hv">아이디</a>
              		<a href="#" class="link_look pw_hv">비밀번호찾기</a>

              	</div>
                <div class="link_join">
                  <a class="jn_hv" href="${pageContext.request.contextPath}/user/agreement">회원가입</a>
                </div>
              </div>
              </c:if>
              <!-- 로그인 전 -->
              <!-- 로그인 후 -->
              <c:if test="${authUser != null}">
              <div class="sc_user">
              	<a href="${pageContext.request.contextPath}/user/logout" class="btn_logout">로그아웃</a>
              	<c:if test="${authUser.user_img == null}">
	          	<img id="my_profile" src="/Buskeround/assets/image/blog/icon/user.png">
          		</c:if>
          		<c:if test="${authUser.user_img != null}">
	          	<img id="my_profile" src="${pageContext.request.contextPath}/upload/${sessionScope.authUser.user_img}">
          		</c:if>
          		<div class="user_info">
	          		<div class="info_box">
	          			<a href="${pageContext.request.contextPath}/blog/blog_main/${sessionScope.authUser.id}">${authUser.nickname}님</a>
	          		</div>
	          		<div class="new_box">
	          			<a class="mypage" href="${pageContext.request.contextPath}/MyPage/profileModify">마이페이지</a>
	          			<a class="fan-list" href="${pageContext.request.contextPath}/Artist/ArtistFanList">팬등록리스트</a>
	          		</div>
	          	</div>
              </div>
              </c:if>
            </div>
          </div>
          <div class="apply_wrap">
          	<c:if test="${authUser == null}">
            <div class="artist_btn" onclick="location.href='${pageContext.request.contextPath}/user/loginForm'">
            	아티스트등록
            </div>
            <div class="company_btn" onclick="location.href='${pageContext.request.contextPath}/user/loginForm'">
            	제휴사등록
            </div>
            </c:if>

            <c:if test="${authUser != null}">
	          	<c:if test="${authUser.user_type == 1}">
	            <div class="artist_btn" onclick="location.href='${pageContext.request.contextPath}/MyPage/mypageArtist'">
					아티스트등록
	            </div>
	            </c:if>
	            <c:if test="${authUser.user_type == 2}">
	            <div class="artist_btn" onclick="location.href='${pageContext.request.contextPath}/blog/blog_main/${sessionScope.authUser.id}'">
					내 블로그
	            </div>
	            </c:if>
	            <c:if test="${authUser.company_type == 1}">
	            <div class="company_btn" onclick="location.href='${pageContext.request.contextPath}/Company/mypageCompany'">
	            	제휴사등록
	            </div>
	            </c:if>
	            <c:if test="${authUser.company_type == 2}">
	            <div class="company_btn" onclick="location.href='${pageContext.request.contextPath}/Company/companyInfo'">
	            	제휴사관리
	            </div>
	            </c:if>
            </c:if>
          </div>
          <div class="photo_wrap">
              BUSKEROUND
          </div>

        </div>
        <!-- 로그인/신청 -->
        <!-- 라이브/갤러리 -->
        <div class="artist_wrap">
        <!-- Artist Live -->
          <div class="live_wrap">
            <h2>ON AIR</h2>

            <div class="live_box">
              <c:forEach items="${artistLiveList}" var="aList" begin="0" end="3">
                <div class="live_item">
                  <div class="live_item_caption">
                    <h3>${aList.nickname}</h3>
                    <p>${aList.p_start}</p>
                  </div>
                  <img id="img_item" src="${pageContext.request.contextPath}/upload/${aList.user_img}" onclick="location.href='${pageContext.request.contextPath}/blog/blog_main/${aList.id}'" alt="" />
                </div>
              </c:forEach>
            </div>
          </div>

          <!-- Gallery -->
          <div class="gallery_wrap">
            <h2>GALLERY</h2>

            <div class="gallery_box">
              <c:forEach items="${galleryList}" var="gList">
                <div class="gallery_item">
                  <div class="gallery_item_caption">
                    <h3>${gList.title}</h3>
                    <p>${gList.reg_date}</p>
                    <p id="hit">조회수: ${gList.hit}</p>
                  </div>
                  <img id="img_item" src="${pageContext.request.contextPath}/upload/${gList.p_img}" onclick="gallery_item(${gList.post_no})" data-no="${gList.post_no}" alt="" />
                </div>
              </c:forEach>
            </div>
          </div>
        </div>
        <!-- 라이브/갤러리 -->
        <!-- 아티스트 랭킹 -->
        <div class="artist_rank">
          <h2>BUSKER CHART</h2>
          <table class="artist_chart" style="width: 100%">
          	<tbody>
          		<c:forEach items="${artistRankingList}" var="aList" begin="0" end="0">
          		<tr class="artist_row active">
          			<td style="width: 20%;"> <strong class="rank">${aList.rn}</strong></td>
          			<td style="width: 40%;" class="artist_name"><a href="${pageContext.request.contextPath}/blog/blog_main/${aList.id}"><img class="prof_img1" src="${pageContext.request.contextPath}/upload/${aList.user_img}">${aList.nickname}</a></td>
          			    <c:if test="${aList.genre == 1}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/ballade.png"></td>
					    </c:if>

					    <c:if test="${aList.genre == 2}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/dance.png"></td>
					    </c:if>

					    <c:if test="${aList.genre == 3}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png"></td>
					    </c:if>

					    <c:if test="${aList.genre == 4}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/soul.png"></td>
					    </c:if>

					    <c:if test="${aList.genre == 5}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/musical.png"></td>
					    </c:if>

					    <c:if test="${aList.genre == 6}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/etc.png"></td>
					    </c:if>

          		</c:forEach>
          		<c:forEach items="${artistRankingList}" var="aList" begin="1" end="9">
          		<tr class="artist_row">
          			<td style="width: 20%;"> <strong class="rank">${aList.rn}</strong></td>
          			<td style="width: 40%;" class="artist_name"><a href="${pageContext.request.contextPath}/blog/blog_main/${aList.id}"><img class="prof_img" src="${pageContext.request.contextPath}/upload/${aList.user_img}">${aList.nickname}</a></td>
         			    <c:if test="${aList.genre == 1}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/ballade.png"></td>
					    </c:if>

					    <c:if test="${aList.genre == 2}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/dance.png"></td>
					    </c:if>

					    <c:if test="${aList.genre == 3}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png"></td>
					    </c:if>

					    <c:if test="${aList.genre == 4}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/soul.png"></td>
					    </c:if>

					    <c:if test="${aList.genre == 5}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/musical.png"></td>
					    </c:if>

					    <c:if test="${aList.genre == 6}">
					        <td style="width: 40%;" class="artist_genre"><img class="rank_img" src="${pageContext.request.contextPath}/assets/image/blog/icon/etc.png"></td>
					    </c:if>
          		</tr>
          		</c:forEach>
          	</tbody>
          </table>
        </div>
        <!-- 아티스트 랭킹 -->
      </div>
      <!-- contents -->
    </div>
    <!-- cont_section -->
  </div>
  <!-- cont_wrap -->
  <!-- footer -->
  <div id="footer">
    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
  </div>
  <!-- footer -->

  <!-- modal -->
  <div class="modal fade" id="img_modal">
    <div class="modal-dialog" id="img_dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title"></h4>

        </div>
        <div class="modal-body">
          <img id="modal_img" src="">
          <div class="modal_content" id="modal_text"></div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="btn_close">확인</button>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!------ ////(modal)//// ------>

</body>

<script type="text/javascript">
//사진 클릭했을 때
function gallery_item(post_no) {

	$.ajax({
		// 컨트롤러에서 대기중인 URL 주소이다.
		url : "${pageContext.request.contextPath}/api/blog/gallery/" + post_no,

		// HTTP method type(GET, POST) 형식이다.
		type : "GET",

		// Json 형식의 데이터를 받는다.
		dataType : "json",

		// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
		success : function(result) {
			/*성공시 처리해야될 코드 작성*/

			console.log(result);

			$(".modal-title").text(result.title);

			$("#modal_img").attr("src", "${pageContext.request.contextPath}/upload/" + result.p_img);

			$(".modal_content").append(result.content);

		},

		// 실패할경우 error로 들어온다.
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});

	$("#img_modal").modal('show');

};

	$("#btn_close").on("click", function() {
		$("#img_modal").modal('hide');
	});


	// Busker Chart
	  $(".artist_row").hover(function () {

    		$(function() {
    			  $(".artist_row").on("mouseover", function(e){
    			    $(".artist_row").removeClass("active");
    			    $(".artist_row").find('img').hide();
    			    $(".rank_img").show();
    			    $(this).addClass("active");
    			    $(this).find('img').show();
    			  })
   			});
	  });

	  $(document).ready(function(){
		     $(".prof_img").hide();
	  });
</script>
</html>