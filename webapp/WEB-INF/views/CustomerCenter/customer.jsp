<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buskeround</title>
<!-- Title Icon -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/image/common/title.jpg">
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<!-- font(Logo) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Common/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/CustomerService/customerCenter.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import> 
	
	<!-- nav_artist  -->
	<c:import url="/WEB-INF/views/CustomerCenter/includes/artbox.jsp"></c:import>
		
		
		<div class="outer">
		  <div class="middle">
		    <div class="inner">
		     
		    <div id="notice-header" style="margin-top: 30px;">
	 		    <span id="notice-heading" style="">공지사항</span>
		    </div>
		    
			<c:if test="${fn:length(listMap.noticeList) == 0}">
   				<p id="noPost">등록된 글이 없습니다.</p>
 			</c:if>
		    
		    <c:if test="${fn:length(listMap.noticeList) != 0}">
		    <div id="content">
		    	<c:forEach items="${listMap.noticeList}" var="noticeVo" varStatus="status">
				<ul class="accordion">
					<li class="accordion__item">
						<div class="accordion__title">${noticeVo.title}
						<div class="bmenu x7"><span class="btop"></span><span class="bmid"></span><span class="bbot"></span></div>
						</div>
					<div class="accordion__content">${noticeVo.content}</div>
					</li>
				</ul>
				</c:forEach>
				
                    <!-- 검색 기능 -->
                    <div class="topnav">
                        <div class="search-container">
                            <form action="${pageContext.request.contextPath}/CustomerCenter/Main">
                            <input type="text" placeholder="Search.." name="search">
                            <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                    </div>

                    <!-- 페이징 -->
                    <div class="container xlarge">
                        <div class="pagination">
							<ul>
								<c:if test="${listMap.prev == true}">
									<li><a href="${pageContext.request.contextPath}/CustomerCenter/Main/${blogVo.id}?crtPage=${param.crtPage - 1}&keyword=${param.keyword}">&laquo;</a></li>
								</c:if>
								
								<c:forEach begin="${listMap.startPageBtnNo}" end="${listMap.endPageBtnNo}" step="1" var="page">
									<c:choose>
										<c:when test="${param.crtPage eq page}">
											<li class="active"><a href="${pageContext.request.contextPath}/CustomerCenter/Main/${blogVo.id}?crtPage=${page}&keyword=${param.keyword}">${page}</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="${pageContext.request.contextPath}/CustomerCenter/Main/${blogVo.id}?crtPage=${page}&keyword=${param.keyword}">${page}</a></li>
										</c:otherwise>
									</c:choose>										
								</c:forEach>
								
								<c:if test="${listMap.next == true}">
									<li><a href="${pageContext.request.contextPath}/CustomerCenter/Main/${blogVo.id}?crtPage=${param.crtPage + 1}&keyword=${param.keyword}">&raquo;</a></li>
								</c:if>
							</ul>
                        </div>
                    </div>
		    </div>
		    </c:if>
		    
		    
		    </div>
		  </div>
		</div>
	

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
<script type="text/javascript">

$(function() {
	$('.accordion').find('.accordion__title').click(function(){
		// Adds active class
		$(this).toggleClass('active');
		// Expand or collapse this panel
		$(this).next().slideToggle('fast');
		// Hide the other panels
		$('.accordion__content').not($(this).next()).slideUp('fast');
		// Removes active class from other titles
		$('.accordion__title').not($(this)).removeClass('active');		
	});
});
</script>

</html>