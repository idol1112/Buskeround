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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_main(noPost).css">
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

      <c:import url="/WEB-INF/views/Blog/includes/navigation.jsp"></c:import>

      <!---- Welcome Picture ---->
      <div id="welcome">
        <img id="welcomepicture" alt="Welcome" src="../../assets/image/blog/img/welcome.png">
        <p id="welcomeword">공연을 시작해서 나만의 타임라인을 만들어보세요</p>
      </div>

      <!-- 공지사항 / 방명록 Center -->
      <div class="clearfix">
        <!-- 공지사항 -->
        <div id="notice">
          <h5>공지사항</h5>
          <br> <br>
          <p>작성된 글이 없습니다.</p>
          <button>글쓰기</button>
        </div>

        <!-- 방명록 -->
        <div id="guestbook">
          <h5>방명록</h5>
          <br> <br>
          <p>작성된 글이 없습니다.</p>
          <button>글쓰기</button>
        </div>
      </div>

      <!-- 갤러리 -->
      <div id="gallery">
        <h5>갤러리</h5>
        <br> <br>
        <p>등록된 사진이 없습니다.</p>
        <button>갤러리 바로가기</button>
      </div>
    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>
</body>
</html>