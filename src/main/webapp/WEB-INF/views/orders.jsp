<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/resources/css/orders.css">
</head>
<body>
	<h2>주문 내역</h2>
    <table>
        <tr>
            <th>상품명</th>
            <th>수량</th>
            <th>가격</th>
            <th>합계</th>
        </tr>
        <c:forEach var="product" items="${list}">
            <tr>
                <td>${product.name}</td>
                <td>${cart.cart[product.id]}</td>
                <!-- 수량 -->
                <td>${product.price}</td>
                <td>${product.price * cart.cart[product.id]}</td>
            </tr>
        </c:forEach>
    </table>

    <p class="total-amount">결제금액: ${totalAmount}원</p>

    <div style="text-align: center;">
        <a href="/cart/confirm" class="button">결제하기</a>
        <a href="/cart" class="back-button">취소하기</a>
    </div>
    
</body>
</html>