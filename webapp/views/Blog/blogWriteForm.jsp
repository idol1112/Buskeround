<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>

<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>

<!-- 에디터 -->
<link rel="stylesheet" type="text/css" href="../assets/textEditor/css/styles.css">

<!-- font(Logo) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">

<!-- css -->
<link rel="stylesheet" href="../../assets/css/Blog/blog_common.css">
<link rel="stylesheet" href="../../assets/css/Blog/blogWriteForm.css">
<link rel="stylesheet" href="../../assets/css/Blog/blogStart.css">


</head>

<body>
  <!------ br_container ------>
  <div class="clearfix" id="br_container">
    <c:import url="/views/Blog/includes/aside.jsp"></c:import>

    <!------ br_content ------>
    <div id="br_content">
      <c:import url="/views/Blog/includes/header.jsp"></c:import>

      <div id="content">
        <!-- 컨텐트 (프로필 수정) -->
        <div class="modify-header">
          <h5>블로그 글쓰기</h5>
        </div>


        <!-- 해더 -->
        <form id="writeform-content clearfix">
          <select>
            <option selected>카테고리</option>
            <option>공지사항</option>
            <option>갤러리</option>
            <option>방명록</option>
          </select>

          <input id="title" type="text" placeholder="제목을 입력해 주세요.">

          <!-- 에디터 -->
          <div class="editor">Tlqkf</div>
          <!-- <textarea id="textarea" placeholder="내용을 입력하세요."></textarea> -->
          <input id="facebookupload" type="checkbox" value="facebook">
          <label for="facebookupload">페이스북 등록</label>
          <button id="uploadbutton">등록</button>
        </form>
      </div>



    </div>
    <!------ ////(br_content)//// ------>
  </div>
  <!------ ////(br_container)//// ------>
</body>

<script src="../assets/textEditor/build/ckeditor.js"></script>
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
</script>

</html>