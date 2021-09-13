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
<link rel="stylesheet" href="../../assets/css/Common/common.css">
<link rel="stylesheet" href="../../assets/css/User/join.css">
</head>

<body>
  <!-- header -->
  <c:import url="/views/includes/header.jsp"></c:import>

  <!-- login -->
  <div class="row">
    <div class="col-xl-2"></div>
    <div class="col-xl-8">
      <div class="joinbox">
        <h1>계정 정보를 입력해주세요.</h1>

        <form action="">
          <p>아이디</p>
          <input type="text">
          <span>중복된 아이디가 있습니다.</span>
          <br>
          <span>아이디는 변경할 수 없으니, 유의하세요.</span>

          <p>비밀번호</p>
          <input type="password">
          <br>
          <input type="password">
          <span>비밀번호가 일치하지 않습니다.</span>

          <p>이메일</p>
          <input type="text">

          <p>닉네임</p>
          <input type="text">

          <div class="btn_agree">
            <button type="button" onclick="location.href='joinOk.jsp'">확인</button>
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