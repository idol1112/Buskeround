<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogNoticeBoard.css">
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
			<div class="content clearfix">
			
				<div class="main_title">
					  <img src="${pageContext.request.contextPath}/assets/image/blog/icon/letter.png"> 
		          	  <span>공지사항</span>
					  <!-- 글쓰기 버튼 -->
			          <c:if test="${blogVo.user_no == authUser.user_no}">
						<button id="writebutton" type="button" onClick="location.href='${pageContext.request.contextPath}/blog/blog_write/${blogVo.id}'">
							<img src="../../assets/image/blog/icon/write.png">글쓰기
						</button>
					  </c:if>
		        </div>

				<!-- 게시판 테이블 -->
				
				<div id="board">
					
					<!-- 리스트 없을 때 -->
					<c:if test="${fn:length(listMap.noticeList) == 0}">
          				<p id="noPost">등록된 글이 없습니다.</p>
        			</c:if>
        			
        			
					<c:if test="${fn:length(listMap.noticeList) != 0}">
					<table id="list">
						<thead>
							<tr>
								<th width="10%">공지</th>
								<th width="50%">제목</th>
								<th width="15%">작성자</th>
								<th width="15%">작성일</th>
								<th width="10%">조회</th>
							</tr>
						</thead>
						<tbody>
							<!-- 반복문 -->
							<c:forEach items="${listMap.noticeList}" var="noticeVo" varStatus="status">
								<c:choose>
									<c:when test="${noticeVo.rn < 4 && empty fn:trim(keyword)}">
										<tr id="noticehightlight">
											<td>${noticeVo.rn}</td>
											<td class="left-align"><a href="${pageContext.request.contextPath}/blog/blog_noticeDetail/${blogVo.id}?no=${noticeVo.post_no}">${noticeVo.title}</a></td>
											<td>${noticeVo.nickname}</td>
											<td>${noticeVo.regDate}</td>
											<td>${noticeVo.hit}</td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr>
											<td>${noticeVo.rn}</td>
											<td class="left-align"><a href="${pageContext.request.contextPath}/blog/blog_noticeDetail/${blogVo.id}?no=${noticeVo.post_no}">${noticeVo.title}</a></td>
											<td>${noticeVo.nickname}</td>
											<td>${noticeVo.regDate}</td>
											<td>${noticeVo.hit}</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</tbody>
					</table>
					</c:if>

					<!-- 검색 기능 -->
					<c:if test="${fn:length(listMap.noticeList) != 0}">
					<div class="topnav">
						<div class="search-container">
							<form action="${pageContext.request.contextPath}/blog/blog_notice/${blogVo.id}">
								<input type="text" placeholder="Search.." name="keyword" value="">
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
					</div>

					<!-- 페이징 -->
					<div class="container xlarge">
						<div class="pagination">
							<ul>
								<c:if test="${listMap.prev == true}">
									<li><a href="${pageContext.request.contextPath}/blog/blog_notice/${blogVo.id}?crtPage=${param.crtPage - 1}&keyword=${param.keyword}">&laquo;</a></li>
								</c:if>
								
								<c:forEach begin="${listMap.startPageBtnNo}" end="${listMap.endPageBtnNo}" step="1" var="page">
									<c:choose>
										<c:when test="${param.crtPage eq page}">
											<li class="active"><a href="${pageContext.request.contextPath}/blog/blog_notice/${blogVo.id}?crtPage=${page}&keyword=${param.keyword}">${page}</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="${pageContext.request.contextPath}/blog/blog_notice/${blogVo.id}?crtPage=${page}&keyword=${param.keyword}">${page}</a></li>
										</c:otherwise>
									</c:choose>										
								</c:forEach>
								
								<c:if test="${listMap.next == true}">
									<li><a href="${pageContext.request.contextPath}/blog/blog_notice/${blogVo.id}?crtPage=${param.crtPage + 1}&keyword=${param.keyword}">&raquo;</a></li>
								</c:if>
							</ul>
						</div>
					</div>
        			</c:if>
        			
				</div>
			</div>
		</div>
		<!------ ////(br_content)//// ------>
	</div>
	<!------ ////(br_container)//// ------>
</body>


</html>