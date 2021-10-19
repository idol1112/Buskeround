<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Common/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/User/joinOk.css">
</head>

<body>
  <!-- header -->
  <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

  <!-- login -->
  <div class="row">
    <div class="col-xl-2"></div>
    <div class="col-xl-8">
      <div class="joinbox">
        <center>
          <img src="${pageContext.request.contextPath}/assets/image/blog/icon/check.png" width="80px">
        </center>

        <p id="text1">환영합니다!</p>

        <p>${userVo.nickname}님, 회원가입을 축하합니다. <br> 버스커라운드의 새로운 아이디는 <span class="id">${userVo.id}</span>입니다.
        </p>

        <p id="text2">회원님은 버스커라운드의 모든 기능을 사용하실 수 있습니다.</p>

        <div class="btn_box">
          <button type="button" onclick="location.href='${pageContext.request.contextPath}/user/loginForm'">로그인</button>
          <button type="button">메인으로</button>

        </div>
      </div>
    </div>
    <div class="col-xl-2"></div>
  </div>

  <!-- footer -->
  <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
</html>