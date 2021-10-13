<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>=_=;;</title>

    <style>
    	body {overflow:hidden}

	    .wrap {position: absolute;left: 0;bottom: 40px;width: 150px;height: 51px; margin-left: -75px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
	    .wrap * {padding: 0;margin: 0;}
	    .wrap .info {width: 150px;height: 40px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
	    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
	    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
	    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
	    .info .close:hover {cursor: pointer;}
	    .info .body {position: relative;overflow: hidden;}
	    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}

	    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
	    .info .img {position: absolute;top: 6px;left: 5px;width: 83px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
	    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	    .info .link {color: #5085BB;}

		.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
		.map_wrap {position:relative;width:100%;height:100%;}
		#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:361px;height:100%;padding:0px;overflow-y:auto;background:#ffffff;z-index: 1;font-size:12px;}
		.bg_white {background:#fff;}
		#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
		#menu_wrap .option{text-align: center;}
		#menu_wrap .option p {margin:10px 0;}
		#menu_wrap .option button {margin-left:5px;}

		#overlayweb_table {position:absolute;top:0px;left:365px;width:360px;height:100%;z-index: 1;background-color:White; margin-left: -10px;}

		#searchList li {list-style: none;}
		#searchList .item {position:relative;overflow: hidden;cursor: pointer;min-height: 65px;}
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

        #table {
        width: 360px;
        margin-top: 10px;

        }

        #company_box {
          width: 330px;
          height: 180px;
        }

        #company_box img {
           height:100%;
           width: 100%;
           object-fit: contain;
        }

        #overlayweb_img_box {
          width: 100%;
          height: 250px;
          object-fit:contain;
          margin-top: 10px;
        }

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
		margin: 0 15px;
        padding: 15px 0;
        border-bottom:1px solid #A9A9A9;
		}

		.listimg:hover {
    	background: #E0ECF8;
  		}

		.formsearch{
		width:344px;
		padding: 10px 0px 0px 0px;
		background-color: #FFFFFF;
		}

		.boxsearch{
	    border:0px solid #BF00FF;
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

		.listfont_title {
            padding-top: 10px;
			width:250px;
			font-size:20px;
			font-weight: 900;
            color: #0068c3;
		}

		.listfont_address{
            margin-top: 5px;
            font-size:16px;
            color: #919391;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

		.listfont_number{
			font-size:16px;
            color: #919391;
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

		#com_name{
			text-align: center;font-size:30px; font-weight: bold;
		}

	.button_application {
	  background-color: #D358F7;
	  border: none;
	  color: white;
	  padding: 15px 32px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	}


	.affiliate_info{
	  font-size: 14px;
      margin: 5px 15px;
	}

	.Whether{
	border: 0px;
	background-color: #FFFFFF;
	}

	.sumimg{
	width:350px;height=200px;

	}

	.ovralyfont{

	font-size:15px;
	text-align: center;

	}


/* 	div *,
	div *:before,
	div *:after {
	    -webkit-box-sizing: content-box !important;
	    -moz-box-sizing: content-box !important;
	    box-sizing: content-box !important;
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
                    <img src="${pageContext.request.contextPath}/assets/image/map/busr.png" style="width:353px">
                    </div>
                </form>
            </div>
        </div>
		<div id="searchList"></div>
    </div>
		<div id="overlayweb"></div>
</div>






<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=79c2ae6522e8e0df7b0592164f933676&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = {
        center: new kakao.maps.LatLng(37.49699749185255, 127.02445040286854), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);
//========================================
//장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();

// 키워드로 장소를 검색합니다
searchPlaces();

//키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
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


//kakao.maps.event.addListener(map, 'idle', function() {
//========================================

kakao.maps.event.addListener(map, 'idle', function() {

    // 지도의 중심좌표를 얻어옵니다
    var latlngg = map.getCenter();
	//console.log("중심좌표!"+ latlngg);

	var boundss = map.getBounds();
	console.log(boundss);
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
			console.log(buskingzoneList.length);
			var itemEl = getListItem(i, buskingzoneList[i]);

			fragment.appendChild(itemEl);

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

	if(sumimg.indexOf("noimg") == 0){
    itemStr +='<img src="${pageContext.request.contextPath}/assets/image/blog/img/noimg.png" width="330px" height="180px" >';
    }else{
    itemStr +='<div id="company_box"><img src="${pageContext.request.contextPath }/upload/'+buskingzoneList.com_img+'"></div>';
    }
    itemStr +='<div class="listfont_title">'+buskingzoneList.com_name+'</div>';
    itemStr +='<div class="listfont_address"><p class="listfont_addresss"> 주소: '+buskingzoneList.address+'</p></div>';
    itemStr +='<div class="listfont_number">번호: '+buskingzoneList.com_number+'</div>';
    itemStr +='</div>';
    itemStr +='</div>';

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}


function overlayVo(no) {
	console.log(no);
	var info = [];
	//서버에 삭제요청(no, password 전달)
	$.ajax({
		url : "${pageContext.request.contextPath}/overlayList" ,
		type : "post",
		//contentType : "application/json",
		data : {
			user_no : no
		},

		dataType : "json",
		success : function(mapOverlay){
		for(var i=0; i < mapOverlay.overlayStage.length; i++){
			info[i] = mapOverlay.overlayStage[i].stage_name;
		}
			/*성공시 처리해야될 코드 작성*/
			overlay(mapOverlay,info);


		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});

};

var positions = [];
var contentinfo = [];
var userNos = [];
var num = -1;
var num2 = -1;

//========================================================

 if (navigator.geolocation) {

    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {


        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도

        var locPosition = new kakao.maps.LatLng(lat, lon) // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다

        // 리스트가져온거 빼주기


        <c:forEach items="${buskingzoneList}" var="buskingzoneList">
        num += 1;
        positions[num] = new kakao.maps.LatLng(${buskingzoneList.latitude}, ${buskingzoneList.longitude});
        contentinfo[num] = "${buskingzoneList.com_name}";
		userNos[num] = "${buskingzoneList.user_no}";
        </c:forEach>

        for(let i=0; i < positions.length; i++){
            num2 += 1;
        	var data = positions[i];
        	var content = contentinfo[i];
			var userNo = userNos[i];
	        var contentbox = '<div class="wrap">' +
	        '    <div class="info">' +
	        '        <div class="ovralyfont">' +
	        '            '+content+'' +
	        '        </div>' +
	        '    </div>' +
	        '</div>';
            displayMarker(locPosition,data,content,userNo,contentbox);
        }



      });

}



function displayMarker(locPosition,data,content,userNo,contentbox) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: data
    });

    var overlay = new kakao.maps.CustomOverlay({
        content: contentbox,
        map: map,
        position: data
    });


    overlay.setMap(map);

    // 지도 중심좌표를 접속위치로 변경합니다

    kakao.maps.event.addListener(marker, 'click', function() {
    	overlayVo(userNo);
    });

}





//========================================================











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
function overlay(mapOverlay,info){

	var str ='<div id="overlayweb_table">'+
	'<input type="hidden" name="company_no" value="'+mapOverlay.overlayList.user_no+'">'+
	'<input type="hidden" name="time_no" value="">'+
	'	<div>'+
	'		<img id="overlayweb_img_box" src="${pageContext.request.contextPath }/upload/'+ mapOverlay.overlayList.com_img + '">'+
	'	</div>'+

	'	<div>'+
	'		<div id="com_name">'+ mapOverlay.overlayList.com_name + '</div>'+
	'	</div>'+

	'	<div>'+
	'		<div class="affiliate_info">대표자명 : '+ mapOverlay.overlayList.ceo_name + '</div>'+
	'		<div class="affiliate_info">전화번호 : '+ mapOverlay.overlayList.com_number + '</div>'+
	'		<div class="affiliate_info">상세주소 : '+ mapOverlay.overlayList.address + '</div>'+
	'	</div>'+

	'<table id="table">'+
	'<tr align ="center">'+
	'<td width="150px">장소</td>'+
	'<td>'+
	'	<div>'+
	'	<select name="stage" id="stage-select" style="width:180px;height:36px; margin-bottom:10px">'+
	'           <option value="non">장소 선택</option>';
	for(var i=0; i<info.length; i++){
	str +='		<option value="'+info[i]+'">'+info[i]+'';
	str +='		</option>';
	}
	str +='	</select>';
	str +='	</div>';
	str +='</td>';
	str +='</tr>';

	str +='<tr align ="center">';
	str +='<td width="150px">날짜</td>';
	str +='<td>';
	str +='	<div>';
	str +=' <select name="stage_date" id="stage_date" style="width:180px;height:36px; margin-bottom:10px">';
	str +='		<option value="">날짜 선택';
	str +='		</option>';
	str +='	</select>';
	str +='	</div>';
	str +='</td>';
	str +='</tr>';

	str +='<tr align ="center">';
	str +='<td width="150px">시간</td>';
	str +='<td>';
	str +='	<div>';
	str +=' <select name="stage_time" id="stage_time" style="width:180px;height:36px; margin-bottom:10px">';
	str +='		<option value="">시간 선택';
	str +='		</option>';
	str +='	</select>';
	str +='	</div>';
	str +='</td>';
	str +='</tr>';

	str +='<tr align ="center">';
	str +='<td width="150px">우천시</td><td>';
	str +='<div>';
	str +='<input type="text" class="Whether" name="rain" value="" style="width:180px; margin-bottom:10px" disabled>';
	str +='</div>';
	str +='</td></tr>';

	str +='<tr align ="center">';
	str +='<td width="150px">무대조명</td><td>';
	str +='<div>';
	str +='<input type="text" class="Whether" name="light" value="" style="width:180px; margin-bottom:10px" disabled>';
	str +='</div>';
	str +='</td></tr>';

	str +='<tr align ="center">';
	str +='<td width="150px">주차여부</td><td>';
	str +='<div>';
	str +='<input type="text" class="Whether" name="parking" value="" style="width:180px; margin-bottom:10px" disabled>';
	str +='</div>';
	str +='</td></tr>';


	str +='<tr align ="center">';
	str +='<td width="150px">제휴사 요청사항</td><td>';
	str +='<div>';
	str +='<input type="text" class="Whether" name="zoneRequest" value="" style="width:180px;height:100px; margin-bottom:10px" disabled>';
	str +='</div>';
	str +='</td></tr>';


	str +='<tr align ="center">';
	str +='<td width="150px">아티스트 요청사항</td><td>';
	str +='<div>';
	str += '<input type="text" name="artistRequest" value="" style="width:180px;height:100px; margin-bottom:10px">';
	str +='</div>';
	str +='</td></tr>';

	str +='<tr align ="center">';
	str +='<td colspan = "2">';
	str +='<div>';
	<c:if test="${authUser.user_no != null}">
	str += '<button class="button_application" id="btnSubmit" onclick="relay();">공연신청</button>';
	str += '<input type="hidden" name="userNo" value="'+${authUser.user_no}+'">';
	</c:if>
	str +='</div>';
	str +='</td></tr>';

	str +='	</div>';
	str +='</table>';



	$("#overlayweb").html(str);

	//장소 선택시 날짜 정보 가져오기
	$("#overlayweb_table").on("change","#stage-select",function(){
		var buskingzone = $(this).val();
		var companyno = $("[name='company_no']").val();


		$.ajax({
			url : "${pageContext.request.contextPath }/overlaySch",
			type : "post",
			//contentType : "application/json",
			data :  {buskingzone: buskingzone,companyno: companyno},


			//dataType : "json",
			success : function(buskingzoneVo) {

				$(".che").remove();
				$(".ches").remove();
				$("[name='zoneRequest']").val("");
				$("[name='rain']").val("");
				$("[name='light']").val("");
				$("[name='parking']").val("");
				$("[name='artistRequest']").val("");




				for(var i = 0; i<buskingzoneVo.length; i++){
					console.log(i);

					render(buskingzoneVo[i]);

				}


			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}

	});
});

//==============================================================================//
	$("#overlayweb_table").on("change","#stage_date",function(){
		var busdate = $(this).val();
		var buskingzone = $("[name='stage']").val();
		var companyno = $("[name='company_no']").val();
		var buskingzone_date = busdate.substring(0, 10);

 		$.ajax({
			url : "${pageContext.request.contextPath }/overlayTime",
			type : "post",
			//contentType : "application/json",
			data :  {buskingzone_date: buskingzone_date,companyno: companyno,buskingzone: buskingzone},


			//dataType : "json",
			success : function(timeVo) {
 				$(".ches").remove();

				for(var i = 0; i<timeVo.length; i++){

					renderTime(timeVo[i]);

				}


			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}

	});
});






};
//날짜데이터를 가져와서 그려주기
function render(buskingzoneVo) {
	var str = '';

	str += '<option class="che" value="'+buskingzoneVo.bus_date+'">'+buskingzoneVo.bus_date+'</option>';
	$("#stage_date").append(str);
}

//날짜데이터 선택시 우천시,라이트,주차,요구사항,시간대 그려주기
function renderTime(timeVo) {
	var str = '';

	str += '<option class="ches" value="date">'+timeVo.start_time.substring(11, 16)+'~'+timeVo.end_time.substring(11, 16)+'</option>';


	$("[name='time_no']").val(timeVo.time_no);
	$("[name='zoneRequest']").val(timeVo.requirements);

	if("1" == timeVo.rain_progress){
		$("[name='rain']").val("가능");
	}else{
		$("[name='rain']").val("불가능");
	}

	if("1" == timeVo.stage_light){
		$("[name='light']").val("가능");
	}else{
		$("[name='light']").val("불가능");
	}

	if("1" == timeVo.parking){
		$("[name='parking']").val("가능");
	}else{
		$("[name='parking']").val("불가능");
	}



	$("#stage_time").append(str);
}
//==========================================================
//등록 버튼 클릭할때
function relay(){

	console.log("등록버튼 클릭");

	var user_no = $("[name='userNo']").val();
	console.log(user_no);

	var time_no = $("[name='time_no']").val();
	console.log(time_no);

	var artistRequest = $("[name='artistRequest']").val();
	console.log(artistRequest);



	//데이터 ajax방식으로 서버에 전송
	$.ajax({
		url : "${pageContext.request.contextPath }/buskingApp" ,
		type : "post",
		//contentType : "application/json",
		data : {user_no: user_no, time_no: time_no, artistRequest: artistRequest},

		dataType : "json",
		success : function(buskingVo){
			/*성공시 처리해야될 코드 작성*/

		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});

};





</script>
</body>
</html>