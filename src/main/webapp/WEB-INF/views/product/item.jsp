<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<jsp:include page="../head.jsp"></jsp:include>
<script type="text/javascript" src="/resources/js/product/item.js"></script>
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/item.css">
</head>
<body>
	<div class="e91_177">
	
	<!-- 제품 사진 들어가는 부분 (cardlist에서 선택한 제품의 사진) -->
	
  <c:forEach var="photo" items="${item.photo}">
    <img alt="제품 이미지" 
         src="${pageContext.request.contextPath}/upload/${photo.uuid}_${photo.filename}"
         class="productimage-img">
</c:forEach>

  
  <div class="e91_179"></div><span class="e91_181"><a href="/..">P L A N O U T</a></span>
  
  <div class="e93_194">
    <button class="e93_195 action" id="cart" data-type="cart" data-login="${sessionScope.member != null}" data-id="${item.id}"></button>
    <div class="gocarttext">추가하기</div>
  </div>
  <div class="e93_198">
    <button class="e93_199 action" id="buy" data-type="buy" data-login="${sessionScope.member != null}" data-id="${item.id}"></button>
    <div class="gobuytext" >구매하기</div>
  </div>
  
  <!-- 제품 정보 나오는부분 정리 -->
  
  <div class="product-card">
  <div class="product-info">
    <span class="label">제품아이디:</span>
    <span class="value">${item.id}</span>
  </div>
  <div class="product-info">
    <span class="label">제품이름:</span>
    <span class="value">${item.name}</span>
  </div>
  <div class="product-info">
    <span class="label">가격:</span>
    <span class="value">${item.price}원</span>
  </div>
  <div class="product-info">
    <span class="label">카테고리:</span>
    <span class="value">${item.category}</span>
  </div>
  <div class="product-info">
    <span class="label">사이즈:</span>
    <span class="value">${item.info}</span>
  </div>
</div>
  
	<!-- 버튼 수정란 -->
  
  <div class="e93_211"></div><span class="backtext"><a href="/product/cardlist">뒤로가기</a></span>
  
  <span class="e102_177">수량 :</span>
  <div class="e102_178"><input type="number" id="amount" value="1"></div>
</div>
</body>
</html>