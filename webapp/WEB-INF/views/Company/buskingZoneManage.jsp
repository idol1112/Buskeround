<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
					<h5>버스킹존 관리</h5>
				</div>
				<div id="mypage-right-content">
                    <form action="" method="get">
                    <input type="hidden" name="user_no" value="${sessionScope.authUser.user_no }">
                        <table>
                            <tr>
                                <td class="table-head"><label for="stage_name">장소명</label></td>
                                <td>
	                            	<select name="stage_name" id="stage-select" class="select-box input">
										<option value="">7층 스테이지</option>
										<option value="">8층 카페</option>
									</select>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="business_number">공연 날짜</label></td>
                                <td>
                                	<input class="input" type="text" id="datepicker"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="business_number">요구 사항</label></td>
                                <td>
                                	<textarea class="input form-control" style= width:395px;height:200px></textarea>
                                </td>
                            </tr>
                            <tr>
                            	<td class="table-head"><label for="business_number">공연 시간</label></td>
                            	<td>
                            		<select name="start_time" class="input input-time">
                            			<option>00:00</option><option>00:30</option><option>01:00</option><option>01:30</option><option>02:00</option><option>02:30</option><option>03:00</option><option>03:30</option>
                            			<option>04:00</option><option>04:30</option><option>05:00</option><option>05:30</option><option>06:00</option><option>06:30</option><option>07:00</option><option>07:30</option>
                            			<option>08:00</option><option>08:30</option><option>09:00</option><option>09:30</option><option>10:00</option><option>10:30</option><option>11:00</option><option>11:30</option>
                            			<option>12:00</option><option>12:30</option><option>13:00</option><option>13:30</option><option>14:00</option><option>14:30</option><option>15:00</option><option>16:30</option>
                            			<option>16:00</option><option>16:30</option><option>17:00</option><option>17:30</option><option>18:00</option><option>18:30</option><option>19:00</option><option>19:30</option>
                            			<option>20:00</option><option>20:30</option><option>21:00</option><option>21:30</option><option>22:00</option><option>22:30</option><option>23:00</option><option>23:30</option><option>24:00</option>
                            		</select>
                            		<img class="icon-img" src="${pageContext.request.contextPath}/assets/image/company/icon/from.png">
                            		<select name="start_time" class="input input-time">
                            			<option>00:00</option><option>00:30</option><option>01:00</option><option>01:30</option><option>02:00</option><option>02:30</option><option>03:00</option><option>03:30</option>
                            			<option>04:00</option><option>04:30</option><option>05:00</option><option>05:30</option><option>06:00</option><option>06:30</option><option>07:00</option><option>07:30</option>
                            			<option>08:00</option><option>08:30</option><option>09:00</option><option>09:30</option><option>10:00</option><option>10:30</option><option>11:00</option><option>11:30</option>
                            			<option>12:00</option><option>12:30</option><option>13:00</option><option>13:30</option><option>14:00</option><option>14:30</option><option>15:00</option><option>16:30</option>
                            			<option>16:00</option><option>16:30</option><option>17:00</option><option>17:30</option><option>18:00</option><option>18:30</option><option>19:00</option><option>19:30</option>
                            			<option>20:00</option><option>20:30</option><option>21:00</option><option>21:30</option><option>22:00</option><option>22:30</option><option>23:00</option><option>23:30</option><option>24:00</option>
                            		</select>
                            		<img class="icon-img addBtn" src="${pageContext.request.contextPath}/assets/image/company/icon/add.png">
                            	</td>
                            </tr>
                            <tr>
                            	<td class="table-head"><label for="business_number">일정 리스트</label></td>
                            	<td>
                            		<ul class="list-group">
										<li class="list">
											<span class="label label-default">
												<span>18:00</span>
												<img class="icon-img" src="${pageContext.request.contextPath}/assets/image/company/icon/from.png"> 
												<span>20:00</span>
											</span>
											<img class="icon-img" src="${pageContext.request.contextPath}/assets/image/company/icon/delete.png">
										</li>
										<li class="list">
											<span class="label label-default">
												<span>20:00</span> 
												<img class="icon-img" src="${pageContext.request.contextPath}/assets/image/company/icon/from.png"> 
												<span>22:00</span>
											</span>
											<img class="icon-img" src="${pageContext.request.contextPath}/assets/image/company/icon/delete.png">
										</li>
									</ul>
                            	</td>
                            </tr>
                        </table>
                        <button type="submit" class="float-end btn btn-primary btn-sm" id="stageInsbtn">저장</button>
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

//datepicker
$("#datepicker").datepicker({
	language: 'ko'
}); 

</script>
</html>