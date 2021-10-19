<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<!DOCTYPE html>
<html lang="ko">
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
</head>

<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!------- header -------->

	<!-- Content -->
	<div class="row" id="contentbox">
		<div class="col-xl-2"></div>
		<div class="col-xl-8" id="mypage">
			<c:import url="/WEB-INF/views/MyPage/includes/aside.jsp"></c:import>
			<div id="mypage-right">
				<div id="mypage-right-header">
					<h5>공연신청 현황</h5>
				</div>
				<div id="mypage-right-content">
					<c:if test="${fn:length(applyListVo) == 0}">
						<p>신청 내역이 없습니다.</p>
					</c:if>
					<c:if test="${fn:length(applyListVo) != 0}">
					<table class="table table-bordered">
						<colgroup>
							<col style="width: 10%">
							<col style="width: 13%">
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 27%">
							<col style="width: 12%">
							<col style="width: 8%">
							<col style="width: 7%">
							<col style="width: 3%">
						</colgroup>

						<tr>
							<th class="th-gray">장소명</th>
							<th class="th-gray">공연장소</th>
							<th class="th-gray">날짜</th>
							<th class="th-gray">시간</th>
							<th class="th-gray">주소</th>
							<th class="th-gray">연락처</th>
							<th class="th-gray">요구사항</th>
							<th class="th-gray">상태</th>
							<th class="th-gray"></th>
						</tr>
						<c:forEach items="${applyListVo}" var="vo" varStatus="status">
						<tr>
							<td>${vo.com_name }</td>
							<td>${vo.stage_name }</td>
							<c:set var="bus_date" value="${vo.bus_date}"/>
							<td>${fn:substring(bus_date, 0, 10)}</td>
							<c:set var="start_time" value="${vo.start_time}"/><c:set var="end_time" value="${vo.end_time}"/>
							<td>${fn:substring(start_time, 11, 16)}-${fn:substring(end_time, 11, 16) }</td>
							<td>${vo.address }</td>
							<td>${vo.com_number }</td>
							<td class="info_text"><span class="click_item" data-no="${vo.requirements }">요구사항</span></td>
							<c:if test="${vo.status == 1}">
								<td class="articon"><img class="status-img" src="${pageContext.request.contextPath}/assets/image/company/icon/accept.png" alt="수락"></td>
							</c:if>

							<c:if test="${vo.status == 2}">
								<td class="articon"><img class="status-img" src="${pageContext.request.contextPath}/assets/image/company/icon/refuse.png" alt="거절"></td>
							</c:if>

							<c:if test="${vo.status == 3}">
								<td class="articon"><img class="status-img" src="${pageContext.request.contextPath}/assets/image/company/icon/ongoing.png" alt="진행중"></td>
							</c:if>
							<td>
								<a id="appDel" href="${pageContext.request.contextPath }/Company/applyListRemove?no=${vo.apply_no}" ><img class="delBtn" src="${pageContext.request.contextPath}/assets/image/company/icon/delete.png"></a>
							</td>
						</tr>
						</c:forEach>
					</table>
					</c:if>
				</div>
			</div>
		</div>
		<div class="col-xl-2"></div>
	</div>

	<!-- content -->
	<div class="row" id="content"></div>
	<!-------- content -------->

	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<!------- footer -------->
	

	<!------------- Modal --------------->
  <div class="modal fade" id="infoModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->   
      <div class="modal-content">
        <div class="modal-header">
 
          <h4 class="modal-title"></h4>
          <img class="delBtn close" src="${pageContext.request.contextPath}/assets/image/company/icon/delete.png">

        </div>
        <div class="modal-body">
			<div class="modal_content" id="modal_text"></div>
        </div>
      </div>
    </div>
  </div>
  
</body>

<script type="text/javascript">
//요구사항 클릭
$(".click_item").on("click", function() {
	var requirements = $(this).data("no");
	console.log(requirements);
	$('.modal-title').text("요구사항");
	$(".modal_content").append(requirements);
	$("#infoModal").modal('show');
});

//모달창 끄기
$(".close").on("click", function() {
  	$("#infoModal").modal('hide');
  	$(".modal_content").empty();
  });

</script>
</html>