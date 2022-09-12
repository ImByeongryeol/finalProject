<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<header>
	<div class="banner">����� ���� �� ȫ�� ���� �ڸ�</div>
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
				<li><a href="">����in �Խ���</a></li>
				<li><a href="">ǰ��ã��</a></li>
				<c:choose>
					<c:when test="${sessionScope.sessionID == null }">
						<li><a href="javascript:alert('�α��� �� �̿밡���� �������Դϴ�.');">Ŀ�´�Ƽ</a></li>
					</c:when>
					<c:when test="${sessionScope.sessionID != null }">
						<li><a href="${mycontext}/community/communitylist?cPage=1">Ŀ�´�Ƽ</a></li>
					</c:when>
				</c:choose>
				<li><a href="">���޻�ǰ</a></li>
			</ul>
			<c:choose>
				<c:when test="${sessionScope.sessionID == null }">
					<ul class="member">
						<li><a href="${mycontext}/loginForm">�α���</a></li>
						<li><a href="${mycontext}/member/memberForm">ȸ������</a></li>
					</ul>
				</c:when>
				<c:when test="${sessionScope.sessionID != null }">
					<ul class="member">
						<li><a href="${mycontext}/logout">�α׾ƿ�</a></li>
						<li><a href="${mycontext}/mypage/friendslist">����������</a></li>
					</ul>
				</c:when>
			</c:choose>
		</div>
	</nav>
</header>