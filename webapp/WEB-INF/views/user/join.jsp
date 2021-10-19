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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/User/join.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
  <!-- header -->
  <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

  <!-- login -->
  <div class="row">
    <div class="col-xl-2"></div>
    <div class="col-xl-8">
      <div class="joinbox">
        <h1>계정 정보를 입력해주세요.</h1>

        <form action="${pageContext.request.contextPath}/user/join" id="joinForm">
          <p>아이디</p>
          <input type="text" name="id">
          <span id="id_chk">중복된 아이디가 있습니다.</span>
          <br>
          <span>아이디는 변경할 수 없으니, 유의하세요.</span>

          <p>비밀번호</p>
          <input type="password" name="password">
          <br>
          <input type="password" name="passwordChk">
          <span id="pwChk">비밀번호가 일치하지 않습니다.</span>

          <p>이메일</p>
          <input type="email" name="email">

          <p>닉네임</p>
          <input type="text" name="nickname">
          <span id="nick_chk">중복된 닉네임이 있습니다.</span>

          <div class="btn_agree">
            <button type="submit" id="btn_join">확인</button>
          </div>

        </form>
      </div>
    </div>
    <div class="col-xl-2"></div>
  </div>

  <!-- footer -->
  <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>

<script type="text/javascript">
	var id_flog = false;
	var nick_flog = false;

	// 텍스트 숨기기
	$("#pwChk").hide();
	$("#id_chk").hide();
	$("#nick_chk").hide();

	// 아이디 중복 체크
	$("[name=id]").keyup(function() {

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/user/idCheck",

			// HTTP method type(GET, POST) 형식이다.
			type : "get",

			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",

			// Json 형식의 데이터를 받는다.
			dataType : "json",

			data : {
				id : $("[name=id]").val()
			},

			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/

				console.log("id= " + result);

				if (result === true) {
					$("#id_chk").hide();
					id_flog = true;
					console.log("id_flog= " + id_flog);

				} else if (result === false) {
					$("#id_chk").show();
					id_flog = false;
					console.log("id_flog= " + id_flog);
				}

			},

			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	// 닉네임 중복 체크
	$("[name=nickname]").keyup(function() {

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/user/nickCheck",

			// HTTP method type(GET, POST) 형식이다.
			type : "get",

			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",

			// Json 형식의 데이터를 받는다.
			dataType : "json",

			data : {
				nickname : $("[name=nickname]").val()
			},

			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/

				console.log("nick= " + result);

				if (result === true) {
					$("#nick_chk").hide();
					nick_flog = true;
					console.log("nick_flog= " + nick_flog);

				} else if (result === false) {
					nick_flog = false;
					$("#nick_chk").show();
				}

			},

			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	// 비밀번호 일치
	$(function() {
		$("[name=passwordChk]").keyup(function() {

			if ($("[name=password]").val() != $("[name=passwordChk]").val()) {
				$("#pwChk").show();

			} else {
				$("#pwChk").hide();
			}
		});
	});

	// 확인 버튼 눌렀을 때
	$("#joinForm").on("submit", function() {

		if (id_flog != true) {
			alert("아이디 중복체크를 해주세요.");

			return false;
		}

		if (nick_flog === false) {
			alert("닉네임 중복체크를 해주세요.");

			return false;
		}

		if ($("[name=id]").val().length < 1) {
			alert("아이디를 입력해 주세요.");

			return false;
		}

		if ($("[name=email]").val().length < 1) {
			alert("이메일를 입력해 주세요.");

			return false;
		}

		if ($("[name=nickname]").val().length < 1) {
			alert("닉네임를 입력해 주세요.");

			return false;
		}

		if ($("[name=password]").val() != $("[name=passwordChk]").val()) {
			alert("비밀번호가 일치하는지 확인해주세요.");

			return false;
		}

		return true;
	});
</script>

</html>