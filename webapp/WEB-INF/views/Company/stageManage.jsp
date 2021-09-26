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
					<h5>공연장 관리</h5>
				</div>
				
				<div id="mypage-right-content">
                    <form action="#" method="get">
                        <table>
                            <tr>
                                <td class="table-head"><label for="stage_name">장소명</label></td>
                                <td><input class="input" type="text" id="stage_name" name="stage_name" value=""></td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="rain_progress">우천시 진행</label></td>
                                <td>
                                	<div class="radio-group">
	                                	<label class="radio-inline">
	                                		<input type="radio" name="rain_progress" id="rain_progress" value="1" checked="checked"> 가능
										</label> 
										<label class="radio-inline">
											<input type="radio" name="rain_progress" id="rain_progress" value="0"> 불가능
										</label>
									</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="stage_light">무대조명</label></td>
                                <td>
                                	<div class="radio-group">
	                               		<label class="radio-inline">
	                                		<input type="radio" name="stage_light" id="stage_light" value="1" checked="checked"> 가능
										</label> 
										<label class="radio-inline">
											<input type="radio" name="stage_light" id="stage_light" value="0"> 불가능
										</label>
									</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="parking">주차</label></td>
                                <td>
                                	<div class="radio-group">
	                                	<label class="radio-inline">
	                                		<input type="radio" name="parking" id="parking" value="1" checked="checked"> 가능
										</label> 
										<label class="radio-inline">
											<input type="radio" name="parking" id="parking" value="0"> 불가능
										</label>
									</div>
                                </td>
                            </tr>
                            <tr>
                                <td class="table-head"><label for="business_number">공연장리스트</label></td>
                                <td>
                                	<ul class="place-list-group">
										<li class="place-list">
											<span class="label label-default">7층 스테이지</span>
										</li>
										<li class="place-list">
											<span class="label label-default">8층 카페</span>
										</li>
										<li class="place-list">
											<span class="label label-default">9층 옥상</span>
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
</html>