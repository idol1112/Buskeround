<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/DatePicker/datepicker.min.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- datepicker -->
<script src="${pageContext.request.contextPath}/assets/js/datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/i18n/datepicker.ko.js"></script>

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
					<h5>공연신청 관리</h5>
				</div>
				<div id="mypage-main-content">
					<div id="content-filter-area">
						<label><img class="filter-img" alt="filter" src="${pageContext.request.contextPath}/assets/image/company/icon/filter-icon.png"></label>
						<div class="content-filter">
							<select name="stage_no" id="stage-select" class="select-box input">
                           		<c:forEach items="${stageList}" var="stageList" varStatus="status">
									<option value="${stageList.stage_no}">${stageList.stage_name}</option>
								</c:forEach>
							</select>
						</div>
						<div class="content-filter">
							<input type="date" class="input" id="datepicker1"/>
						</div>
						<div class="content-filter">
							<input type="date" class="input" id="datepicker2"/>
						</div>
						<label><img class="filter-img" alt="search" src="${pageContext.request.contextPath}/assets/image/company/icon/search-icon.png"></label>
					</div>
					<table class="table table-bordered">
						<colgroup>
							<col style="width: 15%">
							<col style="width: 15%">
							<col style="width: 15%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 15%">
							<col style="width: 10%">
							<col style="width: 7%">
							<col style="width: 3%">
						</colgroup>

						<tr>
							<th class="th-gray">장소</th>
							<th class="th-gray">날짜</th>
							<th class="th-gray">시간</th>
							<th class="th-gray">활동명</th>
							<th class="th-gray">장르</th>
							<th class="th-gray">연락처</th>
							<th class="th-gray">상세정보</th>
							<th class="th-gray">상태</th>
							<th class="th-gray"></th>
						</tr>
						<c:forEach items="${busappVo}" var="busappVo" varStatus="status">
						<tr>
							<td>${busappVo.stage_name}</td>
							<c:set var="bus_date" value="${busappVo.bus_date}"/>
							<td>${fn:substring(bus_date, 0, 10)}</td>
							<c:set var="start_time" value="${busappVo.start_time}"/><c:set var="end_time" value="${busappVo.end_time}"/>
							<td>${fn:substring(start_time, 11, 16)}-${fn:substring(end_time, 11, 16) }</td>
							<td>${busappVo.nickname}</td>
							<!-- 장르 -->
							<c:if test="${busappVo.genre == 1}">
								<td class="articon"><img class="genre-img2" src="${pageContext.request.contextPath}/assets/image/blog/icon/ballade.png" alt="발라드"></td>
							</c:if>

							<c:if test="${busappVo.genre == 2}">
								<td class="articon"><img class="genre-img" src="${pageContext.request.contextPath}/assets/image/blog/icon/dance.png" alt="댄스"></td>
							</c:if>

							<c:if test="${busappVo.genre == 3}">
								<td class="articon"><img class="genre-img" src="${pageContext.request.contextPath}/assets/image/blog/icon/hiphop.png" alt="힙합"></td>
							</c:if>

							<c:if test="${busappVo.genre == 4}">
								<td class="articon"><img class="genre-img" src="${pageContext.request.contextPath}/assets/image/blog/icon/soul.png" alt="R&B"></td>
							</c:if>

							<c:if test="${busappVo.genre == 5}">
								<td class="articon"><img class="genre-img" src="${pageContext.request.contextPath}/assets/image/blog/icon/musical.png" alt="악기"></td>
							</c:if>

							<c:if test="${busappVo.genre == 6}">
								<td class="articon"><img class="genre-img" src="${pageContext.request.contextPath}/assets/image/blog/icon/etc.png" alt="기타공연"></td>
							</c:if>
							<td>${busappVo.hp}</td>
							<td>상세정보</td>
							<c:if test="${busappVo.status == 1}">
								<td>수락</td>
							</c:if>

							<c:if test="${busappVo.status == 2}">
								<td>거절</td>
							</c:if>

							<c:if test="${busappVo.status == 3}">
								<td>진행중</td>
							</c:if>
							<td>
								<div class="checkbox">
									<input type="checkbox" name="apply_no" value="${busappVo.apply_no}">
								</div>
							</td>
						</tr>
						</c:forEach>
						
					</table>
				</div>
				<div class="btn-area">
					<button type="submit" class="btn-primary btn-sm">수락</button>
					<button type="submit" class="btn-danger btn-sm">거절</button>
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
datePickerSet($("#datepicker1"), $("#datepicker2"), true); //다중은 시작하는 달력 먼저, 끝달력 2번째

/*
    * 달력 생성기
    * @param sDate 파라미터만 넣으면 1개짜리 달력 생성
    * @example   datePickerSet($("#datepicker"));
    * 
    * 
    * @param sDate, 
    * @param eDate 2개 넣으면 연결달력 생성되어 서로의 날짜를 넘어가지 않음
    * @example   datePickerSet($("#datepicker1"), $("#datepicker2"));
    */
function datePickerSet(sDate, eDate, flag) {

    //시작 ~ 종료 2개 짜리 달력 datepicker	
    if (!isValidStr(sDate) && !isValidStr(eDate) && sDate.length > 0 && eDate.length > 0) {
        var sDay = sDate.val();
        var eDay = eDate.val();

        if (flag && !isValidStr(sDay) && !isValidStr(eDay)) { //처음 입력 날짜 설정, update...			
            var sdp = sDate.datepicker().data("datepicker");
            sdp.selectDate(new Date(sDay.replace(/-/g, "/")));  //익스에서는 그냥 new Date하면 -을 인식못함 replace필요

            var edp = eDate.datepicker().data("datepicker");
            edp.selectDate(new Date(eDay.replace(/-/g, "/")));  //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
        }

        //시작일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
        if (!isValidStr(eDay)) {
            sDate.datepicker({
                maxDate: new Date(eDay.replace(/-/g, "/"))
            });
        }
        sDate.datepicker({
            language: 'ko',
            autoClose: true,
            onSelect: function () {
                datePickerSet(sDate, eDate);
            }
        });

        //종료일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
        if (!isValidStr(sDay)) {
            eDate.datepicker({
                minDate: new Date(sDay.replace(/-/g, "/"))
            });
        }
        eDate.datepicker({
            language: 'ko',
            autoClose: true,
            onSelect: function () {
                datePickerSet(sDate, eDate);
            }
        });

        //한개짜리 달력 datepicker
    } else if (!isValidStr(sDate)) {
        var sDay = sDate.val();
        if (flag && !isValidStr(sDay)) { //처음 입력 날짜 설정, update...			
            var sdp = sDate.datepicker().data("datepicker");
            sdp.selectDate(new Date(sDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
        }

        sDate.datepicker({
            language: 'ko',
            autoClose: true
        });
    }


    function isValidStr(str) {
        if (str == null || str == undefined || str == "")
            return true;
        else
            return false;
    }
}

</script>
</html>