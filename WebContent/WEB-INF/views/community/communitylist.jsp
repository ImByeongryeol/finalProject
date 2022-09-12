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
        slide:'div', //�����̵� �Ǿ�� �� �±� ex) div, li 
        infinite:true, //���� �ݺ� �ɼ�     
        slidesToShow:4, // �� ȭ�鿡 ������ ������ ����
        slidesToScroll:1, //��ũ�� �ѹ��� ������ ������ ����
        speed:100, // ���� ��ư ������ ���� ȭ�� �ߴµ����� �ɸ��� �ð�(ms)
        arrows:true, // ������ �̵��ϴ� ȭ��ǥ ǥ�� ����
        dots:true, // ��ũ�ѹ� �Ʒ� ������ ���������̼� ����
        autoplay:true, // �ڵ� ��ũ�� ��� ����
        autoplaySpeed:3000, // �ڵ� ��ũ�� �� �������� �Ѿ�µ� �ɸ��� �ð� (ms)
        pauseOnHover:true, // �����̵� �̵�    �� ���콺 ȣ���ϸ� �����̴� ���߰� ����
        vertical:false, // ���� ���� �����̵� �ɼ�
        prevArrow:"<button type='button' class='slick-prev'>Previous</button>", // ���� ȭ��ǥ ��� ����
        nextArrow:"<button type='button' class='slick-next'>Next</button>", // ���� ȭ��ǥ ��� ����
        dotsClass:"slick-dots", //�Ʒ� ������ ���������̼�(��) css class ����
        draggable:true, //�巡�� ���� ���� 
    });
})
</script>

<section class="recommend">
	<div class="container">
		<h2>��õ ģ��</h2>
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
							<span>ǰ��  :</span> ${vo.cate_kind} <br>
							<span>���� :</span> ${vo.animal_age}�� <br> 
							<span>���� :</span> ${vo.animal_gender}��
						</p>
					</div>
				</a>
			</li>
		</c:forEach>
	</ul>
			<ul class="paging">
				<c:choose>
					<c:when test="${startPage < 6}">
						<li class="disable">����</li>
					</c:when>
					<c:otherwise>
						<li><a href="communitylist?cPage=${startPage-1}">����</a></li>
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
						<li class="disable">����</li>
					</c:when>
					<c:otherwise>
						<li><a href="communitylist?cPage=${endPage+1}">����</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</section>
		
	
		