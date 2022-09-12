<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find ID</title>
<style>
:root { 
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
<h2> 아이디 찾기 </h2>
<h5> 이름과 전화번호로 아이디를 찾을 수 있습니다.</h5>
<form method="post" class="form-signin" action="find_id" name="findform">
      <div class="form-label-group">
         <input type="text" id="member_name" name="member_name" class="form-control" placeholder="name" />
      </div>
      
      <div class="form-label-group">
         <input type="text" id="member_phone" name="member_phone" class="form-control" placeholder="phone"/>
      </div>

      <div class="form-label-group">
         <input class="btn btn-lg btn-secondary btn-block text-uppercase"
            type="submit" value="check">
      </div>

      <!-- 이름과 전화번호가 일치하지 않을 때-->
      <c:if test="${check == 1}">
         <script>
            opener.document.findform.name.value = "";
            opener.document.findform.phone.value = "";
         </script>
         <label>일치하는 정보가 존재하지 않습니다.</label><br>
         <input class="btn btn-lg btn-secondary btn-block text-uppercase"
               type="button" value="OK" onclick="closethewindow()">
      </c:if>

      <!-- 이름과 비밀번호가 일치하지 않을 때 -->
      <c:if test="${check == 0 }">
      <label>찾으시는 아이디는' ${member_id}' 입니다.</label>
      <div class="form-label-group">
            <input class="btn btn-lg btn-secondary btn-block text-uppercase"
               type="button" value="OK" onclick="closethewindow()">
         </div>
      </c:if>

   </form>
   
   <script type="text/javascript">
      function closethewindow(){
         window.location.href='http://localhost/final_project_Bteam/main/'
      }
   </script>
</body>
</html>