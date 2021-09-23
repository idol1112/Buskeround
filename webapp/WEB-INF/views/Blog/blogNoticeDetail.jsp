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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogNoticeDetail.css">
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

      <!-- 메인 -->
      <div class="main-detail">
        <!-- 해딩 -->
        <div id="detail-header">
          <h3>8월 29일 버스킹 공지사항</h3>
        </div>
        <!-- 작성자, 날짜, 조회 -->
        <div class="modify-header clearfix">
          <img id="profilepicture" src="../../assets/image/blog/img/profile.jpg">
          <span class="bold">우주 멋쟁이</span>
          <span>2021-09-10</span>
          <span>조회 497</span>

          <button id="deletebutton" onclick="location.href=''">삭제</button>
          <button id="modifybutton" onclick="location.href='blogWriteModifyForm.jsp'">수정</button>
        </div>
        <!-- 내용 -->
        <div class="detail-content">
          <p>If you're looking for random paragraphs, you've come to the right place. When a random word or a random sentence isn't quite enough, the next logical step is to find a random paragraph. We created the Random Paragraph Generator with you in mind. The process is quite simple. Choose the number of random paragraphs you'd like to see and click the button. Your chosen number of paragraphs will instantly appear. While it may not be obvious to everyone, there are a number of reasons creating random paragraphs can be useful. A few examples of how some people use this generator are listed in the following paragraphs</p>
        </div>

        <!-- 공지사항 목록 -->
        <div>
          <!-- 글쓰기 버튼 -->
          <div class="clearfix">
            <button id="writebutton" onclick="location.href='blogNoticeBoard.jsp'">목록</button>
          </div>

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
                  <td>1</td>
                  <td>8월 29일 버스킹 공지사항</td>
                  <td>우주 멋쟁이</td>
                  <td>2021-09-08</td>
                  <td>100</td>
                </tr>
                <tr>
                  <td>9</td>
                  <td>8월 29일 버스킹 공지사항</td>
                  <td>우주 멋쟁이</td>
                  <td>2021-09-08</td>
                  <td>100</td>
                </tr>
                <tr>
                  <td>8</td>
                  <td>8월 29일 버스킹 공지사항</td>
                  <td>우주 멋쟁이</td>
                  <td>2021-09-08</td>
                  <td>100</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>
</body>

</html>