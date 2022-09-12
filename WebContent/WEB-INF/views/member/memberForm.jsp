<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article>

   <div class="alert alert-dark" role="alert" style="font-size: 25px">
      Sign Up<a href="#" class="alert-link"></a>
   </div>

   <ul class="list-unstyled">
      <li class="border-top my-3"></li>
   </ul>
   <div class="container">
      <form action="memberIn" method="post">


         <div class="navbar navbar-light bg-light">
            <label for="member_name"> </label> <input type="text" class="form-control"
               id="member_name" placeholder="�̸� �Է�" name="member_name" required="required">
         </div>

         <div class="navbar navbar-light bg-light">
            <label for="member_id"> </label>
            <!-- placeholder �Ӽ� �Է��� �����Ͱ� ���� ��� ������� ��Ÿ����.���������� �Է��� 100�ڱ����� ���� -->
            <!-- required �Ӽ��� �����ϸ� �ʼ��Է� �����̵ȴ�. -->
            <!-- pattern �Ӽ��� �̿��� ����ǥ�������� �������� ��ȿ�� �˻縦 �� �� �ִ�. -->
            <input type="text" class="form-control" id="member_id"
               placeholder="���̵� �Է�(3-20)" name="member_id" maxlength="10"
               required="required" pattern=".{3,20}">
            <button type="button" class="btn btn-outline-primary btn-sm"
               id="btn1">�ߺ�Ȯ��</button>
            <div id="target"></div>
         </div>
         <div class="navbar navbar-light bg-light">
            <p>
               <label>��й�ȣ</label><input class="form-control" type="password" placeholder="��й�ȣ"
                  style="width: 90%" id="member_pwd" name="member_pwd" value="1234" required>
            </p>
         </div>
         <div class="navbar navbar-light bg-light">
            <p>
               <label>��й�ȣ Ȯ��</label><input class="form-control" type="password" placeholder="��й�ȣ Ȯ��"
                  style="width: 90%" id="pw2" value="1234" required>
            </p>
         </div>
         <div class="navbar navbar-light bg-light">
            <label for="member_phone"> </label> <input type="text"
               class="form-control" id="member_phone" placeholder="�޴���ȭ��ȣ �Է�"
               name="member_phone" required="required">
         </div>
         <div class="navbar navbar-light bg-light">
            <label for="member_email"> </label> <input type="text"
               class="form-control" id="member_email" placeholder="�̸��� �Է�" name="member_email"
               required="required">
         </div>
         <div class="navbar navbar-light bg-light">
            <label for="member_age"> </label> <input type="text" class="form-control"
               id="member_age" placeholder="���� �Է�" name="member_age" required="required">
         </div>
        
        <h5>���� üũ</h5>
      <div>
      <input type="radio" id="member_gender" name="member_gender" value="��">
      <label for="��">����</label>
    </div>

    <div>
      <input type="radio" id="member_gender" name="member_gender" value="��">
      <label for="��">����</label>
    </div>
        
        
        <!-- <div class="navbar navbar-light bg-light">
            <label for="member_gender"> </label> <input type="radio" class="form-control"
               id="member_gender" placeholder="���� �Է�" name="member_gender" required="required">
         </div> -->
        
        
         <!-- <div class="navbar navbar-light bg-light">
            <button type="button"
               class="btn btn-outline-primary btn-sm dropdown-toggle"
               data-bs-toggle="dropdown">����</button>
            <input type="hidden" name="member_gender" id="member_gender">
            
            
           <ul class="dropdown-menu">
               <li><a class="dropdown-item"
                  href="javascript:chooseGender('��')">��</a></li>
               <li><a class="dropdown-item"
                  href="javascript:chooseGender('��')">��</a></li>
            </ul>
         </div> -->
         
         <div class="navbar navbar-light bg-light">
            <label for="member_addr"> </label> <input type="text"
               class="form-control" id="member_addr" placeholder="�ּ� �Է�" name="member_addr"
               required="required">
         </div>
         
         <!--  
         <div class="row mb-3">
            <label class="col-sm-2 col-form-label">*�̹������ε�</label>
            <div class="col-sm-10">
               <input type="file" name="mimg" id="mimg" />
            </div>
         </div> -->



         <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="member_id"
               value="y" name="member_name"> <input type="hidden" id="member_id"
               value="n" name="member_name"> <label
               class="custom-control-label" for="same-address">���� �ݷ������� �ֳ���?
               ����(����)</label>
         </div>
         <div class="form-group" style="text-align: right; margin-top: 10px;">
            <button type="submit" class="btn btn-outline-primary btn-sm"
               id="sign">�����ϱ�</button>
         </div>
      </form>
   </div>
</article>
<%-- �������� �� --%>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
   function chooseGender(gen) {
      $('#member_gender').val(gen);
   }

    $(function() {
      $('#btn1').click(
            function() {
               let param = $('#member_id').val();
               $.ajax({
                  url : "idcheck?member_id=" + param,
                  success : function(data) {
                     if (data == 1) {
                        $('#target').css('color', 'red').html(
                              '������� ���̵� �Դϴ�.');
                     } else {
                        $('#target').css('color', 'green').html(
                              '��� ������ ���̵� �Դϴ�.');
                     }

                  }
               });
            });
   }); 
   $(function() {
      $('#pw2').blur(function() {

         if ($('#member_pwd').val() != $('#pw2').val()) {
            if ($('#pw2').val() != '') {
               alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
               $('#pw2').val('');
               $('#pw2').focus();
            }
         }
      })
   });
</script>
