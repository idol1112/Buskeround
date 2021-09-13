<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!---- 배너 ---->
<div class=" banner">
  <!-- 블로그 관리 버튼 -->
  <a href="blogModifyForm.jsp">
  <img class="setting" src="../../assets/image/blog/icon/settings.png">
  </a>

  <!-- 배너 안 영상 -->
  <ul class="banner_in">
    <li><a href="">
        2021. 09. 07 <br> 홍대 예술거리
      </a></li>
    <li>
      <div class="stream_box">
        <iframe width="335" height="180" src="https://www.youtube.com/embed/8UUDyQyuvwI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
    </li>
  </ul>

  <!-- 공연시작 버튼 -->
  <form id="form" action="">
    <button type="submit" class="btn_start">공연시작</button>
  </form>

  <!-- sns 버튼 -->
  <a href="">
    <img class="facebook" src="../../assets/image/blog/icon/facebook.png" alt="">
  </a>
  <a href="">
    <img class="instagram" src="../../assets/image/blog/icon/instagram.png" alt="">
  </a>
  <a href="">
    <img class="youtube" src="../../assets/image/blog/icon/youtube.png" alt="">
  </a>
</div>

<!---- 프로필 박스 ---->
<div class="profile_box">
  <div class="main_profile">
    <img src="../../assets/image/blog/img/profile.jpg">
  </div>

  <table class="profile_intr">
    <!-- 장르 -->
    <tr>
      <td class="main_genre"><img src="../../assets/image/blog/icon/hiphop.png"></td>
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
      <td class="history"><img src="../../assets/image/blog/icon/resume.png"></td>
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
      <td><img class="heart" src="../../assets/image/blog/icon/heart1.png"></td>
      <td><img class="like" src="../../assets/image/blog/icon/fan2.png"></td>
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
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body clear-fix">
        <div>
          <label class="modal-label">장소명</label>
          <input type="text" placeholder="장소명을 입력세주세요">
        </div>

        <div>
          <label class="modal-label">위치</label>
          <input type="text" placeholder="위치를 입력세주세요">
        </div>

        <button class="float-end mylocation">내 위치</button>
        <br>

        <!-- 라이브/사진 -->
        <!-- 링크 -->
        <div class="thumbnail">
          <input type="radio" name="thumbnail" id="live" required>
          <label for="live">라이브 스트리밍</label>

          <div class="reveal-if-active">
            <input type="text" id="livelink" class="require-if-active" data-require-pair="#live" placeholder="유튜브 라이브 링크를 입력해주세요.">
          </div>
        </div>

        <!-- 사진 -->
        <div class="thumbnail">
          <input type="radio" name="thumbnail" id="picture" required>
          <label for="picture">사진 업로드</label>

          <div class="reveal-if-active">
            <input type="file" id="thumbnailpicture" class="require-if-active" data-require-pair="#picture">
          </div>
        </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary close" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary">방송 시작</button>
      </div>
    </div>
  </div>
</div>
</body>



<script type="text/javascript">
	$(".btn_start").on("click", function() {
		event.preventDefault();
		console.log("testing")

		$("#exampleModal").modal('show');
	});

	$(".close").on("click", function() {
		console.log("testing")

		$("#exampleModal").modal('hide');
	});
</script>
