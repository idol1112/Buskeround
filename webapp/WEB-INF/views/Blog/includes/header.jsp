<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!---- 배너 ---->
<div class=" banner">
  <!-- 블로그 관리 버튼 -->
  <a href="blogModifyForm.jsp">
    <img class="setting" src="${pageContext.request.contextPath}/assets/image/blog/icon/settings.png">
  </a>

  <!-- 공연시작 버튼 -->
  <form id="form" action="">
    <button type="submit" class="btn_start">공연시작</button>
  </form>

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
    <img src="${pageContext.request.contextPath}/assets/image/blog/img/profile.jpg">
  </div>

  <table class="profile_intr">
    <!-- 장르 -->
    <tr>
      <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png"></td>
    </tr>

    <!-- 활동명 -->
    <tr>
      <td class="main_name"><a href="blog_main.jsp">우주 멋쟁이</a></td>
    </tr>

    <!-- 한 줄 소개 -->
    <tr>
      <td class="main_intr">안녕하세요. 깊은 밤 이야기를 노래하는 아티스트 입니다. :)</td>
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
          <input type="text" placeholder="위치를 입력세주세요" value="홍대 앞마당">
        </div>

        <button class="float-end mylocation">내 위치</button>
        <br>

        <!-- 라이브/사진 -->
        <!-- 링크 -->
        <input type="hidden" id="livelink">

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
        <button type="button" class="btn btn-primary close" id="perform_start">방송 시작</button>
      </div>
    </div>
  </div>
</div>
</body>



<script type="text/javascript">

	// 썸네일 등록 버튼 숨기기(모달창)
	$(".img_box").hide();

	// 공연시작 버튼 눌렀을 때(배너)
	$(".btn_start").on("click", function() {
		event.preventDefault();

		$("#exampleModal").modal('show');

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=UCxd9m2kFCFN1nIWB8ZOscqg&eventType=live&type=video&key=AIzaSyDTEc6Ma-ieVQBI8oQWgVxRXCHIOIMuFtk",

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

				 for (var i = 0; i < result.items.length; i++) {
				     var items = result.items[i];

				     var title = items.snippet.title;
				     var video_id = items.id.videoId;
				     var video_img = items.snippet.thumbnails.high.url;

				     $("#title").val(title);
				     $("#livelink").val(video_id);

				     if (result === null) {
						$(".img_box").show();
					}
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
		var perform_data = {
    			title : asd,
    			p_start : 123,
    			p_img : 123,
    			live_url : 123
		};

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/blog/dbSave",

			// HTTP method type(GET, POST) 형식이다.
			type : "post",

			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",

			// Json 형식의 데이터를 받는다.
			dataType : "json",

			data : {
				perform_data
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

	$(".close").on("click", function() {
		$("#exampleModal").modal('hide');
	});
</script>
