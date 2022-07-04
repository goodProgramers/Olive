<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<title>2022. 6. 27. - 오전 9:06:35</title>
</head>
<body>
<ul class="slick">
	<div><li>이미지1</li></div>
	<div><li>이미지2</li></div>
	<div><li>이미지3</li></div>
	<div><li>이미지4</li></div>
	<div><li>이미지5</li></div>
	<div><li>이미지6</li></div>

</ul>

<script>
$('.slick').slick({
	  infinite: true,
	  slidesToShow: 3,
	  slidesToScroll: 3
	});
</script>
</body>
</html>