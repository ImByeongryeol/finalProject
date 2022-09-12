<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<article >
        <header>
            <h1>LoginProcess</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div>
        
        <%-- boardForm 들어 갈 자리 --%>
	  <h2>로그인</h2>
<%-- View단에서 javascript: for 태그 관련 유효성
onsubmit : submit() 이벤트가 발생 할 때 checkValue() 를 호출한다.

login.LoginCheckController -> /loginForm
 --%>
  <form action="loginProcess" method="post" id="loginInfo" onsubmit="return checkValue()">
  <%-- 사용자 아이피 주소 --%>
  <input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
  
    <div class="form-group">
      <label for="member_id">ID</label>
      <input type="text" class="form-control" id="member_id"
       placeholder="아이디 입력" name="member_id"
       maxlength="10" required="required"
       pattern=".{2,10}">
    </div>
    
    <div class="form-group">
      <label for="member_pwd">비밀번호</label>
      <input type="password" class="form-control" id="member_pwd"
       placeholder="*****" name="member_pwd"
       maxlength="10" required="required"
       pattern=".{2,10}">
    </div>
   
    <div class="form-group" style="text-align: right; margin-top: 10px">
        <button type="submit" class="btn btn-secondary">로그인</button>&nbsp;
        <input type="button" class="btn btn-secondary" value="아이디 찾기" onclick="location.href='find_id_form'"/>
        <input type="button" class="btn btn-secondary" value="비밀번호 찾기" onclick="location.href='find_password_form'"/>
    </div>
  </form>
  
</div>
</article>
