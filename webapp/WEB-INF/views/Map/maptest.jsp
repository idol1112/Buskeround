<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
        <style>

    
	    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px; margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
	    .wrap * {padding: 0;margin: 0;}
	    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
	    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
	    .info .title {padding: 5px 0 0 10px;height: 33px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
	    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
	    .info .close:hover {cursor: pointer;}
	    .info .body {position: relative;overflow: hidden;}
	    .info .desc {position: relative;margin: 13px 0 0 100px;height: 75px;}
	    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap; padding:4px 0px 0px 0px;}
	    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
	    .info .img {position: absolute;top: 6px;left: 5px;border-radius: 100%;width: 83px;height: 80px;color: #888;overflow: hidden;}
	    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	    .info .link {color: #5085BB;}
	    
		#map{
		 width:600px;
		 height:300px;
		 min-height:300px;
		 overflow:hidden;
		}
		
		</style>
<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>

<div id="map"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79c2ae6522e8e0df7b0592164f933676"></script>

<script>

//===============================기본 MAP 옵션=================================//
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨 
}; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
//============================================================================//

var positions = [];
var num = -1;


if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon)
		
        <c:forEach items="${mapList}" var="mapList">
        num += 1;
        positions[num] = new kakao.maps.LatLng(${mapList.latitude}, ${mapList.longitude});
        var data = positions[num];
        var content = '<div class="wrap">' + 
        '    <div class="info">' + 
        '        <div class="title">' + 
        '            Buskeround' +
        '        </div>' + 
        '        <div class="body">' + 
        '              <div class="img">' +
        '		<c:if test="${mapList.user_img != null}">' +
        '                 <img style="width:100%;height:80px;	" src="${pageContext.request.contextPath }/upload/${mapList.user_img}">' +
        '		</c:if>' +
        '		<c:if test="${mapList.user_img == null}">' +
        '                 <img src="/Buskeround/assets/image/blog/icon/user.png" width="73px">' +
        '		</c:if>' +
        '              </div>' +  
        '            <div class="desc">' + 
        '                <div class="ellipsis">활동명 : ${mapList.nickname}</div>' + 
        '                <div class="ellipsis">' + 
        '				 <c:if test="${mapList.genre == 1}">' +
        '                <div>장르   : 발라드</div>' + 
        '				 </c:if>' +
        '				 <c:if test="${mapList.genre == 2}">' +
        '                <div>장르   : 댄스</div>' + 
        '				 </c:if>' +
        '				 <c:if test="${mapList.genre == 3}">' +
        '                <div>장르   : 랩/힙합</div>' + 
        '				 </c:if>' +
        '				 <c:if test="${mapList.genre == 4}">' +
        '                <div>장르   : R&B/Soul</div>' + 
        '				 </c:if>' +
        '				 <c:if test="${mapList.genre == 5}">' +
        '                <div>장르   : 악기</div>' + 
        '				 </c:if>' +
        '				 <c:if test="${mapList.genre == 6}">' +
        '                <div>장르   : 기타</div>' + 
        '				 </c:if>' +
        '                </div>' + 
        '                <div class="jibun ellipsis">${mapList.intro}</div>' + 
        '            </div>' + 
        '        </div>' + 
        '    </div>' +    
        '</div>';
        
        displayMarker(locPosition,data,content);
        </c:forEach>
            
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667)
    map.setCenter(locPosition);
    console.log("위치를 알수없음");
    //displayMarker(locPosition); 마커생성 함수
}








//=================== 함수 ===================//
function displayMarker(locPosition,data,content) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: data
    }); 
    
	//오버레이 생성
    var overlay = new kakao.maps.CustomOverlay({
        yAnchor: 3,
        position: data
    });
    
    overlay.setContent(content);

    kakao.maps.event.addListener(marker, 'click', function() {
        overlay.setMap(map);
    });
    
    kakao.maps.event.addListener(map, 'click', function() {
        overlay.setMap(null);
    });
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);
}    
//==========================================//


	
</script>
</body>
</html>