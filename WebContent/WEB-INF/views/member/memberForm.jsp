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
               id="member_name" placeholder="이름 입력" name="member_name" required="required">
         </div>

         <div class="navbar navbar-light bg-light">
            <label for="member_id"> </label>
            <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
            <!-- required 속성을 설정하면 필수입력 사항이된다. -->
            <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
            <input type="text" class="form-control" id="member_id"
               placeholder="아이디 입력(3-20)" name="member_id" maxlength="10"
               required="required" pattern=".{3,20}">
            <button type="button" class="btn btn-outline-primary btn-sm"
               id="btn1">중복확인</button>
            <div id="target"></div>
         </div>
         <div class="navbar navbar-light bg-light">
            <p>
               <label>비밀번호</label><input class="form-control" type="password" placeholder="비밀번호"
                  style="width: 90%" id="member_pwd" name="member_pwd" value="1234" required>
            </p>
         </div>
         <div class="navbar navbar-light bg-light">
            <p>
               <label>비밀번호 확인</label><input class="form-control" type="password" placeholder="비밀번호 확인"
                  style="width: 90%" id="pw2" value="1234" required>
            </p>
         </div>
         <div class="navbar navbar-light bg-light">
            <label for="member_phone"> </label> <input type="text"
               class="form-control" id="member_phone" placeholder="휴대전화번호 입력"
               name="member_phone" required="required">
         </div>
         <div class="navbar navbar-light bg-light">
            <label for="member_email"> </label> <input type="text"
               class="form-control" id="member_email" placeholder="이메일 입력" name="member_email"
               required="required">
         </div>
         <div class="navbar navbar-light bg-light">
            <label for="member_age"> </label> <input type="text" class="form-control"
               id="member_age" placeholder="나이 입력" name="member_age" required="required">
         </div>
        
        <h5>성별 체크</h5>
      <div>
      <input type="radio" id="member_gender" name="member_gender" value="남">
      <label for="남">남자</label>
    </div>

    <div>
      <input type="radio" id="member_gender" name="member_gender" value="여">
      <label for="여">여자</label>
    </div>
        
        
        <!-- <div class="navbar navbar-light bg-light">
            <label for="member_gender"> </label> <input type="radio" class="form-control"
               id="member_gender" placeholder="성별 입력" name="member_gender" required="required">
         </div> -->
        
        
         <!-- <div class="navbar navbar-light bg-light">
            <button type="button"
               class="btn btn-outline-primary btn-sm dropdown-toggle"
               data-bs-toggle="dropdown">성별</button>
            <input type="hidden" name="member_gender" id="member_gender">
            
            
           <ul class="dropdown-menu">
               <li><a class="dropdown-item"
                  href="javascript:chooseGender('남')">남</a></li>
               <li><a class="dropdown-item"
                  href="javascript:chooseGender('여')">여</a></li>
            </ul>
         </div> -->
         
         <div class="navbar navbar-light bg-light">
            <label for="member_addr"> </label> <input type="text"
               class="form-control" id="member_addr" placeholder="주소 입력" name="member_addr"
               required="required">
         </div>
         
         <!--  
         <div class="row mb-3">
            <label class="col-sm-2 col-form-label">*이미지업로드</label>
            <div class="col-sm-10">
               <input type="file" name="mimg" id="mimg" />
            </div>
         </div> -->



         <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="member_id"
               value="y" name="member_name"> <input type="hidden" id="member_id"
               value="n" name="member_name"> <label
               class="custom-control-label" for="same-address">현재 반려동물이 있나요?
               동의(선택)</label>
         </div>
         <div class="form-group" style="text-align: right; margin-top: 10px;">
            <button type="submit" class="btn btn-outline-primary btn-sm"
               id="sign">가입하기</button>
         </div>
      </form>
   </div>
</article>
<%-- 편집구간 끝 --%>
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
                              '사용중인 아이디 입니다.');
                     } else {
                        $('#target').css('color', 'green').html(
                              '사용 가능한 아이디 입니다.');
                     }

                  }
               });
            });
   }); 
   $(function() {
      $('#pw2').blur(function() {

         if ($('#member_pwd').val() != $('#pw2').val()) {
            if ($('#pw2').val() != '') {
               alert("비밀번호가 일치하지 않습니다.");
               $('#pw2').val('');
               $('#pw2').focus();
            }
         }
      })
   });
</script>
