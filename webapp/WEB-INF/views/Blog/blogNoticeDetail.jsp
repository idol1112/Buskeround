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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogNoticeDetail.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogStart.css">

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- sweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

</head>

<body>
  <!------ br_container ------>
  <div class="clearfix" id="br_container">
    <c:import url="/WEB-INF/views/Blog/includes/aside.jsp"></c:import>

    <!------ br_content ------>
    <div id="br_content">
	      <c:import url="/WEB-INF/views/Blog/includes/header.jsp"></c:import>

      <!-- 메인 -->
      <div class="main-detail">
        <!-- 해딩 -->
        <div id="detail-header">
          <h3>${noticeVo.title}</h3>
        </div>
        <!-- 작성자, 날짜, 조회 -->
        <div class="modify-header clearfix">
              <c:if test="${blogVo.user_img == null}">
		      	<img id="profilepicture" src="/Buskeround/assets/image/blog/icon/user.png">
		      </c:if>
			  <c:if test="${blogVo.user_img != null}">
			    <img id="profilepicture" src="${pageContext.request.contextPath}/upload/${blogVo.user_img}">
			  </c:if>
          <span class="bold">${noticeVo.nickname}</span>
          <span>${noticeVo.regDate}</span>
          <span>조회 ${noticeVo.hit}</span>

		  <c:if test="${blogVo.user_no == authUser.user_no}">
    	      <button id="deletebutton">삭제</button>
	          <button id="modifybutton" onclick="location.href='${pageContext.request.contextPath}/blog/updatePostForm/${blogVo.id}?no=${noticeVo.post_no}'">수정</button>
		  </c:if>
        </div>
        <!-- 내용 -->
        <div class="detail-content">
        	${noticeVo.content}
        </div>

        <!-- 공지사항 목록 -->
        <div>
          <!-- 글쓰기 버튼 -->
          <div class="clearfix">
            <button id="writebutton" onclick="location.href='${pageContext.request.contextPath}/blog/blog_notice/${blogVo.id}'">목록</button>
          </div>
          <!-- 게시판 테이블 -->
          <div id="board">
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
				<c:forEach items="${listMap.noticeList}" var="noticeVo" varStatus="status" begin="0" end="2">
					<tr>
						<td>${noticeVo.rn}</td>
						<td class="left-align"><a href="${pageContext.request.contextPath}/blog/blog_noticeDetail/${blogVo.id}?no=${noticeVo.post_no}">${noticeVo.title}</a></td>
						<td>${noticeVo.nickname}</td>
						<td>${noticeVo.regDate}</td>
						<td>${noticeVo.hit}</td>
					</tr>
				</c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>
</body>
<script type="text/javascript">

function noticeDelete() {

	location.href =	"${pageContext.request.contextPath}/blog/deletePost/${blogVo.id}?no=${noticeVo.post_no}";

}

//게시글 삭제 이벤트
$().ready(function () {
	$("#deletebutton").click(function () {
		Swal.fire({
			title: '정말로 삭제하시겠습니까?',
			text: "게시글을 삭제하시겠습니까?",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '확인',
			cancelButtonText: '취소'
		}).then((result) => {
			if (result.isConfirmed) {
				noticeDelete();
			} 
		})
	});
});

</script>

</html>