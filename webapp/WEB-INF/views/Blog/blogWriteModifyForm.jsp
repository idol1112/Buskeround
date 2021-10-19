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

<!-- 에디터 -->
<link rel="stylesheet" type="text/css" href="../../assets/css/Blog/textEditor/css/styles.css">

<!-- font(Logo) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogWriteModifyForm.css">
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

      <div id="content">
        <!-- 컨텐트 (프로필 수정) -->
        <div class="modify-header">
          <h5>글 수정</h5>
        </div>


        <!-- 해더 -->
        <form id="writeform-content clearfix" class="testing" action="${pageContext.request.contextPath}/blog/modifyPost/${blogVo.id}" method="POST" enctype="multipart/form-data" >
        <input type="hidden" name="post_no" value="${noticeVo.post_no}">

          <input id="title" name="title" type="text" placeholder="제목을 입력해 주세요." value="${noticeVo.title}">

          <!-- 에디터 -->
          <textarea name="content" class="editor">
          	${noticeVo.content}
          </textarea>
		  
		  <button id="uploadbutton" onclick="history.back(); return false;" style="background-color: red; color: white; margin-left: 5px">취소</button>
          <button type="submit" class="update" id="uploadbutton">수정</button>
        </form>
      </div>
    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>
</body>

<script src="../../assets/css/Blog/textEditor/build/ckeditor.js"></script>
<script>ClassicEditor
    .create( document.querySelector( '.editor' ), {

        toolbar: {
            items: [
                'heading',
                '|',
                'bold',
                'italic',
                'underline',
                'alignment',
                '|',
                'fontSize',
                'fontColor',
                'fontFamily',
                '|',
                'imageUpload',
                'insertTable',
                'undo',
                'redo'
            ]
        },
        language: 'ko',
        image: {
            toolbar: [
                'imageTextAlternative',
                'imageStyle:inline',
                'imageStyle:block',
                'imageStyle:side'
            ]
        },
        table: {
            contentToolbar: [
                'tableColumn',
                'tableRow',
                'mergeTableCells'
            ]
        },
            licenseKey: '',



        } )
        .then( editor => {
            window.editor = editor;




        } )
        .catch( error => {
            console.error( 'Oops, something went wrong!' );
            console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
            console.warn( 'Build id: l2el0rjf71xs-g3eg22e8e3t1' );
            console.error( error );
        } );
        
        
	$('.testing').on("submit", function() {
		console.log("서브밋")
	
		if ($("[name=category_no]").val() == 0) {
			alert("카테고리를 선택해주세요.");
	
			return false;
		}
		
		if ($("[name=title]").val().length < 1) {
			alert("제목을 입력해주세요.");
	
			return false;
		}
		
		if ($("[name=content]").val().length < 1) {
			alert("게시글 내용을 입력해주세요.");
	
			return false;
		}
	
		return true;
	});
	
	//저장 완료 alert
	$(".update").on("click", function(e) {
		e.preventDefault();
		var form = $(this).parents('form');
		const Toast = Swal.mixin({
	        toast: true,
	        position: 'center-center',
	        showConfirmButton: false,
	        timer: 1500,
	        timerProgressBar: true,
	        didOpen: (toast) => {
	            toast.addEventListener('mouseenter', Swal.stopTimer)
	            toast.addEventListener('mouseleave', Swal.resumeTimer)
	        }
	    })

	    Toast.fire({
	        icon: 'success',
	        title: '게시글이 정상적으로 수정되었습니다.'
	    })
		setTimeout(function () {
		  form.submit();
		}, 1500);

	})
    </script>
</html>