<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!---- 배너 ---->
<div class="banner">
  <!-- 블로그 관리 버튼 -->
  <a href="${pageContext.request.contextPath}/blog/blog_modify/${blogVo.id}">
    <img class="setting" src="${pageContext.request.contextPath}/assets/image/blog/icon/settings.png">
  </a>

  <!-- 공연시작 버튼 -->
  <c:if test="${blogVo.user_no == authUser.user_no}">
    <c:if test="${blogVo.live == 0}">
        <button type="button" class="btn_start">공연시작</button>
    </c:if>

    <c:if test="${blogVo.live == 1}">
        <button type="button" class="btn_end">공연종료</button>
    </c:if>
  </c:if>

  <!-- sns 버튼 -->
  <a href="">
    <img class="facebook" src="${pageContext.request.contextPath}/assets/image/blog/icon/facebook.png" alt="">
  </a>
  <a href="">
    <img class="instagram" src="${pageContext.request.contextPath}/assets/image/blog/icon/instagram.png" alt="">
  </a>
  <a href="">
    <img class="youtube" src="${pageContext.request.contextPath}/assets/image/blog/icon/youtube.png" alt="">
  </a>
</div>

<!---- 프로필 박스 ---->
<div class="profile_box">
  <div class="main_profile">
    <img src="/Buskeround${blogVo.user_img}">
  </div>

  <table class="profile_intr">
    <!-- 장르 -->
    <c:if test="${blogVo.genre == 1}">
      <tr>
        <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/ballade.png"></td>
      </tr>
    </c:if>

    <c:if test="${blogVo.genre == 2}">
      <tr>
        <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/dance.png"></td>
      </tr>
    </c:if>

    <c:if test="${blogVo.genre == 3}">
      <tr>
        <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png"></td>
      </tr>
    </c:if>

    <c:if test="${blogVo.genre == 4}">
      <tr>
        <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/soul.png"></td>
      </tr>
    </c:if>

    <c:if test="${blogVo.genre == 5}">
      <tr>
        <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/musical.png"></td>
      </tr>
    </c:if>

    <c:if test="${blogVo.genre == 6}">
      <tr>
        <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/etc.png"></td>
      </tr>
    </c:if>

    <!-- 활동명 -->
    <tr>
      <td class="main_name"><a href="blog_main.jsp">${blogVo.nickname}</a></td>
    </tr>

    <!-- 한 줄 소개 -->
    <tr>
      <td class="main_intr">${blogVo.intro}</td>
    </tr>
  </table>

  <!---- 이력사항 ---->
  <table class="profile_his">
    <tr>
      <td class="history"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/resume.png"></td>
      <td></td>
    </tr>
    <tr>
      <td class="history1">- 전국노래자랑 185회 대상</td>
      <td class="history2">- 인기가요 283회 출연</td>
    </tr>
    <tr>
      <td class="history1">- 복면가왕 29회 3연승</td>
      <td></td>
    </tr>
    <tr>
      <td class="history1">- 불후의명곡 29회 17연승</td>
      <td></td>
    </tr>
  </table>

  <!---- 좋아요&팬 박스 ---->
  <table class="like_box">
    <!-- 좋아요&팬 버튼 -->
    <tr>
      <td><img class="heart" src="${pageContext.request.contextPath}/assets/image/blog/icon/heart1.png"></td>
      <td><img class="like" src="${pageContext.request.contextPath}/assets/image/blog/icon/fan2.png"></td>
    </tr>

    <!-- 좋아요&팬 Count-->
    <tr>
      <td class="heart_count" rowspan="2">23</td>
      <td class="like_count" rowspan="2">4235</td>
    </tr>
  </table>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">공연시작</h5>
      </div>
      <div class="modal-body clear-fix" id="modal_body">
        <div>
          <label class="modal-label" id="modal_label">제목</label>
          <input type="text" placeholder="제목을 입력세주세요" id="title">
        </div>

        <div>
          <label class="modal-label" id="modal_label">위치</label>
          <input type="text" id="address" placeholder="위치를 입력세주세요" value="홍대 앞마당">
        </div>

        <button class="float-end mylocation">내 위치</button>
        <br>

        <!-- 라이브/사진 -->
        <!-- 링크 -->
        <input type="hidden" id="livelink">

        <!-- 공연시작 시간 -->
        <input type="hidden" id="time_start">

        <!-- 사진 -->
        <div class="thumbnail">
          <div class="img_box">
            <label for="picture">사진 업로드</label>
            <input type="file" id="thumbnailpicture" class="require-if-active" data-require-pair="#picture">
          </div>
        </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary close" data-dismiss="modal">취소</button>
        <button type="submit" class="btn btn-primary close" id="perform_start">방송 시작</button>
      </div>
    </div>
  </div>
</div>
</body>



<script type="text/javascript">

	// 유튜브 Channel ID 추출
	var youtube_url = "${blogVo.y_url}";
	var channel_id = youtube_url.slice(-24);

	// 썸네일 등록 버튼 숨기기(모달창)
	$(".img_box").hide();

	// 공연종료 버튼 눌렀을 때(배너)
	$(".btn_end").on("click", function() {

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/blog/live_end",

			// HTTP method type(GET, POST) 형식이다.
			type : "get",

			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",

			data : {
				user_no : ${blogVo.user_no}
			},

			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/

				location.reload();

			},

			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	// 공연시작 버튼 눌렀을 때(배너)
	$(".btn_start").on("click", function() {
		event.preventDefault();

		$("#exampleModal").modal('show');

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=" + channel_id + "&eventType=live&type=video&key=AIzaSyDTEc6Ma-ieVQBI8oQWgVxRXCHIOIMuFtk",

			// HTTP method type(GET, POST) 형식이다.
			type : "get",

			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",

			// Json 형식의 데이터를 받는다.
			dataType : "json",

			data : {

			},

			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/

				// 유튜브 방송 중이 아닐 때 사진 올리는 버튼 보이기
				if (result.pageInfo.totalResults == 0) {
					$(".img_box").show();
				}

				 for (var i = 0; i < result.items.length; i++) {
				     var items = result.items[i];

				     var title = items.snippet.title;
				     var video_id = items.id.videoId;
				     var video_img = items.snippet.thumbnails.high.url;

				     $("#title").val(title);
				     $("#livelink").val(video_id);
				 }
			},

			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});


	// 공연시작 버튼 눌렀을 때(모달)
	$("#perform_start").on("click", function() {

		// 공연 데이터 묶기
		var postVo = {
				user_no : ${blogVo.user_no},
    			title : $("#title").val(),
    			p_img :  $("#thumbnailpicture").val(),
    			live_url : $("#livelink").val(),
    			address : $("#address").val()
		};

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/blog/live_start",

			// HTTP method type(GET, POST) 형식이다.
			type : "post",

			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",

			// Json 형식의 데이터를 받는다.
			dataType : "json",

			data : JSON.stringify(postVo),

			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/
				location.reload();
			},

			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	// 모달창 닫기
	$(".close").on("click", function() {
		$("#exampleModal").modal('hide');
	});

</script>
