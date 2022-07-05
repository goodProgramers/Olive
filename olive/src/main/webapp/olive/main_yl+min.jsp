<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
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

.main_onlyone_wrap .slick-list {
    margin-right: -9px;
}

.slick-initialized .slick-slide {
    display: inline-block; /* block */
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

.main_onlyone_wrap .onlyone_box .txt {
    position: absolute;
    top: 50%;
    left: 15px;
    transform: translateY(-47%);
    text-align: left;
    color: #fff;
}

.main_onlyone_wrap .onlyone_box {
    overflow: hidden;
    display: block;
    position: relative;
    width: 334px;
    height: 145px;
    color: #000;
    text-align: center;
    border-radius: 4px;
}

.main_onlyone_wrap .onlyone_box img {
    width: 334px;
    z-index: 100;
}

.main_onlyone_wrap .onlyone_box .title {
    display: block;
    font-size: 20px;
    font-weight: 700;
    line-height: 26px;
}
</style>
<style>
.viewRk .curation_basket li .info dl dd, .viewRk .curation_basket li .info dl dt {
    letter-spacing: 0;
    margin-top: 0;
}

.viewRk .main_sub_tit {
    letter-spacing: 0;
    margin-bottom: 8px;
    line-height: 28px;
    height: 40px;
}

.viewRk {
    position: relative;
}



.viewRk .main_sub_tit strong .mBold {
    font-size: 27px;
    line-height: 40px;
}

.viewRk_topBox {
    position: absolute;
    right: 1px;
    top: 4px;
}


.viewRk_topBox .refreshBtn {
    margin-right: 12px;
    vertical-align: super;
}

.viewRk_topBox .refreshBtn .refreshTxt {
    padding-left: 19px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/curation/ico_refresh_circle.png) no-repeat top 0 left;
    background-size: 18px auto;
    color: #666;
    letter-spacing: 0;
    line-height: 20px;
}

.viewRk_topBox .viewRk_tab {
    display: inline-block;
}



.viewRk_topBox .viewRk_tab::after {
    content: '';
    display: block;
    clear: both;
}

.viewRk_topBox .viewRk_tab li {
    float: left;
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

.viewRk_topBox .viewRk_tab button {
    width: 24px;
    height: 24px;
    font-size: 14px;
    line-height: 24px;
    border-radius: 50%;
    color: #888;
    background: #fff;
}

.viewRk_topBox .viewRk_tab .act button {
    color: #fff;
    background: #2f3030;
}
/* 우측 업데이트, 1, 2번 까지 css 적용 */
.clearfix::after, .grid-row::after {
    clear: both;
}
.clearfix::after, .clearfix::before, .grid-row::after, .grid-row::before {
    display: table;
    content: '';
}
.clearfix::after, .clearfix::before, .grid-row::after, .grid-row::before {
    display: table;
    content: '';
}

.liveRankArea {
    height: 236px;
    overflow: hidden;
}
.viewRk .curation_basket {
    padding: 0;
    border-top: 1px solid #d8d8d8;
    border-bottom: 1px solid #d8d8d8;
    height: 236px;
    overflow: hidden;
}

.viewRk .viewRk_list {
    float: left;
    width: 50%;
}

.slick-slider {
    position: relative;
    display: block;
    -webkit-user-select: none;
    user-select: none;
    -webkit-touch-callout: none;
    touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}

.viewRk_nav {
    letter-spacing: 0;
    margin: 18px 0;
    padding-right: 20px;
}

.viewRk_nav li {
    width: 100%;
    padding: 0;
    font-size: 14px;
    border: 1px solid #fff;
    border-radius: 5px;
    height: 40px;
    line-height: 40px;
}

.viewRk .slick-list {
    height: min-content!important;
}

.slick-list {
    position: relative;
    display: block;
    overflow: hidden;
    margin: 0;
    padding: 0;
}



.viewRk .viewRk_single li {
    margin: 30px 0;
    width: 100%;
    padding: 0 40px 0 20px;
    position: relative;
    height: 236px;
    transition: ease .3s!important;
    opacity: 1!important;
}


.slick-initialized .slick-slide {
    display: block;
}   

.curation_basket li {
    float: left;
    width: 310px;
    padding: 0 5px 0 15px;
}

.viewRk_nav li a {
    padding: 0 20px;
    height: 40px;
    display: block;
    overflow: hidden;
    color: #777;
}

.curation_basket li>a:after {
    content: '';
    display: block;
    clear: both;
}

.viewRk_nav .rkNum {
    padding-right: 14px;
    font-size: 18px;
    color: #999;
    line-height: 40px;
}

.viewRk_nav .rkTxt {
    max-width: 90%;
    vertical-align: top;
    display: inline-block;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    line-height: 40px;
}

.viewRk_nav li.act {
    border: 1px solid #555;
}



.viewRk .viewRk_single li .viewRk_inner {
    transition: ease .3s!important;
    height: 236px;
    position: absolute;
    top: 236px;
    left: 0;
}



.viewRk .viewRk_single li.slick-active .viewRk_inner {
    top: 0;
}

.viewRk .curation_basket li .thum {
    width: 175px;
    text-align: left;
    position: absolute;
    top: 0;
    left: 20px;
}

.curation_basket li .thum {
    position: relative;
    float: left;
    width: 100px;
    cursor: pointer;
    text-align: center;
}

.viewRk .curation_basket li .thum>a {
    display: block;
    width: 175px;
    height: 175px;
    text-align: center;
}

.curation_basket li .thum .my {
    display: none;
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 40px;
    background-color: #fff;
    background-color: rgba(255,255,255,.8);
}

.viewRk .curation_basket li .thum img {
    max-width: 175px;
    max-height: 175px;
    height: 100%!important;
    object-fit: contain;
}

.curation_basket li .thum img {
    width: auto!important;
    max-width: 100px;
    height: auto!important;
    max-height: 100px;
}

.curation_basket li .thum .my .myCart {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_my_cart.png) no-repeat 50% 10px;
}
.curation_basket li .thum .my button {
    float: left;
    width: 50%;
    height: 40px;
}

.curation_basket li .thum .my button span {
    font-size: 0;
    line-height: 0;
}

.curation_basket li .thum .my .mySee {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_my_see1.png) no-repeat 50% 12px;
}

.viewRk .curation_basket li .info {
    width: 235px;
    height: 175px;
    padding-top: 0;
    margin-left: 215px;
    position: relative;
    display: table;
}

.curation_basket li .info {
    position: relative;
    width: 190px;
    height: 100px;
    padding-top: 7px;
    margin-left: 110px;
}

.curation_basket li .info>a {
    display: block;
}

.viewArea {
    margin-top: 4px;
}

.liveRankArea .viewArea>span {
    padding-left: 21px;
    background-position: center left;
}

.viewArea>span {
    padding-left: 25px;
    display: inline-block;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/curation/ico_viewEye.png) no-repeat center left 4px;
    background-size: 18px auto;
    font-size: 13px;
    color: #f27370;
    letter-spacing: 0;
    line-height: 15px;
}

.viewArea span .viewNum {
    font-weight: 700;
    display: inline-block;
    vertical-align: initial;
}

.viewRk .curation_basket .tx_brand {
    margin-top: 8px;
    color: #777;
    font-weight: 700;
    line-height: 15px;
}

.viewRk .curation_basket .tx_name {
    margin-top: 5px;
    color: #000;
    line-height: 18px;
    min-height: 36px;
}

.viewRk .curation_basket li .info dl dd, .viewRk .curation_basket li .info dl dt {
    letter-spacing: 0;
    margin-top: 0;
}
.curation_basket li .info .price {
    margin-top: 2px;
}

.viewRk .curation_basket li .info .price del {
    margin-top: 0;
    display: block;
    color: #777;
    line-height: 26px;
}
.curation_basket li .info .price del {
    padding-right: 2px;
    color: #b5b5b5;
    font-size: 12px;
}

.viewRk .curation_basket li .info .price del span {
    font-weight: 700;
}

.viewRk .curation_basket li .info .price>strong {
    margin-top: 0;
    display: block;
    line-height: 26px;
}
.curation_basket li .info .price strong {
    color: #e02020;
    font-weight: 500;
}

.viewRk .curation_basket li .info .price strong span {
    font-weight: 500;
    font-size: 20px;
}

.viewRk .curation_basket li .info .icon {
    position: relative;
    bottom: inherit;
}
.viewRk .curation_basket li .info dl dd, .viewRk .curation_basket li .info dl dt {
    letter-spacing: 0;
    margin-top: 0;
}

.curation_basket li .info .icon {
    position: absolute;
    bottom: 9px;
    left: 0;
}


.icon_flag {
    display: inline-block;
    width: 40px;
    height: 18px;
    border-radius: 9px;
    line-height: 17px!important;
    color: #fff!important;
    font-size: 12px!important;
    text-align: center;
    vertical-align: middle;
    text-decoration: none!important;
    margin: 0!important;
}

.icon_flag.sale {
    background-color: #f65c60;
}

.icon_flag.coupon {
    background-color: #9bce26;
}

.icon_flag.delivery {
    width: 60px;
    background-color: #f374b7;
}

.icon_flag.gift {
    background-color: #6fcff7;
}
.viewRk_nav li.act a {
    color: #333;
}

.hidde {
    display: none!important;
}
</style>

</head>
<body>
<header>
</header>

<main>
<div id="Wrapper">
<div id="Container">
<div id="Contents">

 <!-- Catch Keyword -->
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
					  <a href="product_catchKeyword.jsp" data-attr="홈^catchkeyword^캐치 블랙헤드" data-trk="/" tabindex="0">
						<div class="keyword_thumb">
							<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/8320749656199567580.jpg" alt="캐치 블랙헤드">
						</div>
						<div class="keyword_title"><strong>하루 1,000번 검색되는 블랙헤드</strong></div>
						<div class="keyword_sub_title">자고 일어나면 또 생기는 검은 점이 지긋지긋하다면</div>
					  </a>
					</li>
											
					<li class="keyword_items">
						<a href="product_catchKeyword.jsp" data-attr="홈^catchkeyword^캐치 스크럽" data-trk="/" tabindex="0">
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
						<a href="product_catchKeyword.jsp" data-attr="홈^catchkeyword^캐치 픽서" data-trk="/" tabindex="-1">
							<div class="keyword_thumb">
								<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/2226589363142953879.jpg" alt="캐치 픽서">
							</div>
							<div class="keyword_title"><strong>검색 1.5배 상승, 픽서</strong></div>
							<div class="keyword_sub_title">흐르는 메이크업에 가라앉는 머리, 픽서로 고정해요</div>
						</a>
					</li>
				
					<li class="keyword_items">
						<a href="product_catchKeyword.jsp" data-attr="홈^catchkeyword^캐치 제모" data-trk="/" tabindex="-1">
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
						<a href="product_catchKeyword.jsp" data-attr="홈^catchkeyword^캐치 선크림" data-trk="/" tabindex="-1">
							<div class="keyword_thumb">
								<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/8248614600041045704.jpg" alt="캐치 선크림">
							</div>
							<div class="keyword_title"><strong>6월 3주 검색 1위, 선크림</strong></div>
							<div class="keyword_sub_title">잘 고른 선크림 하나면 자외선도 무섭지 않아요</div>
						</a>
					</li>
				
					<li class="keyword_items">
						<a href="product_catchKeyword.jsp" data-attr="홈^catchkeyword^캐치 틴트" data-trk="/" tabindex="-1">
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
						<a href="product_catchKeyword.jsp" data-attr="홈^catchkeyword^캐치 스팟" data-trk="/" tabindex="-1">
							<div class="keyword_thumb">
								<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/2809654983182398312.jpg" alt="캐치 스팟">
							</div>
							<div class="keyword_title"><strong>일 년 내내 검색되는 '스팟'</strong></div>
							<div class="keyword_sub_title">비상등이 켜진 고민, 빠르게 진정하는 꿀템 소개해요</div>
						</a>
					</li>
				
					<li class="keyword_items">
						<a href="product_catchKeyword.jsp" data-attr="홈^catchkeyword^캐치 여름쿨" data-trk="/" tabindex="-1">
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
						<a href="product_catchKeyword.jsp" data-attr="홈^catchkeyword^캐치 각질" data-trk="/" tabindex="-1">
							<div class="keyword_thumb">
								<img src="https://image.oliveyoung.co.kr/uploads/images/display/90000010001/340/6260490587396797951.jpg" alt="캐치 각질">
							</div>
							<div class="keyword_title"><strong>하루에 천 번 검색되는 각질</strong></div>
							<div class="keyword_sub_title">묵은 각질 순삭! 매끈한 피부 관리 어렵지 않아요</div>
						</a>
					</li>
				
					<li class="keyword_items">
						<a href="product_catchKeyword.jsp" data-attr="홈^catchkeyword^캐치 볼터치" data-trk="/" tabindex="-1">
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
	</div><!-- catch_keyword_slide -->
								
    <div class="btn_box">
		<button type="button" class="btn" id="btn_catch_keyword" data-attr="홈^catchkeyword_더보기^더보기" data-trk="/">
			다른 키워드 더보기
		  <em class="num" data-attr="홈^catchkeyword_더보기^더보기" data-trk="/">
			 <span class="current" data-attr="홈^catchkeyword_더보기^더보기" data-trk="/" data-current-page="1" data-total-page="5">1</span>5
		  </em>
		</button>
    </div><!-- btn_box -->
								
 </div><!-- catch_keyword_wrap  -->
  
 <!-- 오직 올리브영에서만 -->
 <div class="main_onlyone_wrap">
   <h3 class="main_sub_tit"><a href="#">오직 올리브영에서만</a></h3><!-- 온리원 사이트로 넘기기 -->
					
	<div class="banner_wrap slick_slider slick-initialized slick-slider slick-dotted" id="OnlyoneSlider" role="toolbar">
		<div aria-live="polite" class="slick-list draggable">
			<div class="slick-track onlyoneslick" role="listbox" style="opacity: 1; width: 4116px;">
			
			<c:if test="${not empty mainOnlyoneList }">
				 <c:forEach items="${mainOnlyoneList }" var="onlyonedto">
				 	<div class="slick-slide slick-cloned onlyoneimgdiv" data-slick-index="-3" aria-hidden="true" style="width: 343px;">
				 	   <a href="#" class="onlyone_box">
				 	   	 <img src="${onlyonedto.exi_img }" alt="${onlyonedto.ex_name }"> 
				 	   	 <div class="txt" style="color:#000000">
				 	   	 		<strong class="title">${onlyonedto.exi_title }</strong>
								<span class="desc">${onlyonedto.exi_desc }</span>
						 </div><!-- txt -->
				 	   </a>
 					</div><!-- slick-slide slick-cloned -->	
 				</c:forEach>
			</c:if>
			
		</div><!-- slick-track  -->
	</div><!-- slick-list draggable -->

	<ul class="slick-dots" style="display: block;" role="tablist">
	  <li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation30" id="slick-slide30">
	    <button class="onlyonebtn" type="button" data-role="none" role="button" tabindex="0">1</button>
	  </li>
	  
	  <li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation31" id="slick-slide31" class="">
	  <button type="button" data-role="none" role="button" tabindex="0">2</button>
	  </li>
	</ul>
	
  </div><!-- OnlyoneSlider -->
 </div><!-- main_onlyone_wrap -->
 
 <div class="viewRk" style="">
      <h3 class="main_sub_tit">
         <strong>실시간 <span class="mBold">View</span> 랭킹
         </strong>
      </h3>
      <div class="viewRk_topBox">
         <a href="javascript:;" class="refreshBtn"><span
            class="refreshTxt"
            onclick="javascript:common.wlog('home_realtime_update')">업데이트</span></a>
         <ul class="viewRk_tab">
            <li class=""><button>1</button></li>
            <li class="act"><button>2</button></li>
         </ul>
      </div>
      <div class="liveRankArea" id="liveRankArea">
         <div class="viewRk_depth1 curation_basket clearfix">
            <ul class="viewRk_list viewRk_single slick-initialized slick-slider">
               <div aria-live="polite" class="slick-list draggable" >
                  <div class="slick-track" role="listbox" style="opacity: 1; width: 5100px;">
                     <li style="width: 510px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
                        class="slick-slide" data-slick-index="0" aria-hidden="true"
                        tabindex="-1" role="option" aria-describedby="slick-slide170">
                        <div class="viewRk_inner">
                           <div class="thum" data-ref-goodsno="A000000125955"
                              data-ref-itemno="8809625245498" data-egcode="" data-egrank="1"
                              data-dscode="home_realtime_product_1">
                              <a href="javascript:;"
                                 data-attr="홈^실시간VIEW랭킹^[NEW] 롬앤 쥬시 래스팅 틴트^1"
                                 data-ref-goodsno="A000000125955"
                                 onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000125955', '', 'ee-productClick', '홈_실시간VIEW랭킹', '1');"
                                 data-impression="A000000125955^홈_실시간VIEW랭킹^1"
                                 data-impression-visibility="1" tabindex="-1"> <img
                                 src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0012/A00000012595523ko.jpg?l=ko"
                                 alt="[NEW] 롬앤 쥬시 래스팅 틴트" onerror="common.errorImg(this);">
                              </a>
                              <div class="my">
                                 <button type="button" class="myCart cartBtnRecoBell"
                                    tabindex="-1">
                                    <span>장바구니</span>
                                 </button>
                                 <button type="button" class="mySee btn_zzim" tabindex="-1">
                                    <span>찜하기전</span>
                                 </button>
                              </div>
                           </div>
                           <div class="info">
                              <a href="javascript:;" class="a_detail"
                                 data-ref-goodsno="A000000125955"
                                 data-ref-itemno="8809625245498" data-egcode=""
                                 data-egrank="1" data-dscode="home_realtime_product_1"
                                 data-attr="홈^실시간VIEW랭킹^[NEW] 롬앤 쥬시 래스팅 틴트^1" tabindex="-1"
                                 onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000125955&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;1&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_1&quot;);common.link.moveGoodsDetailCuration(&quot;A000000125955&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;1&quot; ,&quot;Home_Live_Rank&quot;); return false;"
                                 name="Home_Live_Rank">
                                 <div class="viewArea">
                                    <span><span class="viewNum">899</span>명이 보고있어요</span>
                                 </div>
                                 <dl>
                                    <dt>
                                       <p class="tx_brand">롬앤</p>
                                       <p class="tx_name">[NEW] 롬앤 쥬시 래스팅 틴트</p>
                                    </dt>
                                    <dd class="price">
                                       <del>
                                          9,900<span>원</span>
                                       </del>
                                       <strong><span>7,400</span>원</strong>
                                    </dd>
                                    <dd class="icon">
                                       <span class="icon_flag sale">세일</span> <span
                                          class="icon_flag coupon">쿠폰</span> <span
                                          class="icon_flag gift">증정</span> <span
                                          class="icon_flag delivery">오늘드림</span>
                                    </dd>
                                 </dl>
                              </a>
                           </div>
                        </div>
                     </li>
                     <li
                        style="width: 510px; position: relative; left: -510px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
                        class="slick-slide" data-slick-index="1" aria-hidden="true"
                        tabindex="-1" role="option" aria-describedby="slick-slide171">
                        <div class="viewRk_inner">
                           <div class="thum" data-ref-goodsno="A000000169069"
                              data-ref-itemno="8809013347025" data-egcode="" data-egrank="2"
                              data-dscode="home_realtime_product_2">
                              <a href="javascript:;"
                                 data-attr="홈^실시간VIEW랭킹^[지현꿍pick] 에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+45ml 추가증정)^2"
                                 data-ref-goodsno="A000000169069"
                                 onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000169069', '', 'ee-productClick', '홈_실시간VIEW랭킹', '2');"
                                 data-impression="A000000169069^홈_실시간VIEW랭킹^2"
                                 data-impression-visibility="1" tabindex="-1"> <img
                                 src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016906902ko.jpg?l=ko"
                                 alt="[지현꿍pick] 에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+45ml 추가증정)"
                                 onerror="common.errorImg(this);">
                              </a>
                              <div class="my">
                                 <button type="button" class="myCart cartBtnRecoBell"
                                    tabindex="-1">
                                    <span>장바구니</span>
                                 </button>
                                 <button type="button" class="mySee btn_zzim" tabindex="-1">
                                    <span>찜하기전</span>
                                 </button>
                              </div>
                           </div>
                           <div class="info">
                              <a href="javascript:;" class="a_detail"
                                 data-ref-goodsno="A000000169069"
                                 data-ref-itemno="8809013347025" data-egcode=""
                                 data-egrank="2" data-dscode="home_realtime_product_2"
                                 data-attr="홈^실시간VIEW랭킹^[지현꿍pick] 에스트라 아토베리어365 하이드로 수딩크림 60ml 기획(+45ml 추가증정)^2"
                                 tabindex="-1"
                                 onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000169069&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;2&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_2&quot;);common.link.moveGoodsDetailCuration(&quot;A000000169069&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;2&quot; ,&quot;Home_Live_Rank&quot;); return false;"
                                 name="Home_Live_Rank">
                                 <div class="viewArea">
                                    <span><span class="viewNum">895</span>명이 보고있어요</span>
                                 </div>
                                 <dl>
                                    <dt>
                                       <p class="tx_brand">에스트라</p>
                                       <p class="tx_name">[지현꿍pick] 에스트라 아토베리어365 하이드로 수딩크림
                                          60ml 기획(+45ml 추가증정)</p>
                                    </dt>
                                    <dd class="price">
                                       <del>
                                          33,000<span>원</span>
                                       </del>
                                       <strong><span>23,700</span>원</strong>
                                    </dd>
                                    <dd class="icon">
                                       <span class="icon_flag sale">세일</span> <span
                                          class="icon_flag coupon">쿠폰</span> <span
                                          class="icon_flag delivery">오늘드림</span>
                                    </dd>
                                 </dl>
                              </a>
                           </div>
                        </div>
                     </li>
                     <li
                        style="width: 510px; position: relative; left: -1020px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
                        class="slick-slide" data-slick-index="2" aria-hidden="true"
                        tabindex="-1" role="option" aria-describedby="slick-slide172">
                        <div class="viewRk_inner">
                           <div class="thum" data-ref-goodsno="A000000148924"
                              data-ref-itemno="8809738606018" data-egcode="" data-egrank="3"
                              data-dscode="home_realtime_product_3">
                              <a href="javascript:;"
                                 data-attr="홈^실시간VIEW랭킹^[레오제이 Pick] 웨이크메이크 소프트 블러링 아이팔레트 6color (래쉬앰플 정품증정)^3"
                                 data-ref-goodsno="A000000148924"
                                 onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000148924', '', 'ee-productClick', '홈_실시간VIEW랭킹', '3');"
                                 data-impression="A000000148924^홈_실시간VIEW랭킹^3"
                                 data-impression-visibility="1" tabindex="-1"> <img
                                 src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014892436ko.jpg?l=ko"
                                 alt="[레오제이 Pick] 웨이크메이크 소프트 블러링 아이팔레트 6color (래쉬앰플 정품증정)"
                                 onerror="common.errorImg(this);">
                              </a>
                              <div class="my">
                                 <button type="button" class="myCart cartBtnRecoBell"
                                    tabindex="-1">
                                    <span>장바구니</span>
                                 </button>
                                 <button type="button" class="mySee btn_zzim" tabindex="-1">
                                    <span>찜하기전</span>
                                 </button>
                              </div>
                           </div>
                           <div class="info">
                              <a href="javascript:;" class="a_detail"
                                 data-ref-goodsno="A000000148924"
                                 data-ref-itemno="8809738606018" data-egcode=""
                                 data-egrank="3" data-dscode="home_realtime_product_3"
                                 data-attr="홈^실시간VIEW랭킹^[레오제이 Pick] 웨이크메이크 소프트 블러링 아이팔레트 6color (래쉬앰플 정품증정)^3"
                                 tabindex="-1"
                                 onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000148924&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;3&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_3&quot;);common.link.moveGoodsDetailCuration(&quot;A000000148924&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;3&quot; ,&quot;Home_Live_Rank&quot;); return false;"
                                 name="Home_Live_Rank">
                                 <div class="viewArea">
                                    <span><span class="viewNum">762</span>명이 보고있어요</span>
                                 </div>
                                 <dl>
                                    <dt>
                                       <p class="tx_brand">웨이크메이크</p>
                                       <p class="tx_name">[레오제이 Pick] 웨이크메이크 소프트 블러링 아이팔레트
                                          6color (래쉬앰플 정품증정)</p>
                                    </dt>
                                    <dd class="price">
                                       <del>
                                          32,000<span>원</span>
                                       </del>
                                       <strong><span>20,800</span>원</strong>
                                    </dd>
                                    <dd class="icon">
                                       <span class="icon_flag sale">세일</span> <span
                                          class="icon_flag coupon">쿠폰</span> <span
                                          class="icon_flag gift">증정</span> <span
                                          class="icon_flag delivery">오늘드림</span>
                                    </dd>
                                 </dl>
                              </a>
                           </div>
                        </div>
                     </li>
                     <li
                        style="width: 510px; position: relative; left: -1530px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
                        class="slick-slide" data-slick-index="3" aria-hidden="true"
                        tabindex="-1" role="option" aria-describedby="slick-slide173">
                        <div class="viewRk_inner">
                           <div class="thum" data-ref-goodsno="A000000158893"
                              data-ref-itemno="8809625245290" data-egcode="" data-egrank="4"
                              data-dscode="home_realtime_product_4">
                              <a href="javascript:;"
                                 data-attr="홈^실시간VIEW랭킹^[시드니PICK] 롬앤 듀이풀 워터 틴트^4"
                                 data-ref-goodsno="A000000158893"
                                 onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000158893', '', 'ee-productClick', '홈_실시간VIEW랭킹', '4');"
                                 data-impression="A000000158893^홈_실시간VIEW랭킹^4"
                                 data-impression-visibility="1" tabindex="-1"> <img
                                 src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015889304ko.jpg?l=ko"
                                 alt="[시드니PICK] 롬앤 듀이풀 워터 틴트" onerror="common.errorImg(this);">
                              </a>
                              <div class="my">
                                 <button type="button" class="myCart cartBtnRecoBell"
                                    tabindex="-1">
                                    <span>장바구니</span>
                                 </button>
                                 <button type="button" class="mySee btn_zzim" tabindex="-1">
                                    <span>찜하기전</span>
                                 </button>
                              </div>
                           </div>
                           <div class="info">
                              <a href="javascript:;" class="a_detail"
                                 data-ref-goodsno="A000000158893"
                                 data-ref-itemno="8809625245290" data-egcode=""
                                 data-egrank="4" data-dscode="home_realtime_product_4"
                                 data-attr="홈^실시간VIEW랭킹^[시드니PICK] 롬앤 듀이풀 워터 틴트^4"
                                 tabindex="-1"
                                 onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000158893&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;4&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_4&quot;);common.link.moveGoodsDetailCuration(&quot;A000000158893&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;4&quot; ,&quot;Home_Live_Rank&quot;); return false;"
                                 name="Home_Live_Rank">
                                 <div class="viewArea">
                                    <span><span class="viewNum">727</span>명이 보고있어요</span>
                                 </div>
                                 <dl>
                                    <dt>
                                       <p class="tx_brand">롬앤</p>
                                       <p class="tx_name">[시드니PICK] 롬앤 듀이풀 워터 틴트</p>
                                    </dt>
                                    <dd class="price">
                                       <del>
                                          13,000<span>원</span>
                                       </del>
                                       <strong><span>7,900</span>원</strong>
                                    </dd>
                                    <dd class="icon">
                                       <span class="icon_flag sale">세일</span> <span
                                          class="icon_flag coupon">쿠폰</span> <span
                                          class="icon_flag gift">증정</span> <span
                                          class="icon_flag delivery">오늘드림</span>
                                    </dd>
                                 </dl>
                              </a>
                           </div>
                        </div>
                     </li>
                     <li
                        style="width: 510px; position: relative; left: -2040px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
                        class="slick-slide" data-slick-index="4" aria-hidden="true"
                        tabindex="-1" role="option" aria-describedby="slick-slide174">
                        <div class="viewRk_inner">
                           <div class="thum" data-ref-goodsno="A000000159510"
                              data-ref-itemno="8809625245511" data-egcode="" data-egrank="5"
                              data-dscode="home_realtime_product_5">
                              <span class="newOyflag today" style="display: none;"><em>오특</em></span>
                              <span class="newOyflag time" style="">
                                 <div class="main-today">
                                    <div class="timer ready">
                                       <span class="nums h"> <span class="num"
                                          data-timer-val="0">0</span> <span class="num"
                                          data-timer-val="1">1</span>
                                       </span> <span class="nums m"> <span class="num"
                                          data-timer-val="3">3</span> <span class="num"
                                          data-timer-val="2">2</span>
                                       </span>
                                    </div>
                                 </div>
                              </span> <a href="javascript:;"
                                 data-attr="홈^실시간VIEW랭킹^[NEW] 롬앤 무드 페블 네일 23종^5"
                                 data-ref-goodsno="A000000159510"
                                 onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000159510', '', 'ee-productClick', '홈_실시간VIEW랭킹', '5');"
                                 data-impression="A000000159510^홈_실시간VIEW랭킹^5"
                                 data-impression-visibility="1" tabindex="-1"> <img
                                 src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015951001ko.jpg?l=ko"
                                 alt="[NEW] 롬앤 무드 페블 네일 23종" onerror="common.errorImg(this);">
                              </a>
                              <div class="my">
                                 <button type="button" class="myCart cartBtnRecoBell"
                                    tabindex="-1">
                                    <span>장바구니</span>
                                 </button>
                                 <button type="button" class="mySee btn_zzim" tabindex="-1">
                                    <span>찜하기전</span>
                                 </button>
                              </div>
                           </div>
                           <div class="info">
                              <a href="javascript:;" class="a_detail"
                                 data-ref-goodsno="A000000159510"
                                 data-ref-itemno="8809625245511" data-egcode=""
                                 data-egrank="5" data-dscode="home_realtime_product_5"
                                 data-attr="홈^실시간VIEW랭킹^[NEW] 롬앤 무드 페블 네일 23종^5" tabindex="-1"
                                 onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000159510&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;5&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_5&quot;);common.link.moveGoodsDetailCuration(&quot;A000000159510&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;5&quot; ,&quot;Home_Live_Rank&quot;); return false;"
                                 name="Home_Live_Rank">
                                 <div class="viewArea">
                                    <span><span class="viewNum">692</span>명이 보고있어요</span>
                                 </div>
                                 <dl>
                                    <dt>
                                       <p class="tx_brand">롬앤</p>
                                       <p class="tx_name">[NEW] 롬앤 무드 페블 네일 23종</p>
                                    </dt>
                                    <dd class="price">
                                       <del>
                                          8,000<span>원</span>
                                       </del>
                                       <strong><span>6,000</span>원</strong>
                                    </dd>
                                    <dd class="icon">
                                       <span class="icon_flag present">2+1</span> <span
                                          class="icon_flag coupon">쿠폰</span> <span
                                          class="icon_flag gift">증정</span> <span
                                          class="icon_flag delivery">오늘드림</span>
                                    </dd>
                                 </dl>
                              </a>
                           </div>
                        </div>
                     </li>
                     <li
                        style="width: 510px; position: relative; left: -2550px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
                        class="slick-slide" data-slick-index="5" aria-hidden="true"
                        tabindex="-1" role="option" aria-describedby="slick-slide175">
                        <div class="viewRk_inner">
                           <div class="thum" data-ref-goodsno="A000000148390"
                              data-ref-itemno="8809625245641" data-egcode="" data-egrank="6"
                              data-dscode="home_realtime_product_6">
                              <a href="javascript:;"
                                 data-attr="홈^실시간VIEW랭킹^[단독기획] 롬앤 베러 댄 팔레트(브러쉬 증정)^6"
                                 data-ref-goodsno="A000000148390"
                                 onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000148390', '', 'ee-productClick', '홈_실시간VIEW랭킹', '6');"
                                 data-impression="A000000148390^홈_실시간VIEW랭킹^6"
                                 data-impression-visibility="1" tabindex="-1"> <img
                                 src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014839017ko.jpg?l=ko"
                                 alt="[단독기획] 롬앤 베러 댄 팔레트(브러쉬 증정)"
                                 onerror="common.errorImg(this);">
                              </a>
                              <div class="my">
                                 <button type="button" class="myCart cartBtnRecoBell"
                                    tabindex="-1">
                                    <span>장바구니</span>
                                 </button>
                                 <button type="button" class="mySee btn_zzim" tabindex="-1">
                                    <span>찜하기전</span>
                                 </button>
                              </div>
                           </div>
                           <div class="info">
                              <a href="javascript:;" class="a_detail"
                                 data-ref-goodsno="A000000148390"
                                 data-ref-itemno="8809625245641" data-egcode=""
                                 data-egrank="6" data-dscode="home_realtime_product_6"
                                 data-attr="홈^실시간VIEW랭킹^[단독기획] 롬앤 베러 댄 팔레트(브러쉬 증정)^6"
                                 tabindex="-1"
                                 onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000148390&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;6&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_6&quot;);common.link.moveGoodsDetailCuration(&quot;A000000148390&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;6&quot; ,&quot;Home_Live_Rank&quot;); return false;"
                                 name="Home_Live_Rank">
                                 <div class="viewArea">
                                    <span><span class="viewNum">651</span>명이 보고있어요</span>
                                 </div>
                                 <dl>
                                    <dt>
                                       <p class="tx_brand">롬앤</p>
                                       <p class="tx_name">[단독기획] 롬앤 베러 댄 팔레트(브러쉬 증정)</p>
                                    </dt>
                                    <dd class="price">
                                       <del>
                                          30,000<span>원</span>
                                       </del>
                                       <strong><span>18,900</span>원</strong>
                                    </dd>
                                    <dd class="icon">
                                       <span class="icon_flag sale">세일</span> <span
                                          class="icon_flag coupon">쿠폰</span> <span
                                          class="icon_flag gift">증정</span> <span
                                          class="icon_flag delivery">오늘드림</span>
                                    </dd>
                                 </dl>
                              </a>
                           </div>
                        </div>
                     </li>
                     <li
                        style="width: 510px; position: relative; left: -3060px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
                        class="slick-slide" data-slick-index="6" aria-hidden="true"
                        tabindex="-1" role="option" aria-describedby="slick-slide176">
                        <div class="viewRk_inner">
                           <div class="thum" data-ref-goodsno="A000000167330"
                              data-ref-itemno="8809803530064" data-egcode="" data-egrank="7"
                              data-dscode="home_realtime_product_7">
                              <a href="javascript:;"
                                 data-attr="홈^실시간VIEW랭킹^[배쓰밤증정/지성용]한율 부들밤 말끔피지 모공팩 100ml(+20ml+브러쉬)^7"
                                 data-ref-goodsno="A000000167330"
                                 onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000167330', '', 'ee-productClick', '홈_실시간VIEW랭킹', '7');"
                                 data-impression="A000000167330^홈_실시간VIEW랭킹^7"
                                 data-impression-visibility="1" tabindex="-1"> <img
                                 src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016733004ko.jpg?l=ko"
                                 alt="[배쓰밤증정/지성용]한율 부들밤 말끔피지 모공팩 100ml(+20ml+브러쉬)"
                                 onerror="common.errorImg(this);">
                              </a>
                              <div class="my">
                                 <button type="button" class="myCart cartBtnRecoBell"
                                    tabindex="-1">
                                    <span>장바구니</span>
                                 </button>
                                 <button type="button" class="mySee btn_zzim" tabindex="-1">
                                    <span>찜하기전</span>
                                 </button>
                              </div>
                           </div>
                           <div class="info">
                              <a href="javascript:;" class="a_detail"
                                 data-ref-goodsno="A000000167330"
                                 data-ref-itemno="8809803530064" data-egcode=""
                                 data-egrank="7" data-dscode="home_realtime_product_7"
                                 data-attr="홈^실시간VIEW랭킹^[배쓰밤증정/지성용]한율 부들밤 말끔피지 모공팩 100ml(+20ml+브러쉬)^7"
                                 tabindex="-1"
                                 onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000167330&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;7&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_7&quot;);common.link.moveGoodsDetailCuration(&quot;A000000167330&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;7&quot; ,&quot;Home_Live_Rank&quot;); return false;"
                                 name="Home_Live_Rank">
                                 <div class="viewArea">
                                    <span><span class="viewNum">545</span>명이 보고있어요</span>
                                 </div>
                                 <dl>
                                    <dt>
                                       <p class="tx_brand">한율</p>
                                       <p class="tx_name">[배쓰밤증정/지성용]한율 부들밤 말끔피지 모공팩
                                          100ml(+20ml+브러쉬)</p>
                                    </dt>
                                    <dd class="price">
                                       <del>
                                          27,000<span>원</span>
                                       </del>
                                       <strong><span>19,000</span>원</strong>
                                    </dd>
                                    <dd class="icon">
                                       <span class="icon_flag sale">세일</span> <span
                                          class="icon_flag coupon">쿠폰</span> <span
                                          class="icon_flag gift">증정</span> <span
                                          class="icon_flag delivery">오늘드림</span>
                                    </dd>
                                 </dl>
                              </a>
                           </div>
                        </div>
                     </li>
                     <li
                        style="width: 510px; position: relative; left: -3570px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
                        class="slick-slide" data-slick-index="7" aria-hidden="true"
                        tabindex="-1" role="option" aria-describedby="slick-slide177">
                        <div class="viewRk_inner">
                           <div class="thum" data-ref-goodsno="A000000168857"
                              data-ref-itemno="8809438619219" data-egcode="" data-egrank="8"
                              data-dscode="home_realtime_product_8">
                              <a href="javascript:;"
                                 data-attr="홈^실시간VIEW랭킹^[단독기획] 피카소 메이크업 스파츌라 기획(+스펀지 4P, 메쉬파우치)^8"
                                 data-ref-goodsno="A000000168857"
                                 onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000168857', '', 'ee-productClick', '홈_실시간VIEW랭킹', '8');"
                                 data-impression="A000000168857^홈_실시간VIEW랭킹^8"
                                 data-impression-visibility="1" tabindex="-1"> <img
                                 src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016885702ko.jpg?l=ko"
                                 alt="[단독기획] 피카소 메이크업 스파츌라 기획(+스펀지 4P, 메쉬파우치)"
                                 onerror="common.errorImg(this);">
                              </a>
                              <div class="my">
                                 <button type="button" class="myCart cartBtnRecoBell"
                                    tabindex="-1">
                                    <span>장바구니</span>
                                 </button>
                                 <button type="button" class="mySee btn_zzim" tabindex="-1">
                                    <span>찜하기전</span>
                                 </button>
                              </div>
                           </div>
                           <div class="info">
                              <a href="javascript:;" class="a_detail"
                                 data-ref-goodsno="A000000168857"
                                 data-ref-itemno="8809438619219" data-egcode=""
                                 data-egrank="8" data-dscode="home_realtime_product_8"
                                 data-attr="홈^실시간VIEW랭킹^[단독기획] 피카소 메이크업 스파츌라 기획(+스펀지 4P, 메쉬파우치)^8"
                                 tabindex="-1"
                                 onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000168857&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;8&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_8&quot;);common.link.moveGoodsDetailCuration(&quot;A000000168857&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;8&quot; ,&quot;Home_Live_Rank&quot;); return false;"
                                 name="Home_Live_Rank">
                                 <div class="viewArea">
                                    <span><span class="viewNum">539</span>명이 보고있어요</span>
                                 </div>
                                 <dl>
                                    <dt>
                                       <p class="tx_brand">피카소</p>
                                       <p class="tx_name">[단독기획] 피카소 메이크업 스파츌라 기획(+스펀지 4P,
                                          메쉬파우치)</p>
                                    </dt>
                                    <dd class="price">
                                       <del>
                                          19,000<span>원</span>
                                       </del>
                                       <strong><span>14,900</span>원</strong>
                                    </dd>
                                    <dd class="icon">
                                       <span class="icon_flag sale">세일</span> <span
                                          class="icon_flag delivery">오늘드림</span>
                                    </dd>
                                 </dl>
                              </a>
                           </div>
                        </div>
                     </li>
                     <li
                        style="width: 510px; position: relative; left: -4080px; top: 0px; z-index: 998; opacity: 0; transition: opacity 100ms ease 0s;"
                        class="slick-slide" data-slick-index="8" aria-hidden="true"
                        tabindex="-1" role="option" aria-describedby="slick-slide178">
                        <div class="viewRk_inner">
                           <div class="thum" data-ref-goodsno="A000000169264"
                              data-ref-itemno="8809765940628" data-egcode="" data-egrank="9"
                              data-dscode="home_realtime_product_9">
                              <a href="javascript:;"
                                 data-attr="홈^실시간VIEW랭킹^트리셀 데이/나이트 콜라겐 샴푸 2종 기획세트[360ml+360ml]^9"
                                 data-ref-goodsno="A000000169264"
                                 onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000169264', '', 'ee-productClick', '홈_실시간VIEW랭킹', '9');"
                                 data-impression="A000000169264^홈_실시간VIEW랭킹^9"
                                 data-impression-visibility="1" tabindex="-1"> <img
                                 src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016926403ko.jpg?l=ko"
                                 alt="트리셀 데이/나이트 콜라겐 샴푸 2종 기획세트[360ml+360ml]"
                                 onerror="common.errorImg(this);">
                              </a>
                              <div class="my">
                                 <button type="button" class="myCart cartBtnRecoBell"
                                    tabindex="-1">
                                    <span>장바구니</span>
                                 </button>
                                 <button type="button" class="mySee btn_zzim" tabindex="-1">
                                    <span>찜하기전</span>
                                 </button>
                              </div>
                           </div>
                           <div class="info">
                              <a href="javascript:;" class="a_detail"
                                 data-ref-goodsno="A000000169264"
                                 data-ref-itemno="8809765940628" data-egcode=""
                                 data-egrank="9" data-dscode="home_realtime_product_9"
                                 data-attr="홈^실시간VIEW랭킹^트리셀 데이/나이트 콜라겐 샴푸 2종 기획세트[360ml+360ml]^9"
                                 tabindex="-1"
                                 onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000169264&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;9&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_9&quot;);common.link.moveGoodsDetailCuration(&quot;A000000169264&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;9&quot; ,&quot;Home_Live_Rank&quot;); return false;"
                                 name="Home_Live_Rank">
                                 <div class="viewArea">
                                    <span><span class="viewNum">526</span>명이 보고있어요</span>
                                 </div>
                                 <dl>
                                    <dt>
                                       <p class="tx_brand">트리셀</p>
                                       <p class="tx_name">트리셀 데이/나이트 콜라겐 샴푸 2종
                                          기획세트[360ml+360ml]</p>
                                    </dt>
                                    <dd class="price">
                                       <strong><span>24,000</span>원</strong>
                                    </dd>
                                    <dd class="icon"></dd>
                                 </dl>
                              </a>
                           </div>
                        </div>
                     </li>
                     <li
                        style="width: 510px; position: relative; left: -4590px; top: 0px; z-index: 999; opacity: 1;"
                        class="slick-slide slick-current slick-active"
                        data-slick-index="9" aria-hidden="false" tabindex="-1"
                        role="option" aria-describedby="slick-slide179">
                        <div class="viewRk_inner">
                           <div class="thum" data-ref-goodsno="A000000164072"
                              data-ref-itemno="8809625245573" data-egcode=""
                              data-egrank="10" data-dscode="home_realtime_product_10">
                              <a href="javascript:;"
                                 data-attr="홈^실시간VIEW랭킹^[후니언PICK] 롬앤 누 제로 쿠션 (본품+미니쿠션 증정)^10"
                                 data-ref-goodsno="A000000164072"
                                 onclick="javascript: gtm.goods.callGoodsGtmInfo('A000000164072', '', 'ee-productClick', '홈_실시간VIEW랭킹', '10');"
                                 data-impression="A000000164072^홈_실시간VIEW랭킹^10"
                                 data-impression-visibility="1" tabindex="0"> <img
                                 src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016407206ko.jpg?l=ko"
                                 alt="[후니언PICK] 롬앤 누 제로 쿠션 (본품+미니쿠션 증정)"
                                 onerror="common.errorImg(this);">
                              </a>
                              <div class="my">
                                 <button type="button" class="myCart cartBtnRecoBell"
                                    tabindex="0">
                                    <span>장바구니</span>
                                 </button>
                                 <button type="button" class="mySee btn_zzim" tabindex="0">
                                    <span>찜하기전</span>
                                 </button>
                              </div>
                           </div>
                           <div class="info">
                              <a href="javascript:;" class="a_detail"
                                 data-ref-goodsno="A000000164072"
                                 data-ref-itemno="8809625245573" data-egcode=""
                                 data-egrank="10" data-dscode="home_realtime_product_10"
                                 data-attr="홈^실시간VIEW랭킹^[후니언PICK] 롬앤 누 제로 쿠션 (본품+미니쿠션 증정)^10"
                                 tabindex="0"
                                 onclick="javascript:gtm.goods.callGoodsGtmInfo(&quot;A000000164072&quot;, null,&quot;ee-productClick&quot;,&quot;홈_실시간VIEW랭킹&quot;, &quot;10&quot;);common.wlog(&quot;home_real_time_rank&quot;);common.wlog(&quot;home_realtime_product_10&quot;);common.link.moveGoodsDetailCuration(&quot;A000000164072&quot;, &quot;undefined&quot;,&quot;home_real_time_rank&quot; , &quot;pc_main_04_c&quot;,&quot;&quot; ,&quot;10&quot; ,&quot;Home_Live_Rank&quot;); return false;"
                                 name="Home_Live_Rank">
                                 <div class="viewArea">
                                    <span><span class="viewNum">494</span>명이 보고있어요</span>
                                 </div>
                                 <dl>
                                    <dt>
                                       <p class="tx_brand">롬앤</p>
                                       <p class="tx_name">[후니언PICK] 롬앤 누 제로 쿠션 (본품+미니쿠션 증정)</p>
                                    </dt>
                                    <dd class="price">
                                       <del>
                                          25,000<span>원</span>
                                       </del>
                                       <strong><span>20,900</span>원</strong>
                                    </dd>
                                    <dd class="icon">
                                       <span class="icon_flag sale">세일</span> <span
                                          class="icon_flag coupon">쿠폰</span> <span
                                          class="icon_flag gift">증정</span> <span
                                          class="icon_flag delivery">오늘드림</span>
                                    </dd>
                                 </dl>
                              </a>
                           </div>
                        </div>
                     </li>
                  </div>
               </div>
            </ul>
            <ul class="viewRk_list viewRk_nav">
               <li class="li_rank_txt act" style="display: list-item;"><a href="javascript:;"><span
                     class="rkNum act">1</span><span class="rkTxt">[NEW] 롬앤 쥬시 래스팅
                        틴트</span></a></li>
               <li class="li_rank_txt" style="display: list-item;"><a href="javascript:;"><span
                     class="rkNum">2</span><span class="rkTxt">[지현꿍pick] 에스트라
                        아토베리어365 하이드로 수딩크림 60ml 기획(+45ml 추가증정)</span></a></li>
               <li class="li_rank_txt" style="display: list-item;"><a href="javascript:;"><span
                     class="rkNum">3</span><span class="rkTxt">[레오제이 Pick]
                        웨이크메이크 소프트 블러링 아이팔레트 6color (래쉬앰플 정품증정)</span></a></li>
               <li class="li_rank_txt" style="display: list-item;"><a href="javascript:;"><span
                     class="rkNum">4</span><span class="rkTxt">[시드니PICK] 롬앤 듀이풀
                        워터 틴트</span></a></li>
               <li class="li_rank_txt" style="display: list-item;"><a href="javascript:;"><span
                     class="rkNum">5</span><span class="rkTxt">[NEW] 롬앤 무드 페블
                        네일 23종</span></a></li>
               <li class="li_rank_txt hidde" style=""><a
                  href="javascript:;"><span class="rkNum">6</span><span
                     class="rkTxt">[단독기획] 롬앤 베러 댄 팔레트(브러쉬 증정)</span></a></li>
               <li class="li_rank_txt hidde" style=""><a
                  href="javascript:;"><span class="rkNum">7</span><span
                     class="rkTxt">[배쓰밤증정/지성용]한율 부들밤 말끔피지 모공팩 100ml(+20ml+브러쉬)</span></a></li>
               <li class="li_rank_txt hidde" style=""><a
                  href="javascript:;"><span class="rkNum">8</span><span
                     class="rkTxt">[단독기획] 피카소 메이크업 스파츌라 기획(+스펀지 4P, 메쉬파우치)</span></a></li>
               <li class="li_rank_txt hidde" style=""><a
                  href="javascript:;"><span class="rkNum">9</span><span
                     class="rkTxt">트리셀 데이/나이트 콜라겐 샴푸 2종 기획세트[360ml+360ml]</span></a></li>
               <li class="li_rank_txt hidde" style=""><a
                  href="javascript:;"><span class="rkNum">10</span><span
                     class="rkTxt">[후니언PICK] 롬앤 누 제로 쿠션 (본품+미니쿠션 증정)</span></a></li>
            </ul>
         </div>
      </div>
   </div>
 
 
 
</div><!-- Contents -->
</div><!-- Container -->
</div><!-- Wrapper -->
</main>
<footer>
</footer>

<script>   
      setInterval(function(){
         
           if($(".li_rank_txt:last-of-type").hasClass("act")){
              $(".li_rank_txt:first-of-type").addClass("act");
              $(".li_rank_txt.act:last-of-type").removeClass("act");
           }else{
              $(".li_rank_txt.act+li").addClass("act");
               $(".li_rank_txt.act").eq(0).removeClass("act");
           }
              
              if( $(".li_rank_txt:eq(0), .li_rank_txt:eq(5)").hasClass("act")){
                 $(".li_rank_txt").removeClass("hidde");
                 $(".li_rank_txt").css("display","none");
                 if( $(".li_rank_txt:eq(0)").hasClass("act")){
                    for (var i = 5; i < 10; i++) {
                           $(".li_rank_txt").eq(i).addClass("hidde");
                           $(".li_rank_txt").eq(i-5).css("display","list-item");
                       }
                 } else{
                    for (var i = 0; i < 5; i++) {
                           $(".li_rank_txt").eq(i).addClass("hidde");
                           $(".li_rank_txt").eq(i+5).css("display","list-item");
                       }
                 }
              }
              
              if( $("slick-track li:first-of-type").hasClass("slick-active") ){
                 
              }
              
              
        },3000);
   
   
   
   
      $(".viewRk_tab button").click(function(){
         if( !$(this).parent().hasClass() ){
             $(".viewRk_tab li").removeClass();
             $(this).parent().addClass("act");
         }
      })
      
      
</script>

<script>
// 오직 올리브영에서만 버튼 클릭시 슬라이드
$(function () {
		$("#slick-slide30").on("click", function () {
			if($("#slick-slide30").attr('class') != 'slick-active'){
				$(this).attr('class', 'slick-active');
				$(this).next().removeClass('slick-active');
				$(".onlyoneslick").animate({ "margin-left": "-1029px" }, 500, function () {
					$(".onlyoneimgdiv:first-child").insertAfter(".onlyoneimgdiv:last-child");
					$(".onlyoneimgdiv:first-child").insertAfter(".onlyoneimgdiv:last-child");
					$(".onlyoneimgdiv:first-child").insertAfter(".onlyoneimgdiv:last-child");
					$(".onlyoneslick").css({ "margin-left": "0px" });
		    	});
			} // if
		});
});
	
$(function () {
	$("#slick-slide31").on("click", function () {
		if($("#slick-slide31").attr('class') != 'slick-active'){
			$(this).attr('class', 'slick-active');
			$(this).prev().removeClass('slick-active');
	   	 	$(".onlyoneslick").animate({ "margin-left": "-1029px" }, 500, function () {
				$(".onlyoneimgdiv:first-child").insertAfter(".onlyoneimgdiv:last-child"); 
				$(".onlyoneimgdiv:first-child").insertAfter(".onlyoneimgdiv:last-child"); 
				$(".onlyoneimgdiv:first-child").insertAfter(".onlyoneimgdiv:last-child"); 
				$(".onlyoneslick").css({ "margin-left": "0px" });
			});
		} // if
	});
});
</script>

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