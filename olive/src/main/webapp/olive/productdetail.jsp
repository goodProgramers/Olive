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
<h3>제품상세보기 페이지</h3>
<form action="order.do" method="post">
	<input type="text" name="memberID" value="pyl1234" style="display:none;">
	상품이미지 : <input type="text" class="prImg" name="prImg" value="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0014/A00000014170417ko.jpg?l=ko"><br>
	상품브랜드 : <input type="text" class="brand" name="brand" value="브링그린"><br>
	상품이름 : <input type="text" class="product" name="product" value="브링그린 티트리시카 수딩토너 510ml"><br>
	판매가 : <input type="text" class="prPrice" name="prPrice" value="22000"><br>
	구매가 : <input type="text" class="prPriceCnt" name="prPriceCnt" value="22000" style="text-decoration: line-through;"><br>
	상품수량 : <select class="prCount" name="prCount">
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
	<input type="text" class="realPricehidden" name="realPricehidden" value="17820" style="display:none;">
	구매가 : <input type="text" class="realPrice" name="realPrice" value="17820"><br>
	<button type="submit">바로구매</button>
</form>

</body>

<script>
	$("button:submit").on("click", function () {
		alert("주문/결제 페이지로 이동합니다.");
	});
	
	// 수량 바꾸면 구매가 바꾸는 작업
	$(".prCount").change(function () {
		var prPrice = $(this).prev().prev().prev().prev().val(); // 판매가
		var realPrice = $(this).next().next().val(); // 구매가
		var count =	$(this).val();
		$(this).next().next().next().val(realPrice * count);
		$(this).prev().prev().val(prPrice * count);
	});
</script>
</html>