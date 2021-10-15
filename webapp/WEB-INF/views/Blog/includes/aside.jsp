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

    <div id="blog_aside"></div>

  </div>
  <!---- 푸터 ---->
  <div class="footer">
    <p>대표이사 김영기<br> <br> 주소 서울 강남구 테헤란로 415<br> (버스커라운드 주식회사)<br> <br> 사업자 등록번호 133-12-15979<br> <br> 문의전화 02-8732-4204<br> 메일 HELP@buskeround.com<br> <br> COPYRIGHT©BUSKEROUND<br> CROP ALL RIGHTS RESERVED.<br>
    </p>
  </div>
</div>
<!------ ////(br_sidebar)//// ------>

<script>
	$(document).ready(function() {

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/blog/blog_aside",

			// HTTP method type(GET, POST) 형식이다.
			type : "post",

			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",

			// Json 형식의 데이터를 받는다.
			dataType : "json",

			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/

				console.log(result);

				for (var i = 0; i < result.length; i++) {
					render(result[i]);
				}

			},

			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	// Live list 출력
	function render(result) {
		var str = '';
		str += '<div class="side_nav">';
		str += '	<div class="profile_img">';

		if (result.user_img == null) {
			str += '		<a href="${pageContext.request.contextPath}/mapOne?user_no='+ result.user_no+'">';
			str += '		<img class="profile_user_img" src="/Buskeround/assets/image/blog/icon/user.png">';
			str += '		</a>';
		} else if (result.user_img != null) {
			str += '		<a href="${pageContext.request.contextPath}/mapOne?user_no='+ result.user_no+'">';
			str += '		<img class="profile_user_img" src="${pageContext.request.contextPath}/upload/' + result.user_img + '">';
			str += '		</a>';
		}

		str += '	</div>';
		str += '	<div class="profile_name">';
		str += '		<a href="${pageContext.request.contextPath}/mapOne?user_no='+ result.user_no+'">';
		str += '		<span>' + result.nickname + '</span>';
		str += '		</a>';
		str += '	</div>';
		str += '	<div class="live_on"></div>';
		str += '	<div class="profile_genre">';

		if (result.genre === "1") {
			str += '		<img src="${pageContext.request.contextPath}/assets/image/blog/icon/ballade.png">';

		} else if (result.genre === "2") {

			str += '		<img src="${pageContext.request.contextPath}/assets/image/blog/icon/dance.png">';

		} else if (result.genre === "3") {
			str += '		<img src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png">';

		} else if (result.genre === "4") {
			str += '		<img src="${pageContext.request.contextPath}/assets/image/blog/icon/soul.png">';

		} else if (result.genre === "5") {
			str += '		<img src="${pageContext.request.contextPath}/assets/image/blog/icon/musical.png">';

		} else if (result.genre === "6") {
			str += '		<img src="${pageContext.request.contextPath}/assets/image/blog/icon/etc.png">';

		}

		str += '	</div>';
		str += '</div>';

		$("#blog_aside").append(str);
	};

</script>
