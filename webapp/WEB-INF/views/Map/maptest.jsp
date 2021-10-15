<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>

<!-- 전송폼  -->
<form action="${pageContext.request.contextPath}/Map/map">
<input type="text" id="lat" value="" name="lat">
<input type="text" id="lng" value="" name="lng">
<button type="submit">위도경도전송</button>
</form>
<!-- 전송폼  -->




<!-- 지도크기 -->
<div id="map" style="width:100%;height:350px;"></div>
<!-- 지도크기 -->


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79c2ae6522e8e0df7b0592164f933676&libraries=services"></script>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 10 // 지도의 확대 레벨 
}; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다


if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon)
        console.log("위치를 잡았습니다.");
        // 마커 표시합니다
        displayMarker(locPosition);
            
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667)
    console.log("위치를 알수없습니다.");
    displayMarker(locPosition);
}

function displayMarker(locPosition) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);

    var lat = locPosition.getLat();
    var lng = locPosition.getLng();
    
    
    $("#lat").val(lat);
    $("#lng").val(lng);
}    

	
</script>



</body>
</html>