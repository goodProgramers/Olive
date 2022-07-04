<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="../images/Sist.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
a {
    color: #666;
    text-decoration: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
div {
    display: block;
}
strong {
    font-weight: bold;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
body, html {
    word-spacing: -1px;
    color: #666;
    font-size: 14px;
    line-height: 20px;
    font-family: Montserrat,-apple-system,NotoSansCJKkr,AppleSDGothicNeo,Roboto,dotum,'돋움',sans-serif;
    letter-spacing: -.04em;
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
}

</style>
<style>
.mainHLifeWrap {
    text-align: center;
  width: 1020px ;
  margin: 0 auto;
}
.mainHLifeWrap>h3 {
    display: block;
    text-align: center ;
    margin-bottom: 15px;
    font-size: 26px;
    line-height: 32px;
    color: #000;
}
.main_sub_tit {
    height: 40px;
    margin: 51px 0 8px;
    font-size: 26px;
    color: #000;
    text-align: center;
    line-height: 40px;
}
.hLifeSlide {
    padding: 0 8px;
}
.slick-slider {
    position: relative;
    display: block;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -webkit-touch-callout: none;
    -khtml-user-select: none;
    -ms-touch-action: pan-y;
    touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}
.hLifeSlide>button {
    position: absolute;
    left: -60px;
    top: 50%;
    transform: translateY(-50%);
    z-index: 10;
}
button {
    text-align: center;
    color: #fff;
}
.slick-slider .slick-list, .slick-slider .slick-track {
    -webkit-transform: translate3d(0,0,0);
    -moz-transform: translate3d(0,0,0);
    -ms-transform: translate3d(0,0,0);
    -o-transform: translate3d(0,0,0);
    transform: translate3d(0,0,0);
}
.slick-list {
    position: relative;
    display: block;
    overflow: hidden;
    margin: 0;
    padding: 0;
}
element.style {
    opacity: 1;
    width: 4020px;
    transform: translate3d(-2345px, 0px, 0px);
}
.hLifeSlide .slideItem {
    position: relative;
    margin: 0 13px 0 12px;
}
.slick-initialized .slick-slide {
    display: block;
}
.slick-slide {
    display: none;
    float: left;
    height: 100%;
    min-height: 1px;
}
.hLifeSlide .slideItem .img {
    overflow: hidden;
    position: relative;
    display: block;
    height: 420px;
    border-radius: 25px;
}
.hLifeSlide .slideItem .img>span {
    position: absolute;
    top: 50%;
    left: 50%;
    display: block;
    transform: translate(-50%,-50%) scale(1);
    transition: all .3s ease-in-out;
}
.hLifeSlide .slideItem .img>span>img {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
}
.hLifeSlide .slideItem .txt .title {
    overflow: hidden;
    display: block;
    font-size: 20px;
    line-height: 30px;
    letter-spacing: -.45px;
    text-overflow: ellipsis;
    white-space: nowrap;
    word-wrap: normal;
}
.hLifeSlide .slideItem .txt>span {
    display: block;
    margin-top: 5px;
    font-size: 15px;
    line-height: 20px;
    font-weight: 400;
    letter-spacing: -.21px;
    word-break: keep-all;
    padding-right: 10px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
</style>



</head>
<body>
<div class="mainHLifeWrap">
			<h3 class="main_sub_tit"><strong>Healthy Life</strong></h3>
			<div class="hLifeSlide slick-initialized slick-slider"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
				
					
						<div aria-live="polite" class="slick-list draggable">
						 <div class="slick-track" role="listbox" style="opacity: 1; width: 4020px; transform: translate3d(-2345px, 0px, 0px);">
						 
						 
						 
					<c:if test="${not empty productlist}"> 
						 <c:forEach items="${productlist}" var="productDto" varStatus="status">
						 
						 <div class="slideItem slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true" style="width: 310px;" tabindex="-1">
							<a href="javascript:common.wlog('home_healthy_banner' + (3 + 1));common.link.movePlanShop('500000101920047', 'Home_Healthy')" data-attr="홈^헬시라이프^롱보드 라이더의 선케어 비법" data-trk="/" tabindex="-1">
								<p class="img"><span><img data-src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/8429879795740206274.png" alt="6-1 롱보드" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/8429879795740206274.png"></span></p>
								<p class="txt" style="">
									<strong class="title">${productDto.pr_name}</strong>
									<span>8년차 롱보드 라이더 혜진의<br> 선&amp;헤어 아이템 소개합니다</span>
								</p>
							</a>
						</div>
						 </c:forEach>
						</c:if>	
					<!-- 	
						<div class="slideItem slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" style="width: 310px;" tabindex="-1">
							<a href="javascript:common.wlog('home_healthy_banner' + (4 + 1));common.link.movePlanShop('500000101920046', 'Home_Healthy')" data-attr="홈^헬시라이프^청년도배사 추천 클렌징" data-trk="/" tabindex="-1">
								<p class="img"><span><img data-src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/4762393897941695301.jpg" alt="5-4 청년도배사" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/4762393897941695301.jpg"></span></p>
								<p class="txt" style="">
									<strong class="title">청년도배사 추천 클렌징</strong>
									<span>유퀴즈 출연 청년도배사의  <br>현장 속 아이템 소개합니다 </span>
								</p>
							</a>
						</div>
						
						<div class="slideItem slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 310px;" tabindex="-1">
							<a href="javascript:common.wlog('home_healthy_banner' + (5 + 1));common.link.movePlanShop('500000101920045', 'Home_Healthy')" data-attr="홈^헬시라이프^국대 장은실선수의 건강루틴" data-trk="/" tabindex="-1">
								<p class="img"><span><img data-src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/6920789122630632278.png" alt="5-3 장은실선수" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/6920789122630632278.png"></span></p>
								<p class="txt" style="">
									<strong class="title">국대 장은실선수의 건강루틴</strong>
									<span>17년차 레슬러가 추천하는 <br>건강관리 아이템 소개합니다 </span>
								</p>
							</a>
						</div>
						
						<div class="slideItem slick-slide" data-slick-index="0" aria-hidden="true" style="width: 310px;" tabindex="-1" role="option" aria-describedby="slick-slide10">
							<a href="javascript:common.wlog('home_healthy_banner' + (0 + 1));common.link.movePlanShop('500000101920050', 'Home_Healthy')" data-attr="홈^헬시라이프^아이유 대필 서예가의 손케어" data-trk="/" tabindex="-1">
								<p class="img"><span><img alt="7-1 서예가" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/1026887373424483349.jpg"></span></p>
								<p class="txt" style="">
									<strong class="title">아이유 대필 서예가의 손케어</strong>
									<span>글씨에 감정과 생각을 담는 <br>인중 이정화의 서예 라이프 </span>
								</p>
							</a>
						</div>
						
						<div class="slideItem slick-slide" data-slick-index="1" aria-hidden="true" style="width: 310px;" tabindex="-1" role="option" aria-describedby="slick-slide11">
							<a href="javascript:common.wlog('home_healthy_banner' + (1 + 1));common.link.movePlanShop('500000101920049', 'Home_Healthy')" data-attr="홈^헬시라이프^드라마 촬영현장 속 헤어픽서" data-trk="/" tabindex="-1">
								<p class="img"><span><img alt="6-3 웹드배우" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/6837307717838892096.jpg"></span></p>
								<p class="txt" style="">
									<strong class="title">드라마 촬영현장 속 헤어픽서</strong>
									<span>픽고 여주 소현이의 24시간<br> 지속력 아이템 소개합니다 </span>
								</p>
							</a>
						</div>
						
						<div class="slideItem slick-slide" data-slick-index="2" aria-hidden="true" style="width: 310px;" tabindex="-1" role="option" aria-describedby="slick-slide12">
							<a href="javascript:common.wlog('home_healthy_banner' + (2 + 1));common.link.movePlanShop('500000101920048', 'Home_Healthy')" data-attr="홈^헬시라이프^패션모델이 매일입는 이너웨어" data-trk="/" tabindex="-1">
								<p class="img"><span><img alt="6-2 이너웨어" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/7637432777674272294.jpg"></span></p>
								<p class="txt" style="">
									<strong class="title">패션모델이 매일입는 이너웨어</strong>
									<span>모델 성은의 촬영 현장 &amp; <br>일상 속 이너웨어 소개합니다</span>
								</p>
							</a>
						</div>
						
						<div class="slideItem slick-slide" data-slick-index="3" aria-hidden="true" style="width: 310px;" tabindex="-1" role="option" aria-describedby="slick-slide13">
							<a href="javascript:common.wlog('home_healthy_banner' + (3 + 1));common.link.movePlanShop('500000101920047', 'Home_Healthy')" data-attr="홈^헬시라이프^롱보드 라이더의 선케어 비법" data-trk="/" tabindex="-1">
								<p class="img"><span><img alt="6-1 롱보드" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/8429879795740206274.png"></span></p>
								<p class="txt" style="">
									<strong class="title">롱보드 라이더의 선케어 비법</strong>
									<span>8년차 롱보드 라이더 혜진의<br> 선&amp;헤어 아이템 소개합니다</span>
								</p>
							</a>
						</div>
						
						<div class="slideItem slick-slide slick-current slick-active" data-slick-index="4" aria-hidden="false" style="width: 310px;" tabindex="-1" role="option" aria-describedby="slick-slide14">
							<a href="javascript:common.wlog('home_healthy_banner' + (4 + 1));common.link.movePlanShop('500000101920046', 'Home_Healthy')" data-attr="홈^헬시라이프^청년도배사 추천 클렌징" data-trk="/" tabindex="0">
								<p class="img"><span><img alt="5-4 청년도배사" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/4762393897941695301.jpg"></span></p>
								<p class="txt" style="">
									<strong class="title">청년도배사 추천 클렌징</strong>
									<span>유퀴즈 출연 청년도배사의  <br>현장 속 아이템 소개합니다 </span>
								</p>
							</a>
						</div>
						
						<div class="slideItem slick-slide slick-active" data-slick-index="5" aria-hidden="false" style="width: 310px;" tabindex="-1" role="option" aria-describedby="slick-slide15">
							<a href="javascript:common.wlog('home_healthy_banner' + (5 + 1));common.link.movePlanShop('500000101920045', 'Home_Healthy')" data-attr="홈^헬시라이프^국대 장은실선수의 건강루틴" data-trk="/" tabindex="0">
								<p class="img"><span><img alt="5-3 장은실선수" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/6920789122630632278.png"></span></p>
								<p class="txt" style="">
									<strong class="title">국대 장은실선수의 건강루틴</strong>
									<span>17년차 레슬러가 추천하는 <br>건강관리 아이템 소개합니다 </span>
								</p>
							</a>
						</div>
						
						<div class="slideItem slick-slide slick-cloned slick-active" data-slick-index="6" aria-hidden="false" style="width: 310px;" tabindex="-1">
							<a href="javascript:common.wlog('home_healthy_banner' + (0 + 1));common.link.movePlanShop('500000101920050', 'Home_Healthy')" data-attr="홈^헬시라이프^아이유 대필 서예가의 손케어" data-trk="/" tabindex="0">
								<p class="img"><span><img data-src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/1026887373424483349.jpg" alt="7-1 서예가" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/1026887373424483349.jpg"></span></p>
								<p class="txt" style="">
									<strong class="title">아이유 대필 서예가의 손케어</strong>
									<span>글씨에 감정과 생각을 담는 <br>인중 이정화의 서예 라이프 </span>
								</p>
							</a>
						</div>
						
						<div class="slideItem slick-slide slick-cloned" data-slick-index="7" aria-hidden="true" style="width: 310px;" tabindex="-1">
							<a href="javascript:common.wlog('home_healthy_banner' + (1 + 1));common.link.movePlanShop('500000101920049', 'Home_Healthy')" data-attr="홈^헬시라이프^드라마 촬영현장 속 헤어픽서" data-trk="/" tabindex="-1">
								<p class="img"><span><img data-src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/6837307717838892096.jpg" alt="6-3 웹드배우" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/6837307717838892096.jpg"></span></p>
								<p class="txt" style="">
									<strong class="title">드라마 촬영현장 속 헤어픽서</strong>
									<span>픽고 여주 소현이의 24시간<br> 지속력 아이템 소개합니다 </span>
								</p>
							</a>
						</div>
						<div class="slideItem slick-slide slick-cloned" data-slick-index="8" aria-hidden="true" style="width: 310px;" tabindex="-1">
							<a href="javascript:common.wlog('home_healthy_banner' + (2 + 1));common.link.movePlanShop('500000101920048', 'Home_Healthy')" data-attr="홈^헬시라이프^패션모델이 매일입는 이너웨어" data-trk="/" tabindex="-1">
								<p class="img"><span><img data-src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/7637432777674272294.jpg" alt="6-2 이너웨어" src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/289/7637432777674272294.jpg"></span></p>
								<p class="txt" style="">
									<strong class="title">패션모델이 매일입는 이너웨어</strong>
									<span>모델 성은의 촬영 현장 &amp; <br>일상 속 이너웨어 소개합니다</span>
								</p>
							</a>
						</div>
						
						 -->
						
						
						
						
						</div></div>
					
						
					
						
					
						
					
						
					
						
					
				
			<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;">Next</button></div>
		</div>


</body>
</html>