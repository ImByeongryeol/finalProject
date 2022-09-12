<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<article >
        <header>
            <h1>LoginProcess</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div>
        
        <%-- boardForm ��� �� �ڸ� --%>
	  <h2>�α���</h2>
<%-- View�ܿ��� javascript: for �±� ���� ��ȿ��
onsubmit : submit() �̺�Ʈ�� �߻� �� �� checkValue() �� ȣ���Ѵ�.

login.LoginCheckController -> /loginForm
 --%>
  <form action="loginProcess" method="post" id="loginInfo" onsubmit="return checkValue()">
  <%-- ����� ������ �ּ� --%>
  <input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
  
    <div class="form-group">
      <label for="member_id">ID</label>
      <input type="text" class="form-control" id="member_id"
       placeholder="���̵� �Է�" name="member_id"
       maxlength="10" required="required"
       pattern=".{2,10}">
    </div>
    
    <div class="form-group">
      <label for="member_pwd">��й�ȣ</label>
      <input type="password" class="form-control" id="member_pwd"
       placeholder="*****" name="member_pwd"
       maxlength="10" required="required"
       pattern=".{2,10}">
    </div>
   
    <div class="form-group" style="text-align: right; margin-top: 10px">
        <button type="submit" class="btn btn-secondary">�α���</button>&nbsp;
        <input type="button" class="btn btn-secondary" value="���̵� ã��" onclick="location.href='find_id_form'"/>
        <input type="button" class="btn btn-secondary" value="��й�ȣ ã��" onclick="location.href='find_password_form'"/>
    </div>
  </form>
  
</div>
</article>
