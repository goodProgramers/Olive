<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<title>잘하셨조 - 올리브영 온라인몰</title>
<style>
@font-face{
	font-family:Montserrat;
	font-style:normal;
	font-weight:400;
	src:local(Montserrat-Light),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Light.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Light.woff") format("woff")
}

@font-face{
	font-family:Montserrat;
	font-style:normal;
	font-weight:500;
	src:local(Montserrat),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Regular.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Regular.woff") format("woff")
	}

@font-face{
	font-family:Montserrat;
	font-style:normal;
	font-weight:700;
	src:local(Montserrat-SemiBold),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-SemiBold.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-SemiBold.woff") format("woff")}@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:400;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff") format("woff")
}

@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:400;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff") format("woff")}

@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:500;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Medium.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Medium.woff") format("woff")}

@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:700;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Bold.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Bold.woff") format("woff")}

@font-face{font-family:Dovemayo-Medium;src:url("https://www.oliveyoung.co.kr/pc-static-root/fonts/dovemayo/Dovemayo-Medium.woff") format('woff');font-weight:400;font-style:normal}

body,html{-webkit-font-smoothing:antialiased;-webkit-font-smoothing:antialiased}

a,address,blockquote,body,dd,div,dl,dt,em,fieldset,form,h1,h2,h3,h4,h5,h6,img,input,label,li,ol,p,pre,select,span,strong,textarea,ul{margin:0;padding:0;border:0}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
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

#Container, #Footer, #Header, #Wrapper {
    width: 100%;
    min-width: 1020px;
}

#Container {
    overflow: hidden;
}

#Contents {
    width: 1020px;
    height: 100%;
    margin: 0 auto;
}

div{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	display: block;
}

a:-webkit-any-link {
    cursor: pointer;
}

h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

strong {
    font-weight: bold;
}

#Container .catch_keyword_wrap .main_sub_tit {
    margin-top: 50px;
}

.main_sub_tit {
    height: 40px;
    margin: 51px 0 8px;
    font-size: 26px;
    color: #000;
    text-align: center;
    line-height: 40px;
}

#Container .catch_keyword_wrap .keyword_title {
    margin-top: 15px;
    font-size: 20px;
    color: #000;
    line-height: normal;
}

#Container .catch_keyword_wrap .keyword_sub_title {
    margin-top: 11px;
    font-size: 16px;
    color: #000;
    line-height: 23px;
}

.catch_keyword_wrap+.main_onlyone_wrap {
    margin: 62px 0 100px;
}

.main_onlyone_wrap {
    overflow: hidden;
    margin: 35px 0 0;
}

.main_onlyone_wrap .banner_wrap {
    width: 1020px;
    padding: 18px 0 0;
    background: #fff;
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

ul{
	list-style-type: none;
}

a{
	text-decoration: none;
}

#Container .catch_keyword_wrap .keyword_banner {
    margin-top: 20px;
    font-size: 0;
}

#Container .catch_keyword_wrap .keyword_thumb {
    width: 500px;
    height: 260px;
    border-radius: 8px;
    overflow: hidden;
}

#Container .catch_keyword_wrap .keyword_items:first-child {
    margin-right: 20px;
}

#Container .catch_keyword_wrap .keyword_items {
    display: inline-block;
    width: 500px;
    vertical-align: top;
}

/* Catch Keyword 버튼 부분 */
#Container .catch_keyword_wrap .btn_box {
    margin: 40px 0 55px;
    text-align: center;
}

#Container .catch_keyword_wrap .btn_box .btn {
    -webkit-appearance: none;
    appearance: none;
    display: block;
    width: 335px;
    margin: 0 auto;
    padding: 10px 0 11px;
    border: 1px solid #ddd;
    border-radius: 4px;
    background: #fff;
    font-size: 14px;
    font-weight: 500;
    line-height: 17px;
    color: #454c53;
    text-align: center;
}

button, input[type=submit] {
    border: 0;
    padding: 0;
    box-shadow: none;
    cursor: pointer;
}

#Container .catch_keyword_wrap .btn_box .btn .num {
    margin-left: 10px;
    font-weight: 400;
    color: #b2b8be;
    font-style: normal;
    line-height: 17px;
}

#Container .catch_keyword_wrap .btn_box .btn .current {
    display: inline-block;
    position: relative;
    min-width: 25px;
    padding-right: 16px;
    color: #454c53;
    font-family: -apple-system,BlinkMacSystemFont,Montserrat,NotoSansCJKkr,AppleSDGothicNeo,Roboto,sans-serif;
}

#Container .catch_keyword_wrap .btn_box .btn .current:after {
    position: absolute;
    top: 3px;
    right: 8px;
    width: 1px;
    height: 12px;
    background: #dadde0;
    content: '';
    font-family: -apple-system,BlinkMacSystemFont,Montserrat,NotoSansCJKkr,AppleSDGothicNeo,Roboto,sans-serif;
}

.catch_keyword_wrap+.main_onlyone_wrap {
    margin: 62px 0 100px;
}

.main_onlyone_wrap .main_sub_tit {
    height: 32px;
    margin: 40px 0 0;
    line-height: 32px;
}

.main_sub_tit a {
    color: #000;
}

.main_onlyone_wrap .banner_wrap {
    width: 1020px;
    padding: 18px 0 0;
    background: #fff;
}

/* 삭제? */
/* .slick-slider {
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
} */

.main_onlyone_wrap .slick-list {
    margin-right: -9px;
}

.slick-initialized .slick-slide {
    display: block;
}

.main_onlyone_wrap .slick-dots {
    top: -31px;
    right: 3px;
}
.curation_slide .slick-dots, .main_card_banner .slick-dots, .main_onlyone_wrap .slick-dots, .main_plan_banner .slick-dots, .main_recomm_wrap .slick-dots {
    position: absolute;
    overflow: hidden;
}

.curation_slide .slick-dots>li, .main_card_banner .slick-dots>li, .main_onlyone_wrap .slick-dots>li, .main_plan_banner .slick-dots>li, .main_recomm_wrap .slick-dots>li {
    float: left;
    text-align: center;
}

.curation_slide .slick-dots>li.slick-active>button, .main_card_banner .slick-dots>li.slick-active>button, .main_onlyone_wrap .slick-dots>li.slick-active>button, .main_plan_banner .slick-dots>li.slick-active>button, .main_recomm_wrap .slick-dots>li.slick-active>button {
    color: #fff;
    background: #2f3030;
    border-radius: 12px;
}

.curation_slide .slick-dots>li>button, .main_card_banner .slick-dots>li>button, .main_onlyone_wrap .slick-dots>li>button, .main_plan_banner .slick-dots>li>button, .main_recomm_wrap .slick-dots>li>button {
    color: #888;
    width: 24px;
    height: 24px;
    background: 0 0;
    font-size: 14px;
    line-height: 24px;
}

button {
    text-align: center;
    color: #fff;
}

button, input[type=submit] {
    border: 0;
    padding: 0;
    box-shadow: none;
    cursor: pointer;
}

button, input[type=submit] {
    font-family: Montserrat,-apple-system,NotoSansCJKkr,AppleSDGothicNeo,Roboto,sans-serif;
    font-weight: 700;
}

</style>
</head>
<body>
<header></header>
<main>
<div id="Wrapper">
<div id="Container">
<div id="Contents">
 <div class="catch_keyword_wrap">
 
  <h3 class="main_sub_tit"><strong>Catch Keyword</strong></h3>
  
	<div class="catch_keyword_slide">
		<ul class="slide_list slick_slider slick-initialized slick-slider" id="catch_keyword" style="">
			<div aria-live="polite" class="slick-list">
			<div class="slick-track" role="listbox" style="opacity: 1; width: 5100px;">
				<li class="slick-slide1 slick-current slick-active" style="width: 1020px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1; display: block;" tabindex="-1" role="option">
				<!-- <li class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 1020px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;" tabindex="-1" role="option" aria-describedby="slick-slide50"> -->
				<ul class="keyword_banner">
					<li class="keyword_items">
					  <a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250028&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 블랙헤드" data-trk="/" tabindex="0">
						<div class="keyword_thumb">
							<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/8320749656199567580.jpg" alt="캐치 블랙헤드">
						</div>
						<div class="keyword_title"><strong>하루 1,000번 검색되는 블랙헤드</strong></div>
						<div class="keyword_sub_title">자고 일어나면 또 생기는 검은 점이 지긋지긋하다면</div>
					  </a>
					</li>
											
						<li class="keyword_items">
							<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250027&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 스크럽" data-trk="/" tabindex="0">
								<div class="keyword_thumb">
									<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/2027602166807069893.jpg" alt="캐치 스크럽">
								</div>
								<div class="keyword_title"><strong>검색량 세 배 증가, 스크럽</strong></div>
								<div class="keyword_sub_title">까슬까슬한 피부가 신경쓰일 땐 스크럽으로 관리해요</div>
							</a>
						</li>
				</ul>
				</li>
				
				<!-- <li class="slick-slide" data-slick-index="1" aria-hidden="true" style="width: 1020px; position: relative; left: -1020px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;" tabindex="-1" role="option" aria-describedby="slick-slide51"> -->
				<li class="slick-slide2" style="width: 1020px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 1; display: none;" tabindex="-1" role="option" >
				<ul class="keyword_banner">
						<li class="keyword_items">
							<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250024&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 픽서" data-trk="/" tabindex="-1">
								<div class="keyword_thumb">
									<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/2226589363142953879.jpg" alt="캐치 픽서">
								</div>
								<div class="keyword_title"><strong>검색 1.5배 상승, 픽서</strong></div>
								<div class="keyword_sub_title">흐르는 메이크업에 가라앉는 머리, 픽서로 고정해요</div>
							</a>
						</li>
				
						<li class="keyword_items">
							<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250023&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 제모" data-trk="/" tabindex="-1">
								<div class="keyword_thumb">
									<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/3110393534533117414.jpg" alt="캐치 제모">
								</div>
								<div class="keyword_title"><strong>매일 삼천번 검색되는 제모</strong></div>
								<div class="keyword_sub_title">샤프심 키우기 이제 그만! 체모와 깔끔하게 이별해요</div>
							</a>
						</li>
				</ul>
				</li>
				
				<!-- <li class="slick-slide" data-slick-index="2" aria-hidden="true" style="width: 1020px; position: relative; left: -2040px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;" tabindex="-1" role="option" aria-describedby="slick-slide52"> -->
				<li class="slick-slide3" style="width: 1020px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 1; display: none;" tabindex="-1" role="option">
				<ul class="keyword_banner">
						<li class="keyword_items">
							<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250022&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 선크림" data-trk="/" tabindex="-1">
								<div class="keyword_thumb">
									<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/8248614600041045704.jpg" alt="캐치 선크림">
								</div>
								<div class="keyword_title"><strong>6월 3주 검색 1위, 선크림</strong></div>
								<div class="keyword_sub_title">잘 고른 선크림 하나면 자외선도 무섭지 않아요</div>
							</a>
						</li>
				
						<li class="keyword_items">
							<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250021&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 틴트" data-trk="/" tabindex="-1">
								<div class="keyword_thumb">
									<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/410543229666475741.jpg" alt="캐치 틴트">
								</div>
								<div class="keyword_title"><strong>검색량 1.5배 증가, 틴트</strong></div>
								<div class="keyword_sub_title">마스크를 벗고 립메이크업의 시간이 돌아왔어요</div>
							</a>
						</li>
				</ul>
				</li>
				
				<!-- <li class="slick-slide" data-slick-index="3" aria-hidden="true" style="width: 1020px; position: relative; left: -3060px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;" tabindex="-1" role="option" aria-describedby="slick-slide53"> -->
				<li class="slick-slide4" style="width: 1020px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 1; display: none;" tabindex="-1" role="option">
				<ul class="keyword_banner">				
						<li class="keyword_items">
							<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250019&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 스팟" data-trk="/" tabindex="-1">
								<div class="keyword_thumb">
									<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/2809654983182398312.jpg" alt="캐치 스팟">
								</div>
								<div class="keyword_title"><strong>일 년 내내 검색되는 '스팟'</strong></div>
								<div class="keyword_sub_title">비상등이 켜진 고민, 빠르게 진정하는 꿀템 소개해요</div>
							</a>
						</li>
				
						<li class="keyword_items">
							<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250025&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 여름쿨" data-trk="/" tabindex="-1">
								<div class="keyword_thumb">
									<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/7439634638911194095.jpg" alt="캐치 여름쿨">
								</div>
								<div class="keyword_title"><strong>6월 급상승 검색어, 여름쿨</strong></div>
								<div class="keyword_sub_title">통통 튀는 색감으로 형광등 켜는 색조 모아봤어요</div>
							</a>
						</li>
				</ul>
				</li>
				
				<!-- <li class="slick-slide" data-slick-index="4" aria-hidden="true" style="width: 1020px; position: relative; left: -4080px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;" tabindex="-1" role="option" aria-describedby="slick-slide54"> -->
				<li class="slick-slide5" style="width: 1020px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 1; display: none;" tabindex="-1" role="option">
				<ul class="keyword_banner">
						<li class="keyword_items">
							<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250020&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 각질" data-trk="/" tabindex="-1">
								<div class="keyword_thumb">
									<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/6260490587396797951.jpg" alt="캐치 각질">
								</div>
								<div class="keyword_title"><strong>하루에 천 번 검색되는 각질</strong></div>
								<div class="keyword_sub_title">묵은 각질 순삭! 매끈한 피부 관리 어렵지 않아요</div>
							</a>
						</li>
				
						<li class="keyword_items">
							<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000102250015&amp;trackingCd=Home_Catchkeyword" data-attr="홈^catchkeyword^캐치 볼터치" data-trk="/" tabindex="-1">
								<div class="keyword_thumb">
									<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/7587999708882127658.jpg" alt="캐치 볼터치">
								</div>
								<div class="keyword_title"><strong>꾸준히 검색되는 '볼터치'</strong></div>
								<div class="keyword_sub_title">여백은 줄이고 포인트 살리는 볼터치 제품 소개할게요</div>
							</a>
						</li>
				</ul>
				</li>
			</div><!-- slick-track -->
			</div><!-- slick-list -->							
		</ul><!-- catch_keyword  -->
	</div>
								
    <div class="btn_box">
		<button type="button" class="btn" id="btn_catch_keyword" data-attr="홈^catchkeyword_더보기^더보기" data-trk="/">
			다른 키워드 더보기
		  <em class="num" data-attr="홈^catchkeyword_더보기^더보기" data-trk="/">
			 <span class="current" data-attr="홈^catchkeyword_더보기^더보기" data-trk="/" data-current-page="1" data-total-page="5">1</span>5
		  </em>
		</button>
    </div><!-- btn_box -->
								
 </div><!-- catch_keyword_wrap  -->
 
 <div class="main_onlyone_wrap">
   <h3 class="main_sub_tit"><a href="https://www.oliveyoung.co.kr/store/main/getOnlyOneList.do">오직 올리브영에서만</a></h3><!-- 온리원 사이트로 넘기기 -->
					
	<div class="banner_wrap slick_slider slick-initialized slick-slider slick-dotted" id="OnlyoneSlider" role="toolbar">
		<div aria-live="polite" class="slick-list draggable">
			<div class="slick-track" role="listbox" style="opacity: 1; width: 4116px; transform: translate3d(-1029px, 0px, 0px);">
								
				<div class="slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true" style="width: 343px;" tabindex="-1">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101890046&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^라운드어라운드_박성은^4" data-trk="/" tabindex="-1">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/5066834357111271116.jpg" alt="라운드어라운드_박성은">
						<div class="txt" style="color:#000000">
								<strong class="title">라운드어라운드</strong>
									<strong class="title">본품 선착순 증정</strong>
								<span class="desc">편백 바디미스트 증정</span>
						</div>
					</a>
				</div>
				
				<div class="slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" style="width: 343px;" tabindex="-1">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101730097&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^웨이크메이크_황동화^5" data-trk="/" tabindex="-1">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/3597044898360663231.jpg" alt="웨이크메이크_황동화">
						<div class="txt" style="color:#000000">
								<strong class="title">웨이크메이크</strong>
									<strong class="title">요즘 여.쿨.라</strong>
								<span class="desc">여.쿨.라.템 미리보기</span>
						</div>
					</a>
				</div>
				
				<div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 343px;" tabindex="-1">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101720061&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^아이디얼포맨_김선미^6" data-trk="/" tabindex="-1">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/1318227928117095037.jpg" alt="아이디얼포맨_김선미">
						<div class="txt" style="color:#FFFFFF">
								<strong class="title">아이디얼 포맨</strong>
									<strong class="title">이주용 PICK!</strong>
								<span class="desc">강철 헤어스프레이</span>
						</div>
					</a>
				</div>
				
				<div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide30">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101710060&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^브링그린_윤영선^1" data-trk="/" tabindex="0">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/3171483912566633434.jpg" alt="브링그린_윤영선">
						<div class="txt" style="color:#000000">
								<strong class="title">브링그린X세븐틴</strong>
									<strong class="title">올영데이 할인!!</strong>
								<span class="desc">내 피부는 오늘도 맑음</span>
						</div>
					</a>
				</div>
				
				<div class="slick-slide slick-active" data-slick-index="1" aria-hidden="false" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide31">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101730093&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^웨이크메이크_신수진^2" data-trk="/" tabindex="0">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/8197405978311917285.jpg" alt="웨이크메이크_신수진">
						<div class="txt" style="color:#000000">
								<strong class="title">웨이크메이크</strong>
									<strong class="title">아옳이 PICK!</strong>
								<span class="desc">초특가에 증정까지</span>
							
						</div>
					</a>
				</div>
				
				<div class="slick-slide slick-active" data-slick-index="2" aria-hidden="false" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide32">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101880126&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^딜라이트 프로젝트_최지현^3" data-trk="/" tabindex="0">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/4106709927774404147.jpg" alt="딜라이트 프로젝트_최지현">
						<div class="txt" style="color:#000000">
								<strong class="title">상반기 인기간식</strong>
								<strong class="title">최대 27% OFF</strong>
								<span class="desc">서울체크인 속 신상까지!</span>
						</div>
					</a>
				</div>
				
				<div class="slick-slide" data-slick-index="3" aria-hidden="true" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide33">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101890046&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^라운드어라운드_박성은^4" data-trk="/" tabindex="-1">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/5066834357111271116.jpg" alt="라운드어라운드_박성은">
						
						<div class="txt" style="color:#000000">
								<strong class="title">라운드어라운드</strong>
								<strong class="title">본품 선착순 증정</strong>
								<span class="desc">편백 바디미스트 증정</span>
						</div>
					</a>
				</div>
				
				<div class="slick-slide" data-slick-index="4" aria-hidden="true" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide34">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101730097&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^웨이크메이크_황동화^5" data-trk="/" tabindex="-1">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/3597044898360663231.jpg" alt="웨이크메이크_황동화">
						
						<div class="txt" style="color:#000000">
								<strong class="title">웨이크메이크</strong>
								<strong class="title">요즘 여.쿨.라</strong>
								<span class="desc">여.쿨.라.템 미리보기</span>
						</div>
					</a>
				</div>
				
				<div class="slick-slide" data-slick-index="5" aria-hidden="true" style="width: 343px;" tabindex="-1" role="option" aria-describedby="slick-slide35">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101720061&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^아이디얼포맨_김선미^6" data-trk="/" tabindex="-1">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/1318227928117095037.jpg" alt="아이디얼포맨_김선미">
						<div class="txt" style="color:#FFFFFF">
								<strong class="title">아이디얼 포맨</strong>
								<strong class="title">이주용 PICK!</strong>
								<span class="desc">강철 헤어스프레이</span>
						</div>
					</a>
				</div>
				
				<div class="slick-slide slick-cloned" data-slick-index="6" aria-hidden="true" style="width: 343px;" tabindex="-1">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101710060&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^브링그린_윤영선^1" data-trk="/" tabindex="-1">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/3171483912566633434.jpg" alt="브링그린_윤영선">
						<div class="txt" style="color:#000000">
								<strong class="title">브링그린X세븐틴</strong>
								<strong class="title">올영데이 할인!!</strong>
								<span class="desc">내 피부는 오늘도 맑음</span>
						</div>
					</a>
				</div>
				
				<div class="slick-slide slick-cloned" data-slick-index="7" aria-hidden="true" style="width: 343px;" tabindex="-1">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101730093&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^웨이크메이크_신수진^2" data-trk="/" tabindex="-1">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/8197405978311917285.jpg" alt="웨이크메이크_신수진">
						<div class="txt" style="color:#000000">
								<strong class="title">웨이크메이크</strong>
								<strong class="title">아옳이 PICK!</strong>
								<span class="desc">초특가에 증정까지</span>
						</div>
					</a>
				</div>
				
				<div class="slick-slide slick-cloned" data-slick-index="8" aria-hidden="true" style="width: 343px;" tabindex="-1">
					<a href="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101880126&amp;trackingCd=Home_Onlyone" class="onlyone_box" data-attr="홈^온리원관오직올리브영에서만^딜라이트 프로젝트_최지현^3" data-trk="/" tabindex="-1">
						<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/6/4106709927774404147.jpg" alt="딜라이트 프로젝트_최지현">
						<div class="txt" style="color:#000000">
								<strong class="title">상반기 인기간식</strong>
								<strong class="title">최대 27% OFF</strong>
								<span class="desc">서울체크인 속 신상까지!</span>
						</div>
					</a>
				</div>
								
		</div><!-- slick-track  -->
	</div><!-- slick-list draggable -->

	<ul class="slick-dots" style="display: block;" role="tablist">
	  <li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation30" id="slick-slide30">
	    <button type="button" data-role="none" role="button" tabindex="0">1</button>
	  </li>
	  
	  <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation31" id="slick-slide31" class="">
	  <button type="button" data-role="none" role="button" tabindex="0">2</button>
	  </li>
	</ul>
	
  </div><!-- OnlyoneSlider -->
 </div><!-- main_onlyone_wrap -->
 
</div><!-- Contents -->
</div><!-- Container -->
</div><!-- Wrapper -->
</main>
<footer>
</footer>

<script>
	// Catch Keyword 다른 키워드 더 보기 클릭시 바뀌는 코딩
	$(".btn_box").click(function (event) {
		var num = $(".btn_box .current").text();

		switch (num) {
			case "1":
				$(".btn_box .current").text("2");
				$(".slick-slide1").css("display", "none");
				$(".slick-slide2").css("display", "block");
				break;
			case "2":
				$(".btn_box .current").text("3");
				$(".slick-slide2").css("display", "none");
				$(".slick-slide3").css("display", "block");
				break;
			case "3":
				$(".btn_box .current").text("4");
				$(".slick-slide3").css("display", "none");
				$(".slick-slide4").css("display", "block");
				break;
			case "4":
				$(".btn_box .current").text("5");
				$(".slick-slide4").css("display", "none");
				$(".slick-slide5").css("display", "block");
				break;
			case "5":
				$(".btn_box .current").text("1");
				$(".slick-slide5").css("display", "none");
				$(".slick-slide1").css("display", "block");
				break;
			}		 		
	});
</script>

<%-- <c:if test="${empty list }">
 <strong>관리자가 없습니다.</strong>
</c:if>
<c:if test="${not empty list }">
 <c:forEach items="${list }" var="mdto">
 	<li>${mdto.ma_id }</li>
 	<li>${mdto.ma_passwd }</li>
 	<li>${mdto.ma_level }</li>
 	<li>${mdto.ma_name }</li>
 	<li>${mdto.ma_date }</li>
 </c:forEach>
</c:if> --%>
</body>
</html>