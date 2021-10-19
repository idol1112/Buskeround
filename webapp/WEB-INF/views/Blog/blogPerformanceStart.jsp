<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogmain.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogStart.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>

<body>
  <!------ br_container ------>
  <div class="clearfix" id="br_container">
    <c:import url="/views/Blog/includes/aside.jsp"></c:import>

    <!------ br_content ------>
    <div id="br_content">
      <c:import url="/views/Blog/includes/header.jsp"></c:import>
      <c:import url="/views/Blog/includes/nav.jsp"></c:import>
    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>

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

</html>