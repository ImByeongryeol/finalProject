<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="container content">
   <div class="left_menu" style="width:20%; display:inline-block; height:100px; background:red;"></div>
   <div style="width:80%; display:inline-block;"></div>
</section>


<div class="container">
	<h2>추천 목록</h2>
    <div>
		<c:forEach var="flist" items="${friendslist}">
			<p>
				<span>품종  :</span> ${flist.animal_num} <br>
				<span>나이 :</span> ${flist.animal_name} <br> 
				<span>성별 :</span> ${flist.animal_img}
			</p>
		</c:forEach>
	</div>
</div>

