<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>

    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
        integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"
        integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/"
        crossorigin="anonymous"></script>

    <!-- font(Logo) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">

    <!-- css -->
<link rel="stylesheet" href="../../assets/css/User/common.css">
<link rel="stylesheet" href="../../assets/css/User/joinOk.css">
</head>

<body>
    <!-- header -->
    <div class="row" id="navbox">
        <div class="col-xl-2"></div>

        <!-- nav -->
        <div class="col-xl-8">
            <div class="navbar">

                <!-- nav_logo -->
                <div class="navbar_logo">
                    <a href="">Br.</a>
                </div>

                <!-- nav_menu -->
                <ul class="navbar_menu">
                    <li><a href="">공연</a></li>
                    <li><a href="">아티스트</a></li>
                    <li><a href="">버스킹존</a></li>
                    <li><a href="">고객센터</a></li>
                </ul>

                <!-- nav_login -->
                <ul class="navbar_login">
                    <li><a href="">로그인</a></li>
                    <li><a href="">회원가입</a></li>
                </ul>
            </div>
        </div>
        <!-------------- nav --------------->

        <div class="col-xl-2"></div>
    </div>
    <!-------------- header --------------->

    <!-- login -->
    <div class="row">
        <div class="col-xl-2"></div>
        <div class="col-xl-8">
            <div class="joinbox">
                <center>
                    <img src="../../assets/image/blog/icon/check.png" width="80px">
                </center>

                <p id="text1">환영합니다!</p>

                <p>Maroban님, 회원가입을 축하합니다. <br>
                    버스커라운드의 새로운 아이디는 <span class="id">Maroban207</span>입니다. </p>

                    <p id="text2">회원님은 버스커라운드의 모든 기능을 사용하실 수 있습니다.
                    </p>

                    <div class="btn_box">
                        <button type="button" onclick="location.href='login.jsp'">로그인</button>
                        <button type="button">메인으로</button>

                    </div>
            </div>
        </div>
        <div class="col-xl-2"></div>
    </div>

    <!-- footer -->
    <div class="row" id="footerbox">
        <div class="col-xl-2"></div>
        <div class="col-xl-8">
            <div class="footer">
                <p style="text-align: center; padding-top: 47px;">
                    대표이사 김영기 | 주소 서울 강남구 테헤란로 415(L7 HOTELS 강남타워 6,7층) | 버스커라운드 주식회사<br>
                    사업자 등록번호 133-12-15979 | 문의전화 02-8732-4204 | 메일 HELP@buskeround.com<br>
                    COPYRIGHT©BUSKEROUND CROP ALL RIGHTS RESERVED. <br>
                </p>
            </div>
        </div>
        <div class="col-xl-2"></div>
    </div>
    <!-------------- footer --------------->
</body>
</html>