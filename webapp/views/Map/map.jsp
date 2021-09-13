<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>=_=;;</title>
    
    <style>
	    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
	    .wrap * {padding: 0;margin: 0;}
	    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
	    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
	    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
	    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
	    .info .close:hover {cursor: pointer;}
	    .info .body {position: relative;overflow: hidden;}
	    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
	    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
	    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
	    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
	    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	    .info .link {color: #5085BB;}
	</style>
    
    <link rel="stylesheet" href="../../assets/css/Common/common.css">
</head>
<body>
<c:import url="/views/includes/header.jsp"></c:import>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79c2ae6522e8e0df7b0592164f933676"></script>

<div id="map" style="width:100%;height:600px;"></div>
<script>
var mapContainer = document.getElementById('map'), // 지도의 중심좌표
    mapOption = { 
        center: new kakao.maps.LatLng(33.451475, 126.570528), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var positions = [];
var num = -1;
//================================================================== 데이터베이스에서 가져온거 뺄것
<c:forEach items="${mapList}" var="mapList">
num += 1;
positions[num] = new kakao.maps.LatLng(${mapList.latitude}, ${mapList.longitude});
</c:forEach>

//==================================================================

for(let i=0; i < positions.length; i++){
    var data = positions[i];
    displayMarker(data);
}

// 지도에 마커를 표시하는 함수입니다    
function displayMarker(data) { 
	console.log(data)
    var marker = new kakao.maps.Marker({
        map: map,
        position: data
    });
    var overlay = new kakao.maps.CustomOverlay({
        yAnchor: 3,
        position: marker.getPosition()
    });
    

    
/*     var content = document.createElement('div');
    content.innerHTML =  '<div class="wrap">' + 
    '    <div class="info">' + 
    '        <div class="title">' + 
    '            카카오 스페이스닷원' + 
    '            <div class="close" title="닫기"></div>' +
    '        </div>' + 
    '            <div class="desc">' + 
    '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
    '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
    '        </div>' + 
    '    </div>' +    
    '</div>'; */
    
    var content = document.createElement('div');
    content.innerHTML =  data;
    content.style.cssText = 'background: white; border: 1px solid black';
    
    var closeBtn = document.createElement('button');
    var a = closeBtn.innerHTML = '<div class="title">X</div>';
    closeBtn.onclick = function () {
        overlay.setMap(null);
    };
    
    content.appendChild(closeBtn);

    overlay.setContent(content);

    kakao.maps.event.addListener(marker, 'click', function() {
        overlay.setMap(map);
    });
}
</script>
</body>
</html>