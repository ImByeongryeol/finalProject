<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<header>
	<div class="banner">여기는 광고 및 홍보 문구 자리</div>
	<h1>
		<a href="${mycontext}">ANIMAL PLATFORM</a>
	</h1>
	<nav>
		<div class="container">
			<div class="search">
				<form action="">
					<input type="text" name="search"> <input type="submit"
						name="submit" value="Search">
				</form>
			</div>
			<ul class="navi">
				<li><a href="">지식in 게시판</a></li>
				<li><a href="">품종찾기</a></li>
				<c:choose>
					<c:when test="${sessionScope.sessionID == null }">
						<li><a href="javascript:alert('로그인 후 이용가능한 페이지입니다.');">커뮤니티</a></li>
					</c:when>
					<c:when test="${sessionScope.sessionID != null }">
						<li><a href="${mycontext}/community/communitylist?cPage=1">커뮤니티</a></li>
					</c:when>
				</c:choose>
				<li><a href="">제휴상품</a></li>
			</ul>
			<c:choose>
				<c:when test="${sessionScope.sessionID == null }">
					<ul class="member">
						<li><a href="${mycontext}/loginForm">로그인</a></li>
						<li><a href="${mycontext}/member/memberForm">회원가입</a></li>
					</ul>
				</c:when>
				<c:when test="${sessionScope.sessionID != null }">
					<ul class="member">
						<li><a href="${mycontext}/logout">로그아웃</a></li>
						<li><a href="${mycontext}/mypage/friendslist">마이페이지</a></li>
					</ul>
				</c:when>
			</c:choose>
		</div>
	</nav>
</header>