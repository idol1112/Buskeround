<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/MyPage/mypage.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- sweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<!-- kakaoMap -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79c2ae6522e8e0df7b0592164f933676&libraries=services"></script>

	<style>
	.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
	.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
	.map_wrap {width: 100%;height: 500px;}
	#menu_wrap {position:absolute;top:0;left:0;width:300px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
	#keyword {width:240px;}
	</style>
</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<!-- Content -->
	<div class="row" id="contentbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8" id="mypage">

			<c:import url="/WEB-INF/views/MyPage/includes/aside.jsp"></c:import>

			<div id="mypage-right">
				<div id="mypage-right-header">
					<h5>제휴사 등록</h5>
				</div>
				<div id="mypage-right-content">
					<form id="companyInsert" action="${pageContext.request.contextPath}/Company/companyInsert" method="post" enctype="multipart/form-data">
						<input type="hidden" name="user_no" value="${sessionScope.authUser.user_no}">
						<input type="hidden" id="latitude" name="latitude">
						<input type="hidden" id="longitude" name="longitude">
						<input type="hidden" name="company_type" value="2"> 
							<table>
								<tr>
									<td class="table-head"><label class="required" for="profilepicture">회사 로고</label></td>
									<td><img id="profilepicture" src="${pageContext.request.contextPath}/assets/image/company/default.png"><br>
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
									<td><input class="input" type="text" id="com_name" name="com_name" placeholder="건물명을 입력해주세요" value=""></td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="address">주소</label></td>
									<td>
										<input class="input" type="text" id="address" name="address" placeholder="주소 입력해주세요." value="">
										<button id="locationBtn" class="btn-primary btn-sm" type="button">위치</button>
									</td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="com_number">연락처</label></td>
									<td><input class="input" type="text" id="com_number" name="com_number" placeholder="연락처를 입력해주세요." value=""></td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="ceo_name">대표자명</label></td>
									<td><input class="input" type="text" id="ceo_name" name="ceo_name" placeholder="대표자명 입력해주세요." value=""></td>
								</tr>
								<tr>
									<td class="table-head"><label class="required" for="business_number">사업자번호</label></td>
									<td><input class="input" type="text" id="business_number" name="business_number" placeholder="사업자번호를 입력해주세요" value=""></td>
								</tr>
							</table>
						<button type="submit" class="float-end btn-primary btn-sm" id="profilesubmit">등록</button>
					</form>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>

	<!-- Footer -->
    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    
    <!------------- Modal --------------->
  <div class="modal fade" id="locationModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->   
      <div class="modal-content">
        <div class="modal-header">
 
          <h4 class="modal-title">위치 설정</h4>
          <img class="delBtn close" src="${pageContext.request.contextPath}/assets/image/company/icon/delete.png">
          

        </div>
        <div class="modal-body">
			<div class="map_wrap">
			    <div id="map" style="width:100%;height:100%;overflow:hidden;"></div>
			
			    <div id="menu_wrap">
			        <div class="option">
			            <div>
			                <div>
			                    <input type="text" value="주소 입력" id="keyword" size="15" placeholder="장소 입력" >
			                    <button class="btn-success btn-sm" id="btnsch">검색</button> 
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
        </div>
        <div class="modal-footer">
        	 <button class="btn-primary btn-sm" id="confirmBtn">확인</button>
        </div>
      </div>
    </div>
  </div>
</body>
<script type="text/javascript">
//위치 버튼 클릭시 모달창
$("#locationBtn").on("click", function() {
	$("#locationModal").modal('show');
	var address = $("#address").val();
	 $("#keyword").val(address);

	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  



// 키워드로 장소를 검색합니다
searchPlaces(keyword);

// 키워드 검색을 요청하는 함수입니다
function searchPlaces(keyword) {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}



// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {


    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds();


        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[0].y, places[0].x);


        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

var marker = new kakao.maps.Marker({ 
    // 지도 중심좌표에 마커를 생성합니다 
    position: map.getCenter() 
}); 

marker.setMap(map);

kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
    
    // 클릭한 위도, 경도 정보를 가져옵니다
    var latlng = mouseEvent.latLng; 
    
    // 마커 위치를 클릭한 위치로 옮깁니다
    marker.setPosition(latlng);
    var showlat = latlng.getLat();
    var showlng = latlng.getLng();
    
    console.log(showlat);
    console.log(showlng);
    $("#latitude").val(showlat);
    $("#longitude").val(showlng);
});

$("#btnsch").on("click", function(){
	var keyword = $("#keyword").val();
	console.log(keyword);	
	
	searchPlaces(keyword);
});
map.relayout();

});

//모달창 끄기
$("#confirmBtn").on("click", function() {
	$("#locationModal").modal('hide');
  });
$(".close").on("click", function() {
  	$("#locationModal").modal('hide');
  });

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

//등록/수정 클릭
$("#companyInsert").on("submit", function() {
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
		alert("주소를 입력후 위치를 설정해주세요.");

		return false;
	}
	
	if (!$("[name=latitude]").val()) {
		alert("위치 설정에서 마커를 찍어주세요.");

		return false;
	}
	
	if (!$("[name=longitude]").val()) {
		alert("위치 설정에서 마커를 찍어주세요.");

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
	
$("#profilesubmit").on("click", function(e) {
	e.preventDefault();
	var form = $(this).parents('form');
	
	Swal.fire({
		title: '제휴사 등록',
		text: "제휴사 등록을 하시겠습니까?",
		icon: 'question',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: '확인',
		cancelButtonText: '취소'
	}).then((result) => {
		if (result.isConfirmed) {
			form.submit();
		} 
	})

	  
	

})

</script>
</html>