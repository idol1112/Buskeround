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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/User/agreement.css">

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
        <p class="text">Buskeround <br> 서비스 약관에 동의해주세요.
        </p>

        <form id="agreeForm" method="post" action="${pageContext.request.contextPath}/user/joinForm">
          <div class="checkbox_group">
            <input type="checkbox" id="agree1">
            <label for="agree1">모두 동의합니다.</label>

            <p>전체동의는 필수 및 선택정보에 대한 동의도 포함되어 있으며, <br> 개별적으로도 동의를 선택하실 수 있습니다. <br> 선택항목에 대한 동의를 거부하시는 경우에도 서비스는 이용이 가능합니다.
            </p>

            <div class="agreement">
              <ul>
                <li><input type="checkbox" id="agree2" class="normal"> <label for="agree2">[필수] 아티스트 계정 약관</label></li>
                <li><input type="checkbox" id="agree3" class="normal"> <label for="agree3">[필수] 개인정보 수집 및 이용 동의</label></li>
                <li><input type="checkbox" id="agree4" class="normal"> <label for="agree4">[선택] 위치정보 수집 및 이용 동의</label></li>
                <li><input type="checkbox" id="agree5" class="normal"> <label for="agree5">[선택] 알림 및 광고메시지 수신</label></li>
                <li><input type="checkbox" id="agree6" class="normal"> <label for="agree6">[선택] 프로필 정보 추가 수집 동의</label></li>
              </ul>
            </div>

            <div class="btn_agree">
              <button type="submit" id="btn_agree">동의</button>
            </div>
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

  //체크박스 전체 선택
    $(".checkbox_group").on("click", "#agree1", function () {
      var checked = $(this).is(":checked");

      if(checked){
      	$(this).parents(".checkbox_group").find('input').prop("checked", true);
      } else {
      	$(this).parents(".checkbox_group").find('input').prop("checked", false);
      }
    });

   // 체크박스 개별 선택
    $(".checkbox_group").on("click", ".normal", function() {
        var is_checked = true;

        $(".checkbox_group .normal").each(function(){
            is_checked = is_checked && $(this).is(":checked");
        });

        $("#agree1").prop("checked", is_checked);
    });

  // 동의 버튼 눌렀을 때
    $("#agreeForm").on("submit", function() {

  	if ($("#agree2").is(":checked") === false) {
  		alert("필수 약관에 동의해주세요.");

  		return false;
  	}

  	if ($("#agree3").is(":checked") === false) {
  		alert("필수 약관에 동의해주세요.");

  		return false;
  	}

    	return true;
    });

</script>

</html>