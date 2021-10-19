<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
<title>Buskeround</title>
<!-- Title Icon -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/image/common/title.jpg">

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Common/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/MyPage/mypage.css">
    
    <!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- sweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

</head>

<body>
    <!-- header -->
   	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
    <!------- header -------->

    <!-- Content -->
    <div class="row" id="contentbox">
        <div class="col-xl-2"></div>
        <div class="col-xl-8" id="mypage">
            <div id="mypage-left">
            	<!-- aside -->
                <c:import url="/WEB-INF/views/Company/includes/aside.jsp"></c:import>
                <!-------- aside --------->
            </div>
            <div id="mypage-right">
                <div id="mypage-right-header">
                    <h5>제휴사 정보</h5>
                </div>
                <div id="mypage-right-content">
                    <form id="companyModify" action="${pageContext.request.contextPath}/Company/companyModify" method="POST" enctype="multipart/form-data">
                    	<input type="hidden" name="user_no" value="${requestScope.companyVo.user_no}">
                    	<input type="hidden" name="used_img" value="${requestScope.companyVo.com_img}">
                        <table>
                            <tr>
                                <td class="table-head"><label class="required" for="profilepicture">회사 로고</label></td>
                                <td><img id="profilepicture" src="${pageContext.request.contextPath}/upload/${requestScope.companyVo.com_img}"><br>
									<label id="profilepicturechange" class="btn-success btn-sm">
										<input type="file" name="com_img" accept="image/*" onchange="setThumbnail(event);"/>
										변경
									</label>
									<label id="profilepicturedelete" class="btn-danger btn-sm">
										취소
									</label>
								</td>
                            </tr>
                            <tr>
                                <td class="table-head"><label class="required" for="com_name">건물명</label></td>
                                <td><input class="input" type="text" id="com_name" name="com_name" value="${requestScope.companyVo.com_name}"></td>
                            </tr>
                            <tr>
                                <td class="table-head"><label class="required" for="address">주소</label></td>
                                <td><input class="input" type="text" id="address" name="address" value="${requestScope.companyVo.address}"></td>
                            </tr>
                            <tr>
                                <td class="table-head"><label class="required" for="com_number">연락처</label></td>
                                <td><input class="input" type="text" id="com_number" name="com_number" value="${requestScope.companyVo.com_number}"></td>
                            </tr>
                            <tr>
                                <td class="table-head"><label class="required" for="ceo_name">대표자명</label></td>
                                <td><input class="input" type="text" id="ceo_name" name="ceo_name" value="${requestScope.companyVo.ceo_name}"></td>
                            </tr>
                            <tr>
                                <td class="table-head"><label class="required" for="business_number">사업자번호</label></td>
                                <td><input class="input" type="text" id="business_number" name="business_number" value="${requestScope.companyVo.business_number}"></td>
                            </tr>
                        </table>
                        <div class="btn-area">
                        	<button type="submit" class="float-end btn btn-primary btn-sm" id="profilesubmit">저장</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-xl-2"></div>
    </div>


    <!-- footer -->
    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    <!------- footer -------->
</body>
<script type="text/javascript">

	//미리보기
	function setThumbnail(event) { 
		console.log("미리보기 실험")
		var reader = new FileReader(); 
		
		var picture = document.getElementById("profilepicture");
		
		reader.onload = function(event) { 
			document.querySelector("img#profilepicture").setAttribute("src", event.target.result);  
		}; 
		
		reader.readAsDataURL(event.target.files[0]); 
		}
	
	//미리보기 삭제
	$("#profilepicturedelete").on("click", function(){
		console.log("미리보기 삭제");
		var img = $("#profilepicture").attr('src');
		
		console.log(img);
		
		document.querySelector("img#profilepicture").setAttribute("src", img); 
	});
	
	//등록/수정 클릭
	$("#companyModify").on("submit", function() {
		console.log("서브밋")
		var fileCheck = $("[name=com_img]").val();
		if (!fileCheck) {
			alert("회사 로고를 입력해주세요.");

			return false;
		}

		if ($("[name=com_name]").val().length < 1) {
			alert("건물명을 입력해주세요.");

			return false;
		}

		if ($("[name=address]").val().length < 1) {
			alert("주소를 입력해주세요.");

			return false;
		}

		if ($("[name=com_number]").val().length < 1) {
			alert("연락처를 입력해 주세요.");
			return false;
		}
		
		if ($("[name=ceo_name]").val().length < 1) {
			alert("대표자명을 입력해 주세요.");

			return false;
		}
		
		if ($("[name=business_number]").val().length < 1) {
			alert("사업자번호를 입력해 주세요.");

			return false;
		}

		return true;
	});
	
	//제휴사 저장 이벤트
	$("#profilesubmit").on("click", function(e) {
		e.preventDefault();
		var form = $(this).parents('form');
		const Toast = Swal.mixin({
	        toast: true,
	        position: 'center-center',
	        showConfirmButton: false,
	        timer: 1500,
	        timerProgressBar: true,
	        didOpen: (toast) => {
	            toast.addEventListener('mouseenter', Swal.stopTimer)
	            toast.addEventListener('mouseleave', Swal.resumeTimer)
	        }
	    })

	    Toast.fire({
	        icon: 'success',
	        title: '제휴사 정보가 저장되었습니다.'
	    })
		setTimeout(function () {
		  form.submit();
		}, 1500);

	})
</script>
</html>