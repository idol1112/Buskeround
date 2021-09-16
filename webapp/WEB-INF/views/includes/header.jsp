<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header -->
<div class="row" id="navbox">
	<div class="col-xl-2"></div>

	<!-- nav -->
	<div class="col-xl-8">
		<div class="navbar">

			<!-- nav_logo -->
			<div class="navbar_logo">
				<a href="../Main/Main.jsp">Br.</a>
			</div>

			<!-- nav_menu -->
			<ul class="navbar_menu">
				<li><a href="../Map/map.jsp">공연</a></li>
				<li><a href="../Artist/ArtistRenk.jsp">아티스트</a></li>
				<li><a href="../Map/map2.jsp">버스킹존</a></li>
				<li><a href="">고객센터</a></li>
			</ul>

			<!-- nav_login -->
			<ul class="navbar_login">
			
			<!-- 로그인 전 -->
			<!--<li><a href="../user/login.jsp">로그인</a></li>
				<li><a href="../user/agreement.jsp">회원가입</a></li> -->

				<!-- 로그인 완료시 -->
				<li><img id="main_profile" src="../../assets/image/blog/img/profile.jpg"></li>
                    <li><b>Maroban님</b></li>
                    <li><div class="dropdown">
                        <button class="dropbtn"><img id="main_dropdown" src="../../assets/image/common/dropdown.png"></button>
                        <div class="dropdown-content">
                          <a href="../MyPage/mypageModify.jsp">마이페이지</a>
                          <a href="../Blog/blog_main.jsp">내 블로그</a>
                          <a href="../CompanyManage/companyInfo.jsp">제휴사 관리</a>
                        </div>
                    	</div>
                    </li>
			</ul>
		</div>
	</div>
	<!------- nav -------->

	<div class="col-xl-2"></div>
</div>
<!------- header -------->
