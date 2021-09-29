<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

      <div class="navbar">
        <ul class="navbar_menu">
          <li><a href="${pageContext.request.contextPath}/blog/blog_main/${blogVo.id}">홈</a></li>
          <li><a href="${pageContext.request.contextPath}/blog/blog_notice/${blogVo.id}">공지사항</a></li>
          <li><a href="${pageContext.request.contextPath}/blog/blog_timeline/${blogVo.id}">타임라인</a></li>
          <li><a href="${pageContext.request.contextPath}/blog/blog_gallery/${blogVo.id}">갤러리</a></li>
          <li><a href="${pageContext.request.contextPath}/blog/blog_guestbook/${blogVo.id}">방명록</a></li>
        </ul>
      </div>