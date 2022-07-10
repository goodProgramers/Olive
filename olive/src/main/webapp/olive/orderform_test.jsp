<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>2022. 6. 27. - 오전 9:06:35</title>
</head>
<body>
<h3>주문완료창</h3>
<%
	String member_ad_code = request.getParameter("member_ad_code");
	String memberID = request.getParameter("memberID");
	String memberCode = request.getParameter("memberCode");
	String totalProductAmt = request.getParameter("totalProductAmt");
	String deliveryCharge = request.getParameter("deliveryCharge");
	String orderPayAmt = request.getParameter("orderPayAmt");
	String todayGift = request.getParameter("todayGift");
	String orderMemo = request.getParameter("orderMemo");
	String prCode = request.getParameter("prCode");
	String prCounts = request.getParameter("prCount");
	String realPricehiddens = request.getParameter("realPricehidden");
	String priceCode = request.getParameter("priceCode");
	String saleCode = request.getParameter("saleCode");
	String payMethod = request.getParameter("payMethod");
%>

주문테이블 > 배송지코드 : <%= member_ad_code %><br>
회원아아디 : <%= memberID %><br>
주문테이블 > 회원코드 : <%= memberCode %><br>
주문테이블 > 총구매가 : <%= totalProductAmt %><br>
주문테이블 > 배송비 : <%= deliveryCharge %><br>
주문테이블 > 총결제금액 : <%= orderPayAmt %><br>
주문테이블 > 오늘드림여부 : <%= todayGift %><br>
주문테이블 > 배송요청사항 : <%= orderMemo %><br>
주문상세테이블 > 상품코드 : <%= prCode %><br>
주문상세테이블 > 수량 : <%= prCounts %><br>
주문상세테이블 > 구매가(할인적용) : <%= realPricehiddens %><br>
주문상세테이블 > 단가코드 : <%= priceCode %><br>
주문상세테이블 > 할인코드 : <%= saleCode %><br>
결제테이블 > 결제수단 : <%= payMethod %><br>

</body>
</html>