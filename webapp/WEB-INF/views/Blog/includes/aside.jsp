<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!------ br_sidebar ------>
<div id="br_sidebar">
  <div class="live_list">
    <!---- 로고 ---->
    <div class="live_logo">
      <a href="${pageContext.request.contextPath}/Main">Br.</a>
    </div>
    <!---- 타이틀 ---->
    <div class="live_title">
      <p>버스킹 Live</p>
    </div>

    <!---- 아티스트 라이브 ---->
    <div class="side_nav">
 <%--    <c:forEach items="${BlogLive}" var="bLive">

      <!---- 프로필 사진 ---->
      <div class="profile_img">
       	<c:if test="${UserVo.user_img == null}">
		<img src="/Buskeround/assets/image/blog/icon/user.png" style="width: 40px; height: 40px; border-radius: 70%; object-fit: cover;">
		</c:if>
		<c:if test="${UserVo.user_img != null}">
		<img src="${pageContext.request.contextPath}/upload/${UserVo.user_img}" style="width: 40px; height: 40px; border-radius: 70%; object-fit: cover;">
		</c:if>
      </div>

      <!---- 활동명 ---->
      <div class="profile_name">
        <span>${bLive.nickname}</span>
      </div>

      <!---- 라이브 on ---->
      <div class="live_on"></div>

      <!---- 장르 ---->
      <div class="profile_genre">
      <c:if test="${bLive.genre == 1}">
        <tr>
          <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/ballade.png"></td>
        </tr>
      </c:if>

      <c:if test="${bLive.genre == 2}">
        <tr>
          <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/dance.png"></td>
        </tr>
      </c:if>

      <c:if test="${bLive.genre == 3}">
        <tr>
          <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png"></td>
        </tr>
      </c:if>

      <c:if test="${bLive.genre == 4}">
        <tr>
          <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/soul.png"></td>
        </tr>
      </c:if>

      <c:if test="${bLive.genre == 5}">
        <tr>
          <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/musical.png"></td>
        </tr>
      </c:if>

      <c:if test="${bLive.genre == 6}">
        <tr>
          <td class="main_genre"><img src="${pageContext.request.contextPath}/assets/image/blog/icon/etc.png"></td>
        </tr>
      </c:if>
        </div>
        </c:forEach> --%>
    </div>

  </div>


  <!---- 푸터 ---->
  <div class="footer">
    <p>대표이사 김영기<br> <br> 주소 서울 강남구 테헤란로 415<br> (버스커라운드 주식회사)<br> <br> 사업자 등록번호 133-12-15979<br> <br> 문의전화 02-8732-4204<br> 메일 HELP@buskeround.com<br> <br> COPYRIGHT©BUSKEROUND<br> CROP ALL RIGHTS RESERVED.<br>
    </p>
  </div>
</div>
<!------ ////(br_sidebar)//// ------>
