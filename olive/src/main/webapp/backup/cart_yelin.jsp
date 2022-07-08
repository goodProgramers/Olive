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
<h3>장바구니</h3>

전체선택 <input type="checkbox" id="allCheck">
<form action="order.do" method="post" name="cart" id="cart">
	<input type="text" name="memberID" value="pyl1234" style="display:none;"><!-- 세션으로 아이디값 가져올 예정 -->
	<div>
	<input type="checkbox" class="productCheck"><br>
<!-- 		<input type="checkbox" class="cart_prImg" name="cart_prImg" value="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014733907ko.jpg?l=ko" style="display:none;">
		<input type="checkbox" class="cart_brand" name="cart_brand" value="아누아" style="display:none;">
		<input type="checkbox" class="cart_product" name="cart_product" value="[찐진정 토너] 아누아 어성초 77% 토너 350ml" style="display:none;">
		<input type="checkbox" class="cart_prPrice" name="cart_prPrice" value="30500" style="display:none;">
		<input type="checkbox" class="cart_prPriceCnt" name="cart_prPriceCnt" value="30500" style="display:none;" >
		<input type="checkbox" class="cart_realPrice" name="cart_realPrice" value="22875" style="display:none;"> -->
		
		<input type="checkbox" class="cart_prImg" name="cart_prImg" value="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014733907ko.jpg?l=ko">
		<input type="checkbox" class="cart_brand" name="cart_brand" value="아누아" >
		<input type="checkbox" class="cart_product" name="cart_product" value="[찐진정 토너] 아누아 어성초 77% 토너 350ml" >
		<input type="checkbox" class="cart_prPrice" name="cart_prPrice" value="30500">
		<input type="checkbox" class="cart_prPriceCnt" name="cart_prPriceCnt" value="30500" >
		<input type="checkbox" class="cart_realPrice" name="cart_realPrice" value="22875">
		
		상품이미지 : <input type="text" class="cart_prImg" name="cart_prImg" value="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014733907ko.jpg?l=ko"><br>
		상품브랜드 : <input type="text" class="cart_brand" name="cart_brand" value="아누아"><br>
		상품이름 : <input type="text" class="cart_product" name="cart_product" value="[찐진정 토너] 아누아 어성초 77% 토너 350ml"><br>
		판매가 : <input type="text" class="cart_prPrice" name="cart_prPrice" value="30500"><br>
		구매가 : <input type="text" class="cart_prPriceCnt" name="cart_prPriceCnt" value="30500" style="text-decoration: line-through;"><br>
		상품수량 : <select class="cart_prCount" name="cart_prCount">
 			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
			<option>10</option>
		</select><br>
		<input type="text" class="cart_realPricehidden" name="cart_realPricehidden" value="22875" style="display:none;">
		구매가 : <input type="text" class="cart_realPrice" name="cart_realPrice" value="22875"><br>
	</div>
	
	<div>
	<input type="checkbox" class="productCheck"><br>
		<input type="checkbox" class="cart_prImg" name="cart_prImg" value="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014170417ko.jpg?l=ko" style="display:none;">
		<input type="checkbox" class="cart_brand" name="cart_brand" value="브링그린" style="display:none;">
		<input type="checkbox" class="cart_product" name="cart_product" value="브링그린 티트리시카 수딩토너 510ml" style="display:none;">
		<input type="checkbox" class="cart_prPrice" name="cart_prPrice" value="22000" style="display:none;">
		<input type="checkbox" class="cart_prPriceCnt" name="cart_prPriceCnt" value="22000" style="display:none;" >
		<input type="checkbox" class="cart_realPrice" name="cart_realPrice" value="17820" style="display:none;">
	
		상품이미지 : <input type="text" class="cart_prImg" name="cart_prImg" value="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014170417ko.jpg?l=ko"><br>
		상품브랜드 : <input type="text" class="cart_brand" name="cart_brand" value="브링그린"><br>
		상품이름 : <input type="text" class="cart_product" name="cart_product" value="브링그린 티트리시카 수딩토너 510ml"><br>
		판매가 : <input type="text" class="cart_prPrice" name="cart_prPrice" value="22000"><br>
		구매가 : <input type="text" class="cart_prPriceCnt" name="cart_prPriceCnt" value="22000" style="text-decoration: line-through;"><br>
		상품수량 : <select class="cart_prCount" name="cart_prCount">
 			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
			<option>10</option>
		</select><br>
		<input type="text" class="cart_realPricehidden" name="cart_realPricehidden" value="17820" style="display:none;">
		구매가 : <input type="text" class="cart_realPrice" name="cart_realPrice" value="17820"><br>
	</div>
	
	<button type="button" id="checkOrder">선택주문하기</button>
	<button type="submit" id="allOrder">전체주문하기</button>	
</form>


	
<script>

//전체선택 처리 작업
$("#allCheck").change(function (event) {
	$("div :checkbox").prop("checked", $(this).prop("checked"));
});

$(":checkbox:not(#allCheck)").click(function (event) {
	$("#allCheck").prop("checked", $(":checkbox:not(#allCheck):checked").length == $(":checkbox:not(#allCheck)").length ? "checked" : ""); 
});


$(":submit").click(function () {
	alert("주문결제 페이지로 이동합니다.");
});


// 수량 바꾸면 구매가 바꾸는 작업
$(".cart_prCount").change(function () {
	var prPrice = $(this).prev().prev().prev().prev().val(); // 판매가
	var realPrice = $(this).next().next().val(); // 구매가
	var count =	$(this).val();
	$(this).next().next().next().val(realPrice * count);
	$(this).prev().prev().val(prPrice * count);
});

/*
$("table tbody :checked").each(function (i, element) { // 체크된 체크박스만 가져옴
	// element.id - id 값으로 줬을 때 사용
	var empno = $(this).parent().next().html();
	empnos.push(empno); // 배열에 체크된 empno를 담음
});
*/


$(".productCheck").on("click", function () {
	
	$(this).prev().
	.checkbox.prop("checked", $(this).prop("checked"));
});

// 선택주문
$("checkOrder").on("click", function () {
	$("#cart").submit(function () {
		$("#cart :checked").val().submit();
	});
});



// 전체주문시 체크박스 다 체크되게
$("#allOrder").on("click", function name() {
	$("#allCheck").prop("checked", true);
	$("div :checkbox").prop("checked", true);	
});
</script>
</body>
</html>