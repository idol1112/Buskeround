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
<link rel="stylesheet" href="../../assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="../../assets/css/blogModify.css">
<link rel="stylesheet" href="../../assets/css/Blog/blogStart.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>

<body>

  <div class="row">
    <div class="col-xl-1"></div>

    <!---- 사이드바 ---->
    <div class="col-xl-2" id="sidebar">
      <!---- 로고 ---->
      <ul class="logo_title">
        <li>
          <div class="live_logo">
            <a href="">Br.</a>
          </div>
        </li>

        <li>
          <!---- 라이브 리스트 제목 ---->
          <div class="panel-title">
            <p>버스킹 Live</p>
          </div>
        </li>
      </ul>

      <!---- 라이브 리스트 ---->
      <div class="live_list">
        <ul class="list">
          <!-- 우주멋쟁이 -->
          <li>
            <table>
              <tr>
                <td class="profile" rowspan="2"><img src="../assets/img/profile.jpg"></td>
                <td class="name">우주멋쟁이</td>
                <td class="live" rowspan="2"><img src="../assets/img/live.png"></td>
              </tr>

              <tr>
                <td class="genre">랩/힙합</td>
              </tr>
            </table>
          </li>

          <!-- 블랙핑크 지수 -->
          <li>
            <table>
              <tr>
                <td class="profile" rowspan="2"><img src="../assets/img/profile2.jpg"></td>
                <td class="name">블랙핑크 지수</td>
                <td class="live" rowspan="2"><img src="../assets/img/live.png"></td>
              </tr>

              <tr>
                <td class="genre">댄스</td>
              </tr>
            </table>
          </li>

          <!-- 벤 -->
          <li>
            <table>
              <tr>
                <td class="profile" rowspan="2"><img src="../assets/img/profile3.jpg"></td>
                <td class="name">벤</td>
                <td class="live" rowspan="2"><img src="../assets/img/live.png"></td>
              </tr>

              <tr>
                <td class="genre">발라드</td>
              </tr>
            </table>
          </li>

          <!-- 머쉬베놈 -->
          <li>
            <table>
              <tr>
                <td class="profile" rowspan="2"><img src="../assets/img/profile4.jpg"></td>
                <td class="name">신예은</td>
                <td class="live" rowspan="2"><img src="../assets/img/live.png"></td>
              </tr>

              <tr>
                <td class="genre">배우</td>
              </tr>
            </table>
          </li>

          <!-- 이무진 -->
          <li>
            <table>
              <tr>
                <td class="profile" rowspan="2"><img src="../assets/img/profile5.jpg"></td>
                <td class="name">다현</td>
                <td class="live" rowspan="2"><img src="../assets/img/live.png"></td>
              </tr>

              <tr>
                <td class="genre">댄스</td>
              </tr>
            </table>
          </li>

          <!-- 유재석 -->
          <li>
            <table>
              <tr>
                <td class="profile" rowspan="2"><img src="../assets/img/profileD.png"></td>
                <td class="name">유재석</td>
                <td class="live" rowspan="2"><img src="../assets/img/live.png"></td>
              </tr>

              <tr>
                <td class="genre">기타연주</td>
              </tr>
            </table>
          </li>
        </ul>
      </div>

      <!---- 푸터 ---->
      <div class="footer">
        <p>대표이사 김영기<br> <br> 주소 서울 강남구 테헤란로 415<br> (버스커라운드 주식회사)<br> <br> 사업자 등록번호 133-12-15979<br> <br> 문의전화 02-8732-4204 | 메일 HELP@buskeround.com<br> <br> COPYRIGHT©BUSKEROUND<br> CROP ALL RIGHTS RESERVED.<br>
        </p>
      </div>
    </div>

    <div class="col-xl-8">
      <!---- 배너 ---->
      <div class=" banner">
        <!-- 블로그 관리 버튼 -->
        <img class="setting" src="../assets/img/settings.png">

        <!-- 배너 안 영상 -->
        <ul class="banner_in">
          <li><a href="">
              2021. 09. 07 <br> 홍대 예술거리
            </a></li>
          <li>
            <div class="stream_box">
              <a href="">
                <img src="../assets/img/buker.jpg" alt="">
              </a>
            </div>
          </li>
        </ul>

        <form id="form" action="">
          <button type="submit">공연시작</button>
        </form>

        <a href="">
          <img class="facebook" src="../assets/img/facebook.png" alt="">
        </a>
        <a href="">
          <img class="instagram" src="../assets/img/instagram.png" alt="">
        </a>
        <a href="">
          <img class="youtube" src="../assets/img/youtube.png" alt="">
        </a>
      </div>

      <!---- 프로필 박스 ---->
      <div class="profile_box">
        <div class="main_profile">
          <img src="../assets/img/profile.jpg">
        </div>

        <table class="profile_intr">
          <tr>
            <td class="main_genre">랩/힙합</td>
          </tr>
          <tr>
            <td class="main_name">우주 멋쟁이</td>
          </tr>
          <tr>
            <td class="main_intr">안녕하세요. 깊은 밤 이야기를 노래하는 아티스트 입니다. :)</td>
          </tr>
        </table>

        <table class="profile_his">
          <tr>
            <td class="history">이력사항</td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td class="history1">- 전국노래자랑 185회 대상</td>
            <td class="history2">- 인기가요 283회 출연</td>
          </tr>
          <tr>
            <td class="history1">- 복면가왕 29회 3연승</td>
            <td></td>
          </tr>
          <tr>
            <td class="history1">- 불후의명곡 29회 17연승</td>
            <td></td>
          </tr>
        </table>

        <!---- 좋아요 박스 ---->
        <table class="like_box">
          <tr>
            <td><img class="heart" src="../assets/img/heart.png"></td>
            <td><img class="like" src="../assets/img/like.png"></td>
          </tr>

          <tr>
            <td class="heart_count" rowspan="2">23</td>
            <td class="like_count" rowspan="2">4235</td>
          </tr>
        </table>
      </div>

      <!-- 컨텐트 (프로필 수정) -->
      <div class="modify-header">
        <h5>블로그 관리</h5>
      </div>

      <div class="modify-form">
        <form action="" method="POST">
          <table>
            <tr>
              <td class="table-head"><label for="artistname">활동명</label></td>
              <td><input class="input" type="text" id="artistname" name="artistname" placeholder="활동명을 입력해주세요."></td>
            </tr>
            <tr>
              <td class="table-head"><label for="introduce">자기소개</label></td>
              <td><textarea class="input" placeholder="자기소개를 입력해주세요."></textarea></td>
            </tr>
            <tr>
              <td class="table-head"><label for="record">이력사항</label></td>
              <td><input class="input" type="text" id="record" name="record" placeholder="이력사항을 입력해주세요"></td>
            </tr>
            <tr id="banner">
              <td class="table-head"><label>대문이미지</label></td>
              <td><img src="../assets/img/banner.jpg"><br> <span> 1200 x 200</span>
                <button id="banner-deletebutton">삭제</button>
                <button id="banner-changebutton">변경</button></td>
            </tr>
            <tr>
              <td class="table-head"><label>SNS 링크</label></td>
              <td class="label-width">
                <div>
                  <div>
                    <label>유튜브</label>
                    <input class="sns-input" type="text">
                  </div>
                  <div>
                    <label>페이스북</label>
                    <input class="sns-input" type="text">
                  </div>
                  <div>
                    <label>인스타그램</label>
                    <input class="sns-input" type="text">
                  </div>
                </div>

              </td>
            </tr>
          </table>
          <button class="float-end" id="profilecancel">취소</button>
          <button class="float-end" id="profilesubmit">수정</button>
      </div>



    </div>
    <div class="col-xl-1"></div>
  </div>
</body>

</html>