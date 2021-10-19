<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_timeline.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogStart.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>

  <!------ br_container ------>
  <div class="clearfix" id="br_container">
    <c:import url="/WEB-INF/views/Blog/includes/aside.jsp"></c:import>

    <!------ br_content ------>
    <div id="br_content">
      <c:import url="/WEB-INF/views/Blog/includes/header.jsp"></c:import>

      <c:import url="/WEB-INF/views/Blog/includes/navigation.jsp"></c:import>

      <!---- timeline ---->
      <div class="timeline_box">
        <input type="button" value="오늘" class="btn_today">
        <input type="button" value="<" class="btn_prev">
        <input type="button" value=">" class="btn_next">
        <p class="date" id="date"></p>
       <div class="timeline">
          <ul>
            <div id="listArea"></div>
            <div id="line" style="clear: both;"></div>
          </ul>
        </div>
      </div>
      <!------ ////(timeline)//// ------>
    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>
</body>

<script type="text/javascript">
	// 주간 날짜 구하기
	var currentDay = new Date();
	var theYear = currentDay.getFullYear();
	var theMonth = currentDay.getMonth();
	var theDate = currentDay.getDate();
	var theDayOfWeek = currentDay.getDay();

	var year = [];
	var month = [];
	var date = [];
	var thisWeek = [];

	for (var i = 0; i < 7; i++) {
		var resultDay = new Date(theYear, theMonth, theDate
				+ (i - theDayOfWeek));
		var yyyy = resultDay.getFullYear();
		var mm = Number(resultDay.getMonth()) + 1;
		var dd = resultDay.getDate();

		mm = String(mm).length === 1 ? '0' + mm : mm;
		dd = String(dd).length === 1 ? '0' + dd : dd;

		year[i] = yyyy;
		month[i] = mm;
		date[i] = dd;
	}

	// 날짜 구하기
	var now_date_start = new Date(Date.parse(year[0] + "-"	+ Number(month[0]) + "-" + Number(date[0])));
	var YYMMDD_start = new Date(Date.parse(year[0] + "-"	+ Number(month[0]) + "-" + Number(date[0])));

	var now_date_end = new Date(Date.parse(year[6] + "-"	+ Number(month[6]) + "-" + Number(date[6])));
	var YYMMDD_end = new Date(Date.parse(year[6] + "-"	+ Number(month[6]) + "-" + Number(date[6])));

	// 페이지 로딩됐을 때
	$(document).ready(function() {
		$('.date').text(year[0] + "년 " + month[0] + "월 " + date[0] + "일"	+ " - " + year[6] + "년 " + month[6] + "월 "	+ date[6] + "일");

		$.ajax({
			// 컨트롤러에서 대기중인 URL 주소이다.
			url : "${pageContext.request.contextPath}/api/blog/timeline",

			// HTTP method type(GET, POST) 형식이다.
			type : "get",

			// Json 형태의 데이터로 보낸다.
			contentType : "application/json",

			// Json 형식의 데이터를 받는다.
			dataType : "json",

			data : {
				start_date : year[0] + "" + month[0] + date[0],
				end_date : year[6] + "" + month[6] + date[6],
				user_no : ${blogVo.user_no}
			},

			// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
			success : function(timeList) {
				/*성공시 처리해야될 코드 작성*/

				$("#listArea").empty();
				$(".timeline").show();

				for (var i = 0; i < timeList.length; i++) {
					render(timeList[i]);
				}

				if (timeList.length == 0) {
					$(".timeline").hide();
				}

			},

			// 실패할경우 error로 들어온다.
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

		// btn_today 눌렀을 때
		$(".btn_today").on("click",	function() {

			// next_Starting
			YYMMDD_start = new Date(Date.parse(year[0] + "-" + Number(month[0]) + "-" + Number(date[0])));

			var now_year_start = now_date_start.getFullYear();
			var now_month_start = ('0' + (now_date_start.getMonth() + 1)).slice(-2);
			var now_day_start = ('0' + now_date_start.getDate()).slice(-2);

			var now_dateStarting = now_year_start + '년 ' + now_month_start + '월 ' + now_day_start	+ '일';

			// next_Ending
			YYMMDD_end = new Date(Date.parse(year[6] + "-"	+ Number(month[6]) + "-" + Number(date[6])));

			var now_year_end = now_date_end.getFullYear();
			var now_month_end = ('0' + (now_date_end.getMonth() + 1)).slice(-2);
			var now_day_end = ('0' + now_date_end.getDate()).slice(-2);

			var now_dateEnding = now_year_end + '년 ' + now_month_end + '월 ' + now_day_end + '일';

			$('.date').text(now_dateStarting + " - " + now_dateEnding);

			$.ajax({
				// 컨트롤러에서 대기중인 URL 주소이다.
				url : "${pageContext.request.contextPath}/api/blog/timeline",

				// HTTP method type(GET, POST) 형식이다.
				type : "get",

				// Json 형태의 데이터로 보낸다.
				contentType : "application/json",

				// Json 형식의 데이터를 받는다.
				dataType : "json",

				data : {
					start_date : now_year_start + now_month_start + now_day_start,
					end_date : now_year_end + now_month_end + now_day_end,
					user_no : ${blogVo.user_no}
				},

				// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
				success : function(timeList) {
					/*성공시 처리해야될 코드 작성*/

					$("#listArea").empty();
					$(".timeline").show();

					for (var i = 0; i < timeList.length; i++) {
						render(timeList[i]);
					}

					if (timeList.length == 0) {
						$(".timeline").hide();
					}

				},

				// 실패할경우 error로 들어온다.
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});

		});

		// btn_next 눌렀을 때
		$(".timeline_box").on("click", ".btn_next", function() {

			// next_Starting
			var next_days_start = new Date(YYMMDD_start.setDate(YYMMDD_start.getDate() + 7));

			YYMMDD_start = next_days_start;

			var next_year_start = next_days_start.getFullYear();
			var next_month_start = ('0' + (next_days_start.getMonth() + 1)).slice(-2);
			var next_day_start = ('0' + next_days_start.getDate()).slice(-2);

			var next_dateStarting = next_year_start + '년 ' + next_month_start + '월 ' + next_day_start	+ '일';

			// next_Ending
			var next_days_end = new Date(YYMMDD_end.setDate(YYMMDD_end.getDate() + 7));

			YYMMDD_end = next_days_end;

			var next_year_end = next_days_end.getFullYear();
			var next_month_end = ('0' + (next_days_end.getMonth() + 1)).slice(-2);
			var next_day_end = ('0' + next_days_end.getDate()).slice(-2);

			var next_dateEnding = next_year_end + '년 ' + next_month_end + '월 ' + next_day_end + '일';

			$('.date').text(next_dateStarting + " - " + next_dateEnding);

			$.ajax({
				// 컨트롤러에서 대기중인 URL 주소이다.
				url : "${pageContext.request.contextPath}/api/blog/timeline",

				// HTTP method type(GET, POST) 형식이다.
				type : "get",

				// Json 형태의 데이터로 보낸다.
				contentType : "application/json",

				// Json 형식의 데이터를 받는다.
				dataType : "json",

				data : {
					start_date : next_year_start + next_month_start + next_day_start,
					end_date : next_year_end + next_month_end + next_day_end,
					user_no : ${blogVo.user_no}
				},

				// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
				success : function(timeList) {
					/*성공시 처리해야될 코드 작성*/

					$("#listArea").empty();
					$(".timeline").show();

					for (var i = 0; i < timeList.length; i++) {
						render(timeList[i]);
					}

					if (timeList.length == 0) {
						$(".timeline").hide();
					}

				},

				// 실패할경우 error로 들어온다.
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});

		});

		// btn_prev 눌렀을 때
		$(".timeline_box").on("click", ".btn_prev", function() {

			// prev_Starting
			var prev_days_start = new Date(YYMMDD_start.setDate(YYMMDD_start.getDate() - 7));

			YYMMDD_start = prev_days_start;

			var prev_year_start = prev_days_start.getFullYear();
			var prev_month_start = ('0' + (prev_days_start.getMonth() + 1)).slice(-2);
			var prev_day_start = ('0' + prev_days_start.getDate()).slice(-2);

			var prev_dateStaring = prev_year_start + '년 ' + prev_month_start + '월 ' + prev_day_start	+ '일';

			// prev_Ending
			var prev_days_end = new Date(YYMMDD_end.setDate(YYMMDD_end.getDate() - 7));

			YYMMDD_end = prev_days_end;

			var prev_year_end = prev_days_end.getFullYear();
			var prev_month_end = ('0' + (prev_days_end.getMonth() + 1)).slice(-2);
			var prev_day_end = ('0' + prev_days_end.getDate()).slice(-2);

			var prev_dateEnding = prev_year_end + '년 ' + prev_month_end + '월 ' + prev_day_end	+ '일';

			$('.date').text(prev_dateStaring + " - " + prev_dateEnding);

			$.ajax({
				// 컨트롤러에서 대기중인 URL 주소이다.
				url : "${pageContext.request.contextPath}/api/blog/timeline",

				// HTTP method type(GET, POST) 형식이다.
				type : "get",

				// Json 형태의 데이터로 보낸다.
				contentType : "application/json",

				// Json 형식의 데이터를 받는다.
				dataType : "json",

				data : {
					start_date : prev_year_start + prev_month_start + prev_day_start,
					end_date : prev_year_end + prev_month_end + prev_day_end,
					user_no : ${blogVo.user_no}
				},

				// 성공일 경우 success로 들어오며, 'result'는 응답받은 데이터이다.
				success : function(timeList) {
					/*성공시 처리해야될 코드 작성*/

					$("#listArea").empty();
					$(".timeline").show();

					for (var i = 0; i < timeList.length; i++) {
						render(timeList[i]);
					}

					if (timeList.length == 0) {
						$(".timeline").hide();
					}

				},

				// 실패할경우 error로 들어온다.
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});

		});

		// 타임라인 출력
		function render(timeList) {
			var str = '';
			str += '<li>';
			str += '	<div class="content">';
			str += '		<h3>' + timeList.title + '</h3>';
			if (timeList.live_url === null) {
				if (timeList.p_img === "noimg.png") {
					str += '		          <img src="${pageContext.request.contextPath}/assets/image/blog/img/noimg.png" alt="" style="width: 430px; height: 240px,	object-fit: cover;" />';
				} else {
					str += '		          <img src="${pageContext.request.contextPath}/upload/' + timeList.p_img +'" alt="" style="width: 430px; height: 240px,	object-fit: cover;" />';
				}

			} else {
				str += '		<iframe width="430" height="240" src="https://www.youtube.com/embed/' + timeList.live_url + '" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
			}
			str += '	</div>';
			str += '	<div class="time">';
			str += '		<h4>' + timeList.p_start + '</h4>';
			str += '	</div>';
			str += '</li>';

			$("#listArea").append(str);
		};

	});


</script>
</html>