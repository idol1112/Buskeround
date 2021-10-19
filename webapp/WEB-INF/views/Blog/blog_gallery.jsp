<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_gallery.css">
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

      <c:import url="/WEB-INF/views/Blog/includes/navigation.jsp"></c:import>

      <div class="content clearfix">
        <!-- 글쓰기 버튼 -->
        <div class="main_title">
          <img src="${pageContext.request.contextPath}/assets/image/blog/icon/landscape.png">
          <span>갤러리</span>

          <c:if test="${blogVo.user_no == authUser.user_no}">
            <button id="writebutton" type="button" onClick="location.href='${pageContext.request.contextPath}/blog/blog_write/${blogVo.id}'">
              <img src="${pageContext.request.contextPath}/assets/image/blog/icon/write.png">사진 올리기
            </button>
          </c:if>
        </div>

        <!---- gallery ---->
        <div class="gallery_box">

          <c:if test="${fn:length(listMap.galleryList) == 0}">
            <p id="noGallery">등록된 사진이 없습니다.</p>
          </c:if>

          <c:forEach items="${listMap.galleryList}" var="gList">
            <div class="gallery_item">
              <div class="gallery_item_caption">
                <h2>${gList.title}</h2>
                <p>${gList.reg_date}</p>
                <p id="hit">조회수: ${gList.hit}</p>
              </div>
              <img id="img_item" src="${pageContext.request.contextPath}/upload/${gList.p_img}" onclick="gallery_item(${gList.post_no})" data-no="${gList.post_no}" alt="" />
            </div>
          </c:forEach>
        </div>
        <!------ ////(gallery)//// ------>

        <c:if test="${fn:length(listMap.galleryList) != 0}">
          <!-- 검색 기능 -->
          <div class="topnav">
            <div class="search-container">
              <form action="${pageContext.request.contextPath}/blog/blog_gallery/${blogVo.id}" method="post">
                <input type="text" placeholder="Search.." name="keyword" value="">
                <button type="submit">
                  <i class="fa fa-search"></i>
                </button>
              </form>
            </div>
          </div>

          <!-- 페이징 -->
          <div class="container xlarge">
            <div class="pagination">
              <ul>
                <!-- 이전 버튼 -->
                <c:if test="${listMap.prev == true}">
                  <li><a href="${pageContext.request.contextPath}/blog/blog_gallery/${blogVo.id}?page=${listMap.start_page_btn_no-1}&keyword=${param.keyword}">&laquo;</a></li>
                </c:if>

                <!-- 페이지 -->
                <c:forEach var="page" begin="${listMap.start_page_btn_no}" end="${listMap.end_page_btn_no}" step="1">
                  <c:choose>

                    <c:when test="${param.page == page}">
                      <li class="active"><a href="${pageContext.request.contextPath}/blog/blog_gallery/${blogVo.id}?page=${page}&keyword=${param.keyword}">${page}</a></li>
                    </c:when>

                    <c:otherwise>
                      <li><a href="${pageContext.request.contextPath}/blog/blog_gallery/${blogVo.id}?page=${page}&keyword=${param.keyword}">${page}</a></li>
                    </c:otherwise>

                  </c:choose>
                </c:forEach>

                <!-- 다음 버튼 -->
                <c:if test="${listMap.next == true}">
                  <li><a href="${pageContext.request.contextPath}/blog/blog_gallery/${blogVo.id}?page=${listMap.end_page_btn_no+1}&keyword=${param.keyword}">&laquo;</a></li>
                </c:if>
              </ul>
            </div>
          </div>
        </c:if>
      </div>
    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>

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
          <c:if test="${blogVo.user_no == authUser.user_no}">
            <button class="btn btn-danger" id="btn_delete" onclick="">삭제</button>
          </c:if>
        </div>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!------ ////(modal)//// ------>

</body>



<script type="text/javascript">

// 사진 클릭했을 때
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

			$("#btn_delete").attr("onclick", "location.href='${pageContext.request.contextPath}/blog/deleteGallery/${blogVo.id}?post_no=" + post_no + "'");

			$(".modal_content").append(result.content);

			$("#modal_img").attr("src", "${pageContext.request.contextPath}/upload/" + result.p_img);

		},

		// 실패할경우 error로 들어온다.
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});

	$("#img_modal").modal('show');

}

  $("#btn_close").on("click", function() {
  	$("#img_modal").modal('hide');
  });
</script>

</html>