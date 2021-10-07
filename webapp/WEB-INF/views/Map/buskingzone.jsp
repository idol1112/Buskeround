<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>=_=;;</title>
    
    <style>
    	body {overflow:hidden}
    
	    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px; margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
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
	    .info .img {position: absolute;top: 6px;left: 5px;width: 83px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
	    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	    .info .link {color: #5085BB;}
	    
		.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
		.map_wrap {position:relative;width:100%;height:100%;}
		#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:365px;height:100%;padding:0px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;}
		.bg_white {background:#fff;}
		#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
		#menu_wrap .option{text-align: center;}
		#menu_wrap .option p {margin:10px 0;}  
		#menu_wrap .option button {margin-left:5px;}
		
		#overlayweb_table {position:absolute;top:0px;left:365px;width:360px;height:100%;z-index: 1;background-color:blue;}
		
		#searchList li {list-style: none;}
		#searchList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
		#searchList .item span {display: block;margin-top:4px;}
		#searchList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
		#searchList .item .info{padding:10px 0 10px 55px;}
		#searchList .info .gray {color:#8a8a8a;}
		#searchList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
		#searchList .info .tel {color:#009900;}
		#searchList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
		#searchList .item .marker_1 {background-position: 0 -10px;}
		#searchList .item .marker_2 {background-position: 0 -56px;}
		#searchList .item .marker_3 {background-position: 0 -102px}
		#searchList .item .marker_4 {background-position: 0 -148px;}
		#searchList .item .marker_5 {background-position: 0 -194px;}
		#searchList .item .marker_6 {background-position: 0 -240px;}
		#searchList .item .marker_7 {background-position: 0 -286px;}
		#searchList .item .marker_8 {background-position: 0 -332px;}
		#searchList .item .marker_9 {background-position: 0 -378px;}
		#searchList .item .marker_10 {background-position: 0 -423px;}
		#searchList .item .marker_11 {background-position: 0 -470px;}
		#searchList .item .marker_12 {background-position: 0 -516px;}
		#searchList .item .marker_13 {background-position: 0 -562px;}
		#searchList .item .marker_14 {background-position: 0 -608px;}
		#searchList .item .marker_15 {background-position: 0 -654px;}

		
		#keyword{
		border: 1px solid skyblue;
		color:black;
		padding: 5px;
		}
		
		#btn_sh{
		border: 0px solid;
		background-color: #ffffff;
		padding: 5px;

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
		padding: 10px 0px 10px 0px;
		background-color: #00BFFF;
		box-shadow: 0 2px 1px 0 rgb(0 0 0 / 15%);
		}
		
		.boxsearch{
	    border:1px solid blue;
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
		    font-size:2rem;
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
		    background-color: #00BFFF;   
		}
		
		/* 스크롤바 뒷 배경 설정*/
		.type1::-webkit-scrollbar-track{
		    background-color: 	#AFEEEE;
		} */
		
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


    <div id="menu_wrap" class="bg_white scroll type1">
        <div class="option">
            <div>
                <form onsubmit="searchPlaces(); return false;" class="formsearch">
                	<div class="boxsearch">
                    <input type="text" value="강남역" id="keyword" class="inputsearch" placeholder="장소 입력"> 
                    <button type="submit" id="btn_sh" class="buttonsearch"><img src="/Buskeround/assets/image/map/searchbtn.png" width="35px" height="35px"></button> 
                    </div>
                </form>
            </div>
        </div>
		<div id="searchList"></div>    
    </div>
		<div id="overlayweb"></div> 
</div>






<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79c2ae6522e8e0df7b0592164f933676"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.49699749185255, 127.02445040286854), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

kakao.maps.event.addListener(map, 'dragend', function() {         

    // 지도의 중심좌표를 얻어옵니다 
    var latlngg = map.getCenter(); 
	//console.log("중심좌표!"+ latlngg);
	
	var boundss = map.getBounds();
	
	var neLatLng = boundss.getNorthEast();
    var nlat = neLatLng.getLat();
    var nlng = neLatLng.getLng();
	
    var swLatLng = boundss.getSouthWest();
    var slat = swLatLng.getLat();
    var slng = swLatLng.getLng();
    
    var listEl = document.getElementById('searchList');
    var overlayClose = document.getElementById('overlayweb');
	var fragment = document.createDocumentFragment()

	removeAllChildNods(listEl);
	removeOverlay(overlayClose);
	
	//서버에 위도경도전달
	$.ajax({
		url : "${pageContext.request.contextPath}/buskingzonens",
		type : "post",
		//contentType : "application/json",
		data : {nlat: nlat, nlng: nlng, slat: slat, slng: slng},
		
		dataType : "json",
		success : function(buskingzoneList){
 			for(var i=0; i<buskingzoneList.length; i++){
			/////////////////
			var itemEl = getListItem(i, buskingzoneList[i]);
			
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

function getListItem(index, buskingzoneList) {
	var sumimg = buskingzoneList.com_img;
    var el = document.createElement('li'),
    itemStr = '';
    itemStr +='<div class="body">'; 
    itemStr +='<div class="img listimg" onclick="overlayVo('+buskingzoneList.user_no+')">';
    
    itemStr +='<div class="ellipsis listfont">'+buskingzoneList.com_name+'</div>';
    itemStr +='<div class="ellipsis listfont">'+buskingzoneList.address+'</div>';
    itemStr +='<div class="ellipsis listfont">'+buskingzoneList.com_number+'</div>';
    
    
	if(sumimg.indexOf("noimg") == 0){
    itemStr +='<img src="${pageContext.request.contextPath}/assets/image/blog/img/noimg.png" width="150" height="150" >';
    }else{
    itemStr +='<img src="${pageContext.request.contextPath }/upload/'+buskingzoneList.com_img+'" width="350" height="250">';
    }
    
    itemStr +='</div>';

    itemStr +='</div>';
    

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}


function overlayVo(no) {
	console.log(no);
	//서버에 삭제요청(no, password 전달)
	$.ajax({
		url : "${pageContext.request.contextPath}/overlayList" ,
		type : "post",
		//contentType : "application/json",
		data : {
			user_no : no
		},
		
		dataType : "json",
		success : function(overlayVo){
			/*성공시 처리해야될 코드 작성*/
			overlay(overlayVo);
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
};





















function removeOverlay(overlayClose) {   
    while (overlayClose.hasChildNodes()) {
    	overlayClose.removeChild (overlayClose.lastChild);
    }
}



//검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
function overlay(overlayVo){
	var str = "";
	str += '<table id="overlayweb_table">';
	str += '	<tr>';
	str += '		<td><img src="${pageContext.request.contextPath }/upload/'+ overlayVo.com_img + '" width="350" height="250"></td>';
	str += '	</tr>';
	
	str += '	<tr>';
	str += '		<td>'+ overlayVo.user_no + '</td>';
	str += '		<td>'+ overlayVo.user_no + '</td>';
	str += '		<td>'+ overlayVo.user_no + '</td>';
	str += '	</tr>';
	str += '</table>';
	
	$("#overlayweb").html(str);
	
}
</script>
</body>
</html>