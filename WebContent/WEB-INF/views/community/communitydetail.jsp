<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />
<section class="container content">

	<h1 class="text-center m-4">
		<b>${vo.animal_name}</b>
	</h1>
	<div class="text-center">
		<img src="${mycontext}/resources/animalimage/${vo.animal_img}">
	</div>
	<table>
		<tr>
			<th>ǰ��:</th>
			<td>${vo.cate_kind}</td>
		</tr>
		<tr>
			<th>����:</th>
			<td>${vo.animal_age}��</td>
		</tr>
		<tr>
			<th>����:</th>
			<td>${vo.animal_gender}��</td>
		</tr>
		<tr>
			<th>Ư¡:</th>
			<td>${vo.animal_detail}</td>
		</tr>
		<tr>
			<input type="hidden" id="friendId" value="${vo.member_id}">
			<input type="hidden" id="myId" value="${sessionScope.sessionID}">
		</tr>
	</table>
	<div class="d-flex justify-content-end">
		<input type="button" value="���" onclick="location='${mycontext}/community/communitylist?cPage=${nowPage}'" class="btn btn-primary">&nbsp;
		 <c:if test="${chkfriends == 0 }">
		 <input type="button" value="ģ���߰�" class="btn btn-success" id="fBtn">&nbsp;
		 </c:if>
		<input type="button" value="ä���ϱ�" onclick="location='#'"
			class="btn btn-danger">
	</div>
</section>

<script>
	$(function() {
		$('#fBtn').click(function() {

			var friendId = $('#friendId').val();
			var myId = $('#myId').val();
			$.ajax({
				type: "get",
				url : "${mycontext}/addfriend",
				data: {"myId":myId,"friendId":friendId},
				dataType:"text",
				contentType: "application/text;charset=EUC-KR",
				success: function(result){
					if(result=="���"){
						alert("ģ�� ��û�� �Ϸ�Ǿ����ϴ�.");
					}else{
						alert("�̹� ģ�� ��û�� �Ϸ�Ǿ����ϴ�.")
					}
					
				}
				/*error: function() {
			        alert("�̹� ģ�� ��û�� �Ϸ�Ǿ����ϴ�.");
			    }*/
			});
		});
	});
</script>
