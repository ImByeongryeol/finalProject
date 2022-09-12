<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

		<section class="container content">
			<form method="post" action="animalIn" enctype="multipart/form-data" id="upform">

		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">반려동물 이름</label>
		         <div class="col-sm-10">
		               <input type="text" name="animal_name" id="animal_name" class="form-control">
		          </div>
		      </div>
		  
		  	  <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">반려동물 나이</label>
		         <div class="col-sm-10">
		               <input type="text" name="animal_age" id="animal_age" class="form-control">
		          </div>
		      </div>
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">반려동물 성별</label>
		         <div class="col-sm-10" style="width:30%;">
		            <select class="form-select" name="animal_gender" id="animal_gender">
                        <option selected="selected">암</option>
                        <option>수</option>
		            </select>
		         </div>
		      </div>
		  
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">종</label>
		         <div class="col-sm-10" style="width:30%;">
		            <select class="form-select" name="cate_kind" id="cate_kind">
                        <option selected="selected">시추</option>
                        <option>허스키</option>
		            </select>
		         </div>
		      </div>     
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">이미지 업로드</label>
		         <div class="col-sm-10 mb-3">
		            <input type="file" name="mfile" id="mfile" class="form-control">
		         </div>
		         <div class="text-center">
		            <img src="${mycontext}/resources/animal/noimage.jpg" id="imgx">
		         </div>
		      </div>
		      
		      <div class="row mb-3">
		         <label class="col-sm-2 col-form-label">반려동물 상세 소개</label>
		         <div class="col-sm-10 form-floating">
		               <textarea name="animal_detail" id="animal_detail" class="form-control" style="height:200px; padding-top:1rem;"></textarea>
		          </div>
		      </div>
		      
		      <div class="d-flex justify-content-end">
		         <input type="submit" value="등록" class="btn btn-primary"/>&nbsp;
		         
		         <input type="button" value="취소" onclick="location='${mycontext}/main'" class="btn btn-danger"/>
		      </div>
		   </form>
		</section>