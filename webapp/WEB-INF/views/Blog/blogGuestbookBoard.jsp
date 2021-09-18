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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogGuestbookBoard.css">
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
          <li><a href="${pageContext.request.contextPath}/blog/blog_main">홈</a></li>
          <li><a href="blogNoticeBoard.jsp">공지사항</a></li>
          <li><a href="${pageContext.request.contextPath}/blog/blog_timeline">타임라인</a></li>
          <li><a href="${pageContext.request.contextPath}/blog/blog_gallery">갤러리</a></li>
          <li class="bold"><a href="${pageContext.request.contextPath}/blog/blog_guestbook">방명록</a></li>
        </ul>
      </div>

      <div class="content clearfix">
        <div class="clearfix main_title">
          <img src="${pageContext.request.contextPath}/assets/image/blog/icon/letter.png">
          <span>방명록</span>
          <button id="writebutton" type="button" onClick="location.href='blogWriteForm.jsp'">
            <img src="${pageContext.request.contextPath}/assets/image/blog/icon/write.png">글쓰기
          </button>
        </div>

        <!-- 게시판 테이블 -->
        <div id="board">
          <table id="list">
            <thead>
              <tr>
                <th width="10%">공지</th>
                <th width="50%">제목</th>
                <th width="15%">작성자</th>
                <th width="15%">작성일</th>
                <th width="10%">조회</th>
              </tr>
            </thead>
            <tbody>
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
                <td>7</td>
                <td>응원합니다.</td>
                <td>박수현</td>
                <td>2021-09-08</td>
                <td>100</td>
              </tr>
              <tr>
                <td>6</td>
                <td>사랑합니다.</td>
                <td>이소정</td>
                <td>2021-09-08</td>
                <td>100</td>
              </tr>
              <tr>
                <td>5</td>
                <td>응원합니다.</td>
                <td>김영기</td>
                <td>2021-09-08</td>
                <td>100</td>
              </tr>
              <tr>
                <td>4</td>
                <td>사랑합니다</td>
                <td>유승범</td>
                <td>2021-09-08</td>
                <td>100</td>
              </tr>
              <tr>
                <td>3</td>
                <td>좋아해요</td>
                <td>김윤형</td>
                <td>2021-09-08</td>
                <td>100</td>
              </tr>
              <tr>
                <td>2</td>
                <td>응원합니다.</td>
                <td>박수현</td>
                <td>2021-09-08</td>
                <td>100</td>
              </tr>
              <tr>
                <td>1</td>
                <td>사랑합니다.</td>
                <td>이소정</td>
                <td>2021-09-08</td>
                <td>100</td>
              </tr>
            </tbody>
          </table>

          <!-- 검색 기능 -->
          <div class="topnav">
            <div class="search-container">
              <form action="/action_page.php">
                <input type="text" placeholder="Search.." name="search">
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
                <!-- Add Button-->
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li class="active"><a href="#">3</a></li>
                <!-- for active button-->
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>
</body>

</html>