<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="mycontext" value="${pageContext.request.contextPath}"/>

<style>
.recommend {background:#7ecae0; padding:50px 0;}
.recommend h2 {color:#fff;}
.recommendlist {padding:0 4%;}
.recommendlist a .imgbox {height:190px; overflow:hidden;}
.recommendlist a .imgbox img {width:100%; transition:all 0.2s linear;}
.recommendlist a h3 {font-size:23px; text-align:center; color:#fff; padding:10px 0 5px;}
.recommendlist a:hover .imgbox img {transform:scale(1.2);}

.animallist:after {display:block; content:""; clear:both;}
.animallist li {float:left; width:20%; padding:0 1%; margin:0 0 20px 0;}
.animallist li a .imgbox {height:150px; overflow:hidden;}
.animallist li a .imgbox img {width:100%; transition:all 0.2s linear;}
.animallist li a .txtbox h3 {font-size:23px; text-align:center; background:#f7f7f7; padding:10px 0 5px;}
.animallist li a .txtbox p {font-size:18px;}
.animallist li a:hover .imgbox img {transform:scale(1.2);}
</style>


<script>
$(function(){
    $('#slider').slick({
        slide:'div', //슬라이드 되어야 할 태그 ex) div, li 
        infinite:true, //무한 반복 옵션     
        slidesToShow:4, // 한 화면에 보여질 컨텐츠 개수
        slidesToScroll:1, //스크롤 한번에 움직일 컨텐츠 개수
        speed:100, // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
        arrows:true, // 옆으로 이동하는 화살표 표시 여부
        dots:true, // 스크롤바 아래 점으로 페이지네이션 여부
        autoplay:true, // 자동 스크롤 사용 여부
        autoplaySpeed:3000, // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
        pauseOnHover:true, // 슬라이드 이동    시 마우스 호버하면 슬라이더 멈추게 설정
        vertical:false, // 세로 방향 슬라이드 옵션
        prevArrow:"<button type='button' class='slick-prev'>Previous</button>", // 이전 화살표 모양 설정
        nextArrow:"<button type='button' class='slick-next'>Next</button>", // 다음 화살표 모양 설정
        dotsClass:"slick-dots", //아래 나오는 페이지네이션(점) css class 지정
        draggable:true, //드래그 가능 여부 
    });
})
</script>

<section class="recommend">
	<div class="container">
		<h2>추천 친구</h2>
	    <div id="slider">
			<c:forEach var="rec" items="${recommendlist}">
				<div class="recommendlist">
					<a href="${mycontext}/community/communitydetail?anum=${rec.animal_num}&friendId=${rec.member_id}">
						<div class="imgbox">
							<img src="${mycontext}/resources/animalimage/${rec.animal_img}">
						</div>
						<h3>${rec.animal_name}</h3>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
</section>
		
		<section class="container content">
	<ul class="animallist">
		<c:forEach var="vo" items="${communitylist}">
			<li>
				<a href="${mycontext}/community/communitydetail?anum=${vo.animal_num}&friendId=${vo.member_id}">
					<div class="imgbox">
						<img src="${mycontext}/resources/animalimage/${vo.animal_img}">
					</div>
					<div class="txtbox">
						<h3>${vo.animal_name}</h3>
						<p>
							<span>품종  :</span> ${vo.cate_kind} <br>
							<span>나이 :</span> ${vo.animal_age}살 <br> 
							<span>성별 :</span> ${vo.animal_gender}컷
						</p>
					</div>
				</a>
			</li>
		</c:forEach>
	</ul>
			<ul class="paging">
				<c:choose>
					<c:when test="${startPage < 6}">
						<li class="disable">이전</li>
					</c:when>
					<c:otherwise>
						<li><a href="communitylist?cPage=${startPage-1}">이전</a></li>
					</c:otherwise>
				</c:choose>
				<c:forEach varStatus="i" begin="${startPage}" end="${endPage}" step="1" >
					<c:choose>
						<c:when test="${i.index == nowPage}">
							<li class="now">${i.index}</li>
						</c:when>
						<c:otherwise>
							<li><a href="communitylist?cPage=${i.index}">${i.index}</a></li>
						</c:otherwise>
					</c:choose> 
				</c:forEach>
				<c:choose>
					<c:when test="${endPage >= totalPage}">
						<li class="disable">다음</li>
					</c:when>
					<c:otherwise>
						<li><a href="communitylist?cPage=${endPage+1}">다음</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</section>
		
	
		