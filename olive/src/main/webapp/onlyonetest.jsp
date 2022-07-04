<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<title>2022. 6. 27. - 오전 9:06:35</title>
<style>
	img{
		width: 334px;
	}
	
/* 	div:not(first-of-type){
		width: 500px;
	} */
	
	.visual{
		position: relative;
	}
	
	.visual button{
		position: absolute;
		z-index: 10;
		top: 0%;
		transform:translateY(-50%);
		width: 71px;
		height: 71px;
		border-radius: 100%;
		background: rgba(0,0,0,0.5);
		border: none;
	}
	
	.visual button:before{
		color: #fff;
		font-size: 45px;
	}
	
	.visual button.slick-prev{left:0; font-size: 0; color: transparent;}
	.visual button.slick-prev:before{content:"1";}
	.visual button.slick-next{right:0; font-size: 0; color: transparent;}
	.visual button.slick-next:before{content:"2";}
</style>
</head>
<body>

	<div class="visual">
		<div class="slick-slide slick-active" style="width: 343px;"><img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/4682051617407668973.jpg" alt=""></div>
		<div class="slick-slide slick-active" style="width: 343px;"><img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/8197405978311917285.jpg" alt=""></div>
		<div class="slick-slide slick-active" style="width: 343px;"><img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/4106709927774404147.jpg" alt=""></div>
		<div class="slick-slide slick-active" style="width: 343px;"><img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/6811693606334481203.png" alt=""></div>
		<div class="slick-slide slick-active" style="width: 343px;"><img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/3597044898360663231.jpg" alt=""></div>
		<div class="slick-slide slick-active" style="width: 343px;"><img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/1318227928117095037.jpg" alt=""></div>
	</div>
	
	<script>
		$('.visual').slick({
			  infinite: true,
			  slidesToShow: 3,
			  slidesToScroll: 3,
			  speed: 800
		});
	</script>
</body>
</html>