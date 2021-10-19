<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!---- 배너 ---->
<c:choose>
  <c:when test="${blogVo.banner == null }">
    <div class="banner" style='background-image: url("/Buskeround/assets/image/blog/img/defaultbanner.jpg"); background-size: 100% 100%;',>
  </c:when>
  <c:otherwise>
    <div class="banner" style='background-image: url("${pageContext.request.contextPath}/upload/${blogVo.banner}");background-size: 100% 100%;'>
  </c:otherwise>
</c:choose>

<!-- 블로그 관리 버튼 -->
<c:if test="${blogVo.user_no == authUser.user_no}">
  <a href="${pageContext.request.contextPath}/blog/blog_modify/${blogVo.id}">
    <img class="setting" src="${pageContext.request.contextPath}/assets/image/blog/icon/setting.png">
  </a>
</c:if>

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
<c:choose>
  <c:when test="${blogVo.user_no == authUser.user_no}">
    <c:if test="${blogVo.f_url != null}">
      <a href="${blogVo.f_url}" id="facebook_url" target='_blank'>
        <img class="facebook" src="${pageContext.request.contextPath}/assets/image/blog/icon/facebook.png" alt="">
      </a>
    </c:if>

    <c:if test="${blogVo.i_url != null}">
      <a href="${blogVo.i_url}" id="instagram_url" target='_blank'>
        <img class="instagram" src="${pageContext.request.contextPath}/assets/image/blog/icon/instagram.png" alt="">
      </a>
    </c:if>

    <c:if test="${blogVo.y_url != null}">
      <a href="${blogVo.y_url}" id="youtube_url" target='_blank'>
        <img class="youtube" src="${pageContext.request.contextPath}/assets/image/blog/icon/youtube.png" alt="">
      </a>
    </c:if>
  </c:when>
  <c:otherwise>
    <c:if test="${blogVo.f_url != null}">
      <a href="${blogVo.f_url}" id="facebook_url" target='_blank'>
        <img class="facebook" src="${pageContext.request.contextPath}/assets/image/blog/icon/facebook.png" alt="" style="margin-right: 10px;">
      </a>
    </c:if>

    <c:if test="${blogVo.i_url != null}">
      <a href="${blogVo.i_url}" id="instagram_url" target='_blank'>
        <img class="instagram" src="${pageContext.request.contextPath}/assets/image/blog/icon/instagram.png" alt="">
      </a>
    </c:if>

    <c:if test="${blogVo.y_url != null}">
      <a href="${blogVo.y_url}" id="youtube_url" target='_blank'>
        <img class="youtube" src="${pageContext.request.contextPath}/assets/image/blog/icon/youtube.png" alt="">
      </a>
    </c:if>
  </c:otherwise>
</c:choose>
</div>

<!---- 프로필 박스 ---->
<div class="profile_box">
  <div class="main_profile">
    <c:if test="${blogVo.user_img == null}">
      <img class="profile_picture" src="/Buskeround/assets/image/blog/icon/user.png">
    </c:if>
    <c:if test="${blogVo.user_img != null}">
      <img class="profile_picture" src="${pageContext.request.contextPath}/upload/${blogVo.user_img}">
    </c:if>
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
      <td class="main_name"><a href="${pageContext.request.contextPath}/blog/blog_main/${blogVo.id}">${blogVo.nickname}</a></td>
    </tr>

    <!-- 한 줄 소개 -->
    <tr>
      <td class="main_intr">${blogVo.intro}</td>
    </tr>
  </table>

  <!---- 이력사항 ---->
  <c:if test="${resumeList[0].resume_content != null}">
  <c:if test="${fn:length(resumeList) > 0}">
    <table class="profile_his">
      <tr>
        <td class="history"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/resume.png"></td>
        <td></td>
      </tr>
      <tr>
        <c:if test="${fn:length(resumeList) > 0}">
          <td class="history1">- ${resumeList[0].resume_content}</td>
        </c:if>
        <c:if test="${fn:length(resumeList) > 3}">
          <td class="history2">- ${resumeList[3].resume_content}</td>
        </c:if>
      </tr>
      <tr>
        <c:if test="${fn:length(resumeList) > 1}">
          <td class="history1">- ${resumeList[1].resume_content}</td>
        </c:if>
        <c:if test="${fn:length(resumeList) > 4}">
          <td class="history2">- ${resumeList[4].resume_content}</td>
        </c:if>
      </tr>
      <tr>
        <c:if test="${fn:length(resumeList) > 2}">
          <td class="history1">- ${resumeList[2].resume_content}</td>
        </c:if>
        <c:if test="${fn:length(resumeList) > 5}">
          <td class="history2">- ${resumeList[5].resume_content}</td>
        </c:if>
      </tr>
    </table>
  </c:if>
  </c:if>

  <!---- 좋아요&팬 박스 ---->
  <table class="like_box">
    <!-- 좋아요&팬 버튼 -->
    <tr>
		<c:choose>
			<c:when test="${blogVo.likeOk == true}">
				<td><img class="heart" data-no="${blogVo.user_no}" src="${pageContext.request.contextPath}/assets/image/blog/icon/heart2.png"></td>
			</c:when>
			<c:otherwise>
				<td><img class="heart" data-no="${blogVo.user_no}" src="${pageContext.request.contextPath}/assets/image/blog/icon/heart1.png"></td>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${blogVo.fanOk == true}">
				<td><img class="like" data-no="${blogVo.user_no}" src="${pageContext.request.contextPath}/assets/image/blog/icon/fan2.png"></td>
			</c:when>
			<c:otherwise>
				<td><img class="like" data-no="${blogVo.user_no}" src="${pageContext.request.contextPath}/assets/image/blog/icon/fan1.png"></td>
			</c:otherwise>
		</c:choose>
    </tr>

    <!-- 좋아요&팬 Count-->
    <tr>
      <td class="heart_count" rowspan="2"><span class="likes2-${blogVo.user_no}">${blogVo.likes}</span></td>
      <td class="like_count" rowspan="2"><span class="fan2-${blogVo.user_no}">${blogVo.fan}</span></td>
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
          <input type="text" id="address" placeholder="위치를 입력세주세요" value="">
          <input type="hidden" id="lat" value="37.49791369024624">
          <input type="hidden" id="lng" value="127.02648076037798">
        </div>

        <br>

        <!-- 링크 -->
        <input type="hidden" id="livelink">

        <!-- 공연시작 시간 -->
        <input type="hidden" id="time_start">

        <!-- 사진 -->
        <div class="thumbnail">
          <div class="img_box">
            <label for="picture">사진 업로드</label>
            <input type="file" id="file1" name="file1">
          </div>
        </div>
      </div>

      <div class="modal-footer">
        <button class="btn btn-primary close" id="perform_start">방송 시작</button>
        <button type="button" class="btn btn-secondary close" data-dismiss="modal">취소</button>
      </div>

      <input type="hidden" id="p_img" value="1">
    </div>
  </div>
</div>
</body>

<script type="text/javascript">

  //SNS 연결
  var youtube_url = "${blogVo.y_url}";
  $("#youtube_url").attr("href", youtube_url);

  var instagram_url = "${blogVo.i_url}";
  $("#instagram_url").attr("href", instagram_url);

  var facebook_url = "${blogVo.f_url}";
  $("#facebook_url").attr("href", facebook_url);

  // 유튜브 Channel ID 추출
  var channel_id = null;

  if (youtube_url == '') {
    channel_id = 1;

  } else {
    channel_id = youtube_url.slice(-24);
  }

  // 썸네일 등록 버튼 숨기기(모달창)
  $(".img_box").hide();

  // 유튜브 방송 중이 아닐 때 사진 올리는 버튼 보이기
  if (channel_id === 1) {
    $(".img_box").show();
  };

  // 공연종료 버튼 눌렀을 때(배너)
  $(".btn_end").on("click", function() {

	  var postVo = {
		  	user_no : ${blogVo.user_no}
	  };

    $.ajax({
      // 컨트롤러에서 대기중인 URL 주소이다.
      url : "${pageContext.request.contextPath}/api/blog/live_end",

      // HTTP method type(GET, POST) 형식이다.
      type : "POST",

      // Json 형태의 데이터로 보낸다.
      contentType : "application/json",

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

  // 공연시작 버튼 눌렀을 때(배너)
  $(".btn_start").on("click", function() {
    event.preventDefault();



    $("#exampleModal").modal('show');

    if (channel_id.length === 24) {
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

				console.log(video_img);

               $("#title").val(title);
               $("#livelink").val(video_id);
               $("#p_img").val(video_img);
           }
        },

        // 실패할경우 error로 들어온다.
        error : function(XHR, status, error) {
          console.error(status + " : " + error);
        }
      });
    };
  });


  // 공연시작 버튼 눌렀을 때(모달)
  $("#perform_start").on("click", function() {

    // 공연 데이터 묶기
    var postVo = {
        user_no : ${blogVo.user_no},
          title : $("#title").val(),
          p_img :  $("#p_img").val(),
          live_url : $("#livelink").val(),
          address : $("#address").val(),
          latitude : $("#lat").val(),
          longitude : $("#lng").val()
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

        console.log(result);

        if (result === 1) {
            var form = new FormData();

            form.append( "file1", $("#file1")[0].files[0] );

             jQuery.ajax({

                 url : "${pageContext.request.contextPath}/api/blog/upload/${blogVo.user_no}",

                 type : "post",

                 processData : false,

                 contentType : false,

                 data : form,

                 success : function(result) {
                   /*성공시 처리해야될 코드 작성*/

                	 location.reload();

                 },

                 // 실패할경우 error로 들어온다.
                 error : function(XHR, status, error) {
                   console.error(status + " : " + error);
                 }
          	});
		}

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

  //라이브시 Red border
  	$(document).ready(function() {

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/blog/blog_live",

			// HTTP method type(GET, POST) 형식이다.
			type : "get",

			data : {
				id : "${blogVo.id}"
				},

			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/

				console.log(result);

				if (result.live == 1){
					console.log("Live")
					var b = document.querySelector(".profile_picture");
					var link = ""
					b.setAttribute("onclick", "location.href='${pageContext.request.contextPath}/mapOne?user_no=" + result.user_no + "'");
					b.style.border = "red solid 5px";


				} else {
					console.log("Not Live")
				}


			},

			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

 // 팬되기 눌렀을 때
  	$(".like").on("click",function(){
  		console.log("팬되기 잘 들어온다")

  		var artist_no = $(this).data("no");

  		var thiss = $(this);


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
  			artist_no : ${blogVo.user_no},
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
  	$(".heart").on("click",function(){
  		console.log("하트 잘 들어온다")

  		var artist_no = $(this).data("no");

  		var thiss = $(this);

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
  	  		artist_no : ${blogVo.user_no},
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
