<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Password</title>
<style>
:root { -
   -input-padding-x: 1.5rem; -
   -input-padding-y: .75rem;
}

body {
   background-color: white;
}
input{
height: 50px;
}

</style>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="jquery/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h2> 비밀번호 찾기 </h2>
<h5> 아이디, 이름, 전화번호로 비밀번호를 찾을 수 있습니다.</h5>

<form method="post" class="form-signin" action="find_password" name="findform">
<div class="form-label-group">
         <input type="text" id="member_id" name="member_id" class="form-control" placeholder="id"/>
      </div>
      
      <div class="form-label-group">
         <input type="text" id="member_name" name="member_name" class="form-control" placeholder="name"/>
      </div>
      
      <div class="form-label-group">
         <input type="text" id="member_phone" name="member_phone" class="form-control" placeholder="phone"/>
      </div>

      <div class="form-label-group">
         <input class="btn btn-lg btn-secondary btn-block text-uppercase"
            type="submit" value="check">
      </div>

      <!-- 정보가 일치하지 않을 때-->
      <c:if test="${check == 1}">
         <script>
         opener.document.findform.id.value = "";
            opener.document.findform.name.value = "";
            opener.document.findform.phone.value = "";
         </script>
         <label>일치하는 정보가 존재하지 않습니다.</label>
      </c:if>

      <!-- 이름과 비밀번호가 일치하지 않을 때 -->
      <c:if test="${check == 0 }">
      <div>
         <label>비밀번호를 변경해주세요.</label>
      </div>
      <div class="form-label-group">
      <input type="hidden" id="member_id" name="updateid" value="${updateid }">
      
         <input type="password" id="member_pwd" name="member_pwd" class="form-control" placeholder="password"/>
      </div>
      
      <div class="form-label-group">
         <input type="password" id="confirmpwd" name="confirmpwd" class="form-control" placeholder="confirm password"/>
      </div>
      
      <div class="form-label-group">
            <input class="btn btn-lg btn-secondary btn-block text-uppercase"
               type="button" value="update password" onclick="updatePassword()">
         </div>
      </c:if>

   </form>
   
   <script type="text/javascript">
      function updatePassword(){
         if(document.findform.member_pwd.value==""){
            alert("비밀번호를 입력해주세요.");
            document.findform.member_pwd.focus();
         } else if(document.findform.member_pwd.value != document.findform.confirmpwd.value){
            alert("비밀번호가 일치하지 않습니다.");
            document.findform.confirmpwd.focus();
         } else {
            document.findform.action="update_password";
            document.findform.submit();
         }
      }
   </script>
</body>
</html>