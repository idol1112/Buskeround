<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- header -->
<div class="row" id="navbox">
  <div class="col-xl-2"></div>

  <!-- nav -->
  <div class="col-xl-8">
    <div class="navbar">

      <!-- nav_logo -->
      <div class="navbar_logo">
        <a href="${pageContext.request.contextPath}/Main">Br.</a>
      </div>

      <!-- nav_menu -->
      <ul class="navbar_menu">
        <li><a href="../Map/map.jsp">공연</a></li>
        <li><a href="../Artist/ArtistRenk.jsp">아티스트</a></li>
        <li><a href="../Map/map2.jsp">버스킹존</a></li>
        <li><a href="">고객센터</a></li>
      </ul>

      <!-- nav_login -->
      <ul class="navbar_login">

        <!-- 로그인 후 -->
        <c:if test="${authUser != null}">
          <li><img id="main_profile" src="/Buskeround${authUser.user_img}"></li>
          <li><b>${authUser.nickname}님</b></li>
          <li><div class="dropdown">
              <button class="dropbtn">
                <img id="main_dropdown" src="${pageContext.request.contextPath}/assets/image/common/dropdown.png">
              </button>
              <div class="dropdown-content">
                <a href="${pageContext.request.contextPath}/MyPage/profileModify">마이페이지</a>
                <!-- 아티스트일 때 -->
                <c:if test="${authUser.user_type == 2}">
                  <a href="${pageContext.request.contextPath}/Blog/blogMain">내 블로그</a>
                </c:if>

                <!-- 제휴자일 때 -->
                <c:if test="${authUser.user_type == 3}">
                  <a href="../CompanyManage/companyInfo.jsp">제휴사 관리</a>
                </c:if>
                <a href="${pageContext.request.contextPath}/user/logout">로그아웃</a>
              </div>
            </div></li>

        </c:if>

        <!-- 로그인 전 -->
        <c:if test="${authUser == null}">
          <li><a href="${pageContext.request.contextPath}/user/loginForm">로그인</a></li>
          <li><a href="${pageContext.request.contextPath}/user/agreement">회원가입</a></li>
        </c:if>
      </ul>
    </div>
  </div>
  <!------- nav -------->

  <div class="col-xl-2"></div>
</div>
<!------- header -------->
