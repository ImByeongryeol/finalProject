<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="container content">
   <div class="left_menu" style="width:20%; display:inline-block; height:100px; background:red;"></div>
   <div style="width:80%; display:inline-block;"></div>
</section>


<div class="container">
	<h2>��õ ���</h2>
    <div>
		<c:forEach var="flist" items="${friendslist}">
			<p>
				<span>ǰ��  :</span> ${flist.animal_num} <br>
				<span>���� :</span> ${flist.animal_name} <br> 
				<span>���� :</span> ${flist.animal_img}
			</p>
		</c:forEach>
	</div>
</div>

