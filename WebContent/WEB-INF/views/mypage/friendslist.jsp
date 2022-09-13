<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath}" />

<script>
$(document).ready(function(){
   $(".tab_btn li").click(function(){
      var tab_id = $(this).attr("data-tab");

      $(".tab_btn li").removeClass("on");
      $(".tab_content").removeClass("on");

      $(this).addClass("on");
      $("#"+tab_id).addClass("on");
   })
});
</script>

<section class="container content">
   <div class="mypage">
      <ul class="left_menu">
         <li><a href="#">회원정보수정</a></li>
         <li><a href="#">산책리스트</a></li>
         <li><a href="#">반려동물리스트</a></li>
         <li><a href="${mycontext}/mypage/friendslist" class="on">친구목록</a></li>
         <li><a href="#">채팅목록</a></li>
      </ul>
      <div class="right_cont">
         <ul class="tab_btn">
            <li data-tab="tab1" class="on">친구목록</li>
            <li data-tab="tab2">요청한 목록</li>
            <li data-tab="tab3">요청 받은 목록</li>
         </ul>
         
         <div id="tab1" class="tab_content on">
            <c:forEach var="flist" items="${friendslist}">
               <div class="friendslist">
                  <div class="imgbox"><img src="${mycontext}/resources/animalimage/${flist.animal_img}"></div>
                  <div class="txtbox">
                     <p class="name">${flist.animal_name}</p>
                     <p>품종 : ${flist.cate_kind}, 나이 : ${flist.animal_age}살, 성별 : ${flist.animal_gender}컷</p>
                     <button type="button" class="btn btn-primary">상세보기</button>
                  </div>
               </div>
            </c:forEach>
         </div>
         
         <div id="tab2" class="tab_content">
         </div>
         
         <div id="tab3" class="tab_content">
         </div>
      </div>
   </div>
</section>