<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogStart.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
  <!------ br_container ------>
  <div class="clearfix" id="br_container">
    <c:import url="/WEB-INF/views/Blog/includes/aside.jsp"></c:import>

    <!------ br_content ------>
    <div id="br_content">
      <c:import url="/WEB-INF/views/Blog/includes/header.jsp"></c:import>

      <!-- nav_menu -->
      <div class="navbar">
        <ul class="navbar_menu">
          <li class="bold"><a href="${pageContext.request.contextPath}/blog/blog_main">홈</a></li>
          <li><a href="blogNoticeBoard.jsp">공지사항</a></li>
          <li><a href="${pageContext.request.contextPath}/blog/blog_timeline">타임라인</a></li>
          <li><a href="${pageContext.request.contextPath}/blog/blog_gallery">갤러리</a></li>
          <li><a href="${pageContext.request.contextPath}/blog/blog_guestbook">방명록</a></li>
        </ul>
      </div>

      <!---- timeline ---->
      <div class="main_title">
        <img src="${pageContext.request.contextPath}/assets/image/blog/icon/clock.png" alt="">
        <span>타임라인</span>
      </div>
      <div class="timeline_box">
        <div class="timeline">
          <ul>
            <li>
              <div class="content">
                <h3>홍대 예술거리</h3>
                <iframe width="430" height="240" src="https://www.youtube.com/embed/tLUR7Vz1TVY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
              </div>
              <div class="time">
                <h4>2021. 09. 10(금)</h4>
              </div>
            </li>

            <li>
              <div class="content">
                <h3>마로니에 공원</h3>
                <iframe width="430" height="240" src="https://www.youtube.com/embed/ObboG8Pvewo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
              </div>
              <div class="time">
                <h4>2021. 09. 09(목)</h4>
              </div>
            </li>
            <div style="clear: both;"></div>
          </ul>
        </div>
      </div>
      <!------ ////(timeline)//// ------>

      <!---- notice ---->
      <div class="notice">
        <div class="main_title">
          <img src="${pageContext.request.contextPath}/assets/image/blog/icon/letter.png" alt="">
          <span>전체글보기</span>
        </div>
        <div class="content clearfix">
          <!-- 게시판 테이블 -->
          <div id="board">
            <table id="list">
              <thead>
                <tr>
                  <th>공지</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>조회</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>공지</td>
                  <td>8월 29일 버스킹 공지사항</td>
                  <td>우주 멋쟁이</td>
                  <td>2021-09-08</td>
                  <td>100</td>
                </tr>
                <tr>
                  <td>공지</td>
                  <td>8월 29일 버스킹 공지사항</td>
                  <td>우주 멋쟁이</td>
                  <td>2021-09-08</td>
                  <td>100</td>
                </tr>
                <tr>
                  <td>10</td>
                  <td>응원합니다.</td>
                  <td>김영기</td>
                  <td>2021-09-08</td>
                  <td>100</td>
                </tr>
                <tr>
                  <td>9</td>
                  <td>사랑합니다</td>
                  <td>유승범</td>
                  <td>2021-09-08</td>
                  <td>100</td>
                </tr>
                <tr>
                  <td>8</td>
                  <td>좋아해요</td>
                  <td>김윤형</td>
                  <td>2021-09-08</td>
                  <td>100</td>
                </tr>
                <tr>
                  <td>8</td>
                  <td>좋아해요</td>
                  <td>김윤형</td>
                  <td>2021-09-08</td>
                  <td>100</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <!------ ////(notice)//// ------>

      <!---- gallery ---->
      <div class="main_title">
        <img src="${pageContext.request.contextPath}/assets/image/blog/icon/landscape.png" alt="">
        <span>갤러리</span>
      </div>

      <div class="gallery_box">
        <div class="gallery_item">
          <div class="gallery_item_caption">
            <h2>홍대 거리</h2>
            <p>2021. 09. 07</p>
          </div>
          <img id="img_item" src="${pageContext.request.contextPath}/assets/image/blog/img/busker2.jpg" alt="" />
        </div>

        <div class="gallery_item">
          <div class="gallery_item_caption">
            <h2>마로니에 공원</h2>
            <p>2021. 09. 07</p>
          </div>
          <img id="img_item" src="${pageContext.request.contextPath}/assets/image/blog/img/busker.jpg" alt="" />
        </div>
      </div>
      <!------ ////(gallery)//// ------>
    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>
</body>

<!-- modal -->
<div class="modal fade" id="img_modal">
  <div class="modal-dialog" id="img_dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <img id="modal_img" src="">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" id="btn_close" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!------ ////(modal)//// ------>

<script type="text/javascript">
	$(".gallery_item").on("click", "#img_item", function() {
		var img_title = $(this).parents(".gallery_item").children("div").children("h2").text();
		$(".modal-title").text(img_title);

		var img_src = $(this).attr('src');
		$("#modal_img").attr("src", img_src);

		$("#img_modal").modal('show');
	});

	$("#btn_close").on("click", function() {
		$("#img_modal").modal('hide');
	});
</script>

</html>