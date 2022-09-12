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
			<th>품종:</th>
			<td>${vo.cate_kind}</td>
		</tr>
		<tr>
			<th>나이:</th>
			<td>${vo.animal_age}살</td>
		</tr>
		<tr>
			<th>성별:</th>
			<td>${vo.animal_gender}컷</td>
		</tr>
		<tr>
			<th>특징:</th>
			<td>${vo.animal_detail}</td>
		</tr>
		<tr>
			<input type="hidden" id="friendId" value="${vo.member_id}">
			<input type="hidden" id="myId" value="${sessionScope.sessionID}">
		</tr>
	</table>
	<div class="d-flex justify-content-end">
		<input type="button" value="목록" onclick="location='${mycontext}/community/communitylist?cPage=${nowPage}'" class="btn btn-primary">&nbsp;
		 <c:if test="${chkfriends == 0 }">
		 <input type="button" value="친구추가" class="btn btn-success" id="fBtn">&nbsp;
		 </c:if>
		<input type="button" value="채팅하기" onclick="location='#'"
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
					if(result=="대기"){
						alert("친구 요청이 완료되었습니다.");
					}else{
						alert("이미 친구 요청이 완료되었습니다.")
					}
					
				}
				/*error: function() {
			        alert("이미 친구 요청이 완료되었습니다.");
			    }*/
			});
		});
	});
</script>
