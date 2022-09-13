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
         <li><a href="#">ȸ����������</a></li>
         <li><a href="#">��å����Ʈ</a></li>
         <li><a href="#">�ݷ���������Ʈ</a></li>
         <li><a href="${mycontext}/mypage/friendslist" class="on">ģ�����</a></li>
         <li><a href="#">ä�ø��</a></li>
      </ul>
      <div class="right_cont">
         <ul class="tab_btn">
            <li data-tab="tab1" class="on">ģ�����</li>
            <li data-tab="tab2">��û�� ���</li>
            <li data-tab="tab3">��û ���� ���</li>
         </ul>
         
         <div id="tab1" class="tab_content on">
            <c:forEach var="flist" items="${friendslist}">
               <div class="friendslist">
                  <div class="imgbox"><img src="${mycontext}/resources/animalimage/${flist.animal_img}"></div>
                  <div class="txtbox">
                     <p class="name">${flist.animal_name}</p>
                     <p>ǰ�� : ${flist.cate_kind}, ���� : ${flist.animal_age}��, ���� : ${flist.animal_gender}��</p>
                     <button type="button" class="btn btn-primary">�󼼺���</button>
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