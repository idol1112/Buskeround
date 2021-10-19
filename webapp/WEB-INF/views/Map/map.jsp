<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<title>Buskeround</title>
<!-- Title Icon -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/image/common/title.jpg">
    
    <style>
    	body {overflow:hidden}
    
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
	    
		.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
		.map_wrap {position:relative;width:100%;height:100%;}
		#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:365px;height:100%;padding:0px;overflow-y:auto;background:#ffffff;z-index: 1;font-size:12px;}
		.bg_white {background:#fff;}
		#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
		#menu_wrap .option{text-align: center;}
		#menu_wrap .option p {margin:10px 0;}  
		#menu_wrap .option button {margin-left:5px;}
		
		#searchList li {list-style: none;}
		#searchList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
		#searchList .item span {display: block;margin-top:4px;}
		#searchList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
		#searchList .item .info{padding:10px 0 10px 55px;}
		#searchList .info .gray {color:#8a8a8a;}
		#searchList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
		#searchList .info .tel {color:#009900;}
		#searchList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}

		.radius_border{border:1px solid #919191;border-radius:5px;}     
		.custom_zoomcontrol {position:absolute;top:50px;right:10px;width:36px;height:80px;overflow:hidden;z-index:1;background-color:#f5f5f5;} 
		.custom_zoomcontrol span {display:block;width:36px;height:40px;text-align:center;cursor:pointer;}     
		.custom_zoomcontrol span img {width:28px;height:28px;border:none;margin-top: 7px;margin-right: 2px;}             
		.custom_zoomcontrol span:first-child{border-bottom:1px solid #bfbfbf;} 
		
		#keyword{
		border:0;
		color:black;
		padding: 5px;
		border:2px solid #732991;
		margin:10px;
		}
		
		#btn_sh{
		border: 0px solid;
		background-color: #ffffff;
		margin-right: -15px;
    	margin-top: -16px;
    	background: rgba(255, 255, 255, 0.25);

		}
		
		#map{
		 width:80%;
		 height:100%;
		 min-height:900px;
		 position:relative;
		 overflow:hidden;
		}

		
		.listimg{
		padding: 5px 0px 0px 5px;
		}
		.formsearch{
		width:344px;
		padding: 10px 0px 0px 0px;
		background-color: #FFFFFF;
		}
		
		.boxsearch{
	    position:relative;
	    max-width:500px;
	    margin-left:10px;
	    margin-right:10px;
		}
		.inputsearch {
		    outline:0;
		    border:0;
		    display:block;
		    width:100%;
		    padding:20px;
		    padding-right:60px;
		    box-sizing:border-box;
		    font-weight:bold;
		    font-size:20px;
		    margin-left:-30px;
		}
		.buttonsearch {
		    position:absolute;
		    top:50%;
		    right:10px;
		    transform:translateY(-50%);
		}
		.listfont{
			font-size:20px;
		}
		
		.scroll{
		    padding: 0px 13px 0px 13px;
		    overflow-y: scroll;
		    box-sizing: border-box;
		    font-family: 'Nanum Gothic';
		    background-color: rgba(0,0,0,0.8);
		    margin-right: 50px;
		}
		/* 스크롤바 설정*/
		.type1::-webkit-scrollbar{
		    width: 6px;
		}
		
		/* 스크롤바 막대 설정*/
		.type1::-webkit-scrollbar-thumb{
		    height: 17%;
   
		}
		
		/* 스크롤바 뒷 배경 설정*/
		.type1::-webkit-scrollbar-track{

		} 

		
	</style>
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

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    
</head>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
	 <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
    <div class="custom_zoomcontrol radius_border"> 
        <span onclick="zoomIn()"><img src="${pageContext.request.contextPath}/assets/image/map/btn_plus.png" alt="확대"></span>  
        <span onclick="zoomOut()"><img src="${pageContext.request.contextPath}/assets/image/map/btn_minus.png" alt="축소"></span>
    </div>
	<!------------------------>
    <div id="menu_wrap" class="bg_white scroll type1">
        <div class="option">
            <div>
                <form onsubmit="searchPlaces(); return false;" class="formsearch">
                	<div class="boxsearch">
                    <input type="text" value="" id="keyword" class="inputsearch" placeholder="장소 입력"> 
                    <button type="submit" id="btn_sh" class="buttonsearch"><img src="/Buskeround/assets/image/artist/icon/search.png" width="35px" height="35px"></button> 
                    <img src="${pageContext.request.contextPath}/assets/image/map/busr.png" style="width:353px">
                    </div>
                </form>
            </div>
        </div>
		<div id="searchList"></div>

		
        
    </div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79c2ae6522e8e0df7b0592164f933676&libraries=services"></script>

<div id="map"></div>
<script>
    
    
var mapContainer = document.getElementById('map'), // 지도의 중심좌표
    mapOption = { 
        center: new kakao.maps.LatLng(37.49699749185255, 127.02445040286854), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다



//========================================
//장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

//키워드로 장소를 검색합니다
searchPlaces();

//키워드 검색을 요청하는 함수입니다
function searchPlaces() {

  var keyword = document.getElementById('keyword').value;

  if (!keyword.replace(/^\s+|\s+$/g, '')) {
	  
	  keyword += "강남역";
  }

  // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
  ps.keywordSearch( keyword, placesSearchCB); 
}

//장소검색이 완료됐을 때 호출되는 콜백함수 입니다
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

//검색 결과 목록과 마커를 표출하는 함수입니다
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



//========================================

var imageSrc = '/Buskeround/assets/image/map/makericon.png', // 마커이미지의 주소입니다    
imageSize = new kakao.maps.Size(48, 48), // 마커이미지의 크기입니다
imageOption = {offset: new kakao.maps.Point(26, 40)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)

var bounds = new kakao.maps.LatLngBounds();  // 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다

var positions = [];
var content = [];
var num = -1;
var num2 = -1;

//======================================지도 중심좌표 변경

kakao.maps.event.addListener(map, 'idle', function() {         

    // 지도의 중심좌표를 얻어옵니다 
    var latlngg = map.getCenter(); 
	
	var boundss = map.getBounds();
	
	var neLatLng = boundss.getNorthEast();
    var nlat = neLatLng.getLat();
    var nlng = neLatLng.getLng();
	
    var swLatLng = boundss.getSouthWest();
    var slat = swLatLng.getLat();
    var slng = swLatLng.getLng();
    
    var listEl = document.getElementById('searchList');
	var fragment = document.createDocumentFragment()
	
	removeAllChildNods(listEl);
	//removeAllChildNods(listEl);
    
	//서버에 위도경도전달
	$.ajax({
		url : "${pageContext.request.contextPath}/Map/mapns",
		type : "post",
		//contentType : "application/json",
		data : {nlat: nlat, nlng: nlng, slat: slat, slng: slng},
		
		dataType : "json",
		success : function(mapFind){
			for(var i=0; i<mapFind.length; i++){
			/////////////////
			var itemEl = getListItem(i, mapFind[i]);
			
			fragment.appendChild(itemEl);
			//////////////////	
			};
			
			listEl.appendChild(fragment);
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
});

function getListItem(index, mapFind) {
	var sumimg = mapFind.p_img;
    var el = document.createElement('li'),
    itemStr = '';
    itemStr +='<div class="body">'; 
    itemStr +='<div class="img listimg">';
    
    if(sumimg.indexOf("http") == 0){
    itemStr +='<img src="' + mapFind.p_img + '" width="350" height="250">'
    }else if(sumimg.indexOf("noimg") == 0){
    itemStr +='<a href="${pageContext.request.contextPath}/blog/blog_main/' + mapFind.id + '"><img src="${pageContext.request.contextPath}/assets/image/blog/img/noimg.png" width="350" height="250"></a>';
    }else{
    itemStr +='<a href="${pageContext.request.contextPath}/blog/blog_main/' + mapFind.id + '"><img src="${pageContext.request.contextPath }/upload/'+mapFind.p_img+'" width="350" height="250"></a>';
    }
    

    itemStr +='<div class="ellipsis listfont">활동명 : '+mapFind.nickname+'</div>';
    itemStr +='<div class="ellipsis listfont">장소명   : '+mapFind.address+'</div>';
    itemStr +='<div>';

    itemStr +='</div>';

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}







//======================================
	
//================================================================== 데이터베이스에서 가져온거 뺄것
<c:forEach items="${mapList}" var="mapList">
num += 1;
positions[num] = new kakao.maps.LatLng(${mapList.latitude}, ${mapList.longitude});

content[num] = '<div class="wrap">' + 
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
</c:forEach>
//==================================================================

for(let i=0; i < positions.length; i++){
    num2 += 1;
	var data = positions[i];
    displayMarker(data);
}

//LatLngBounds 객체에 좌표를 추가합니다
var datas = bounds.extend(data);

// 지도에 마커를 표시하는 함수입니다   
function displayMarker(data) { 

    var marker = new kakao.maps.Marker({
    	
        map: map,
        position: data,
        image: markerImage
    });

	
	//오버레이 생성
    var overlay = new kakao.maps.CustomOverlay({
        yAnchor: 3,
        position: marker.getPosition()
    });
    

			

    overlay.setContent(content[num2]);

    kakao.maps.event.addListener(marker, 'click', function() {
        overlay.setMap(map);
    });
    
    kakao.maps.event.addListener(map, 'click', function() {
        overlay.setMap(null);
    });
}

// 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}

//지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
function zoomIn() {
    map.setLevel(map.getLevel() - 1);
}

// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
function zoomOut() {
    map.setLevel(map.getLevel() + 1);
}
</script>

</body>
</html>