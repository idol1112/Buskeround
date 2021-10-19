<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buskeround</title>
<!-- Title Icon -->
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/image/common/title.jpg">

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<!-- 에디터 -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Blog/textEditor/css/styles.css">

<!-- font(Logo) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogWriteForm.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Blog/blogStart.css">

<!-- sweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<!-- jquery -->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>

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
          <h5>블로그 글쓰기</h5>
        </div>


        <!-- 해더 -->
        <form id="writeform-content clearfix" class="testing" action="${pageContext.request.contextPath}/blog/writePost/${blogVo.id}" method="POST" enctype="multipart/form-data">
	        <input type="hidden" name="category" value="${sessionScope.authUser.user_no}">
	        <input type="hidden" name="user_no" value="${blogVo.user_no}">
	        <input type="hidden" name="nickname" value="${sessionScope.authUser.nickname}">
	        
	          <select name="category_type" id="category_type" required>
	            <option selected disabled value="">카테고리 선택</option>
	            <c:choose>
	            	<c:when test="${blogVo.user_no != authUser.user_no}">
	           			<option value="4">방명록</option>
	            	</c:when>
	            	<c:otherwise>
			            <option value="1">공지사항</option>
	    		        <option value="3">갤러리</option>
	           			<option value="4">방명록</option>
	            	</c:otherwise>
	            </c:choose>
	          </select>
	
	          <input id="title" name="title" type="text" placeholder="제목을 입력해 주세요.">
				
	          <!-- 에디터 -->
	          <textarea name="content" class="editor" id="editor">
	          </textarea>
	          
	            <div class="custom-file clearfix">
				  <input type="file" name="file1" class="custom-file-input" id="validatedCustomFile">
				  <label class="custom-file-label" for="validatedCustomFile" id="test">Choose Image...</label>
				  <div class="invalid-feedback">적합하지 않은 파일입니다.</div>
				</div>
			  
	          <button id="uploadbutton" onclick="history.back(); return false;" style="background-color: red; color: white; margin-left: 5px">취소</button>
	          <button type="submit" class="update" id="uploadbutton">등록</button>
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

	
    $('.custom-file').hide();
	
	$('#category_type').change(function(){

		   selection = $('#category_type').val();
		   
		   if (selection == 3) {
			   $('.custom-file').show();
			 } else {
			   $('.custom-file').hide();
			 }
		});
	
	$('#validatedCustomFile').change(function(){
		
		const fileInput = document.querySelector('#validatedCustomFile');
		const path = fileInput.value;
		const fileName = path.split(/(\\|\/)/g).pop();
		console.log('File name:', fileName);
		
        document.getElementById('test').innerHTML
        = fileName;
	});
	
	//저장 완료 alert
	$(".update").on("click", function(e) {
		e.preventDefault();
		
		if ($("[name=category_type]").val() == null) {
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
	        title: '게시글이 정상적으로 저장되었습니다.'
	    })
		setTimeout(function () {
		  form.submit();
		}, 1500);

	})
	
	
</script>

</html>