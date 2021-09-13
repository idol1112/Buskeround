<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link rel="stylesheet" href="../../assets/css/User/common.css">
<link rel="stylesheet" href="../../assets/css/User/login.css">
</head>

<body>
  <!-- header -->
  <c:import url="/views/includes/header.jsp"></c:import>

  <!-- login -->
  <div class="row">
    <div class="col-xl-2"></div>
    <div class="col-xl-8">
      <div class="loginbox">
        <div class="login_logo">
          <a href="">Br.</a>
        </div>

        <form action="">
          <input type="text" placeholder="  Id">

          <input type="password" placeholder="  Password">

          <button type="submit">로그인</button>
          <br>

          <div class="login_menu">
            <span class="menu_1">
              <a href="agreement.jsp">회원가입</a>
            </span>
            <span class="menu_2">
              <a href="">아이디 / 비밀번호 찾기</a>
            </span>
          </div>


          <div class="sns_login">
            <a href="" id="facebook">
              <img src="../../assets/image/blog/icon/facebook.png" width="30px">
            </a>
            <a href="" id="instagram">
              <img src="../../assets/image/blog/icon/instagram.png" width="30px">
            </a>
            <a href="" id="google">
              <img src="../../assets/image/blog/icon/google.png" width="30px">
            </a>
            <a href="" id="instagram">
              <img src="../../assets/image/blog/icon/twitter.png" width="30px">
            </a>
          </div>
        </form>
      </div>
    </div>
    <div class="col-xl-2"></div>
  </div>

  <!-- footer -->
  <c:import url="/views/includes/footer.jsp"></c:import>
</body>
</html>