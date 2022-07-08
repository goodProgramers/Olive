<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

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
/* 검색어쪽 헤더 부분 */
#Header {
    width: 1020px;
    margin: 0 auto;
}

#Header .top_util {
    position: relative;
    width: 100%;
    height: 30px;
    letter-spacing: -.005em;
}

#Header .top_util .menu_list {
    overflow: hidden;
    position: absolute;
    top: 0;
    right: 0;
}

ol, ul {
    list-style: none;
}

#Header .top_util .menu_list>li {
    float: left;
    padding: 0 9px 0 10px;
    line-height: 30px;
    white-space: nowrap;
}

#Header .top_util .menu_list>li * {
    font-size: 12px;
    color: #333;
    white-space: nowrap;
}

a {
    color: #666;
    text-decoration: none;
}

#Header .top_util .menu_list>li+li {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x11.gif) no-repeat 0 50%;
}

.header_inner {
    width: 100%;
    height: 90px;
    width: 1020px;
}

.header_inner h1 {
    float: left;
    margin-top: 21px;
}

.header_inner h1 a {
    display: block;
}

.header_inner h1 img {
    display: block;
    width: 248px;
    height: 42px;
}

button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}

.header_inner .search_box {
    float: left;
    position: relative;
    width: 340px;
    height: 40px;
    margin: 22px 0 0 90px;
    padding: 0 45px 0 20px;
    border: 2px solid #9bce26;
    background: #fff;
    border-radius: 20px;
}

input:disabled, input:read-only, select:disabled {
    background-color: #f8f8f8;
    color: #888;
}

input {
    width: 100%;
    height: 38px;
    margin: 0;
    padding: 0;
    border: 1px solid #d0d0d0;
    color: #888;
    background: 0 0;
    border-radius: 5px;
    -ms-border-radius: 5px;
    -webkit-border-radius: 5px;
    -o-border-radius: 5px;
    -moz-border-radius: 5px;
    box-shadow: none;
    appearance: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    letter-spacing: .5px;
    vertical-align: top;
}

.header_inner .search_box .placeholder_area {
    width: 100%;
}

.placeholder_area {
    position: relative;
    display: inline-block;
}

.header_inner .search_box .placeholder_area label {
    top: 0!important;
    left: 0!important;
    max-width: 95%;
    min-width: 95%;
    height: 36px;
    line-height: 37px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    font-size: 12px!important;
}

.placeholder_area>label {
    position: absolute;
    top: 15px!important;
    left: 21px!important;
    font-size: 16px!important;
    color: #999!important;
}

button, input.button, input.image, input.submit, label {
    cursor: pointer;
}

.header_inner .search_box input[type=text] {
    height: 36px;
    border: 0;
    padding: 8px 10px 8px 0;
    font-size: 12px;
}

input[type=password], input[type=tel], input[type=text] {
    padding: 0 10px;
    background-color: #fff;
    font-size: 14px;
    line-height: 20px;
    color: #888;
}

button, input[type=submit] {
    font-family: Montserrat,-apple-system,NotoSansCJKkr,AppleSDGothicNeo,Roboto,sans-serif;
    font-weight: 700;
}

button, input[type=submit] {
    border: 0;
    padding: 0;
    box-shadow: none;
    cursor: pointer;
}

button {
    text-align: center;
    color: #fff;
}

.header_inner .search_box #searchSubmit {
    position: absolute;
    top: 7px;
    right: 18px;
    width: 21px;
    height: 21px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_search21x212.png) no-repeat 50% 50%;
    text-indent: -9999px;
}

.header_inner .search_box .search_layer {
    display: none;
    position: absolute;
    top: 36px;
    left: -2px;
    width: 340px;
    background: #fff;
    border-left: 2px solid #9bce26;
    border-right: 2px solid #9bce26;
    border-bottom: 2px solid #9bce26;
    border-top: 1px solid #ddd;
    border-radius: 0 0 20px 20px;
    z-index: 12;
}

.header_inner .search_box .search_layer .layer_inner {
    position: relative;
    width: 100%;
}

.header_inner .search_box .search_layer .search_tab.on {
    border-bottom-color: #9bce26;
    color: #000;
}

/* 예린 추가
on{
    border-bottom-color: #9bce26;
    color: #000;
}
*/

.header_inner .search_box .search_layer .search_tab.tab01 {
    left: 0;
    top: 0;
}

.header_inner .search_box .search_layer .search_tab {
    position: absolute;
    width: 50%;
    color: #888;
    line-height: 48px;
    text-align: center;
    border-bottom: 2px solid #ddd;
    font-weight: 700;
}

.header_inner .search_box .search_layer .search_tab.on+.search_tab_cont {
    display: block;
}

/* 최근 검색한 기록이 없을 때 */
.header_inner .search_box .search_layer .search_tab_cont li.no_data {
    text-align: center;
    padding-top: 150px;
    height: 330px;
    color: #888;
}

.header_inner .search_box .search_layer .search_tab_cont ul {
    padding: 10px 20px;
}

.header_inner .search_box .search_layer .search_tab_cont li {
    position: relative;
    width: 100%;
}

.header_inner .search_box .search_layer .search_tab_cont li>a {
    display: block;
    max-width: 90%;
    line-height: 30px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 12px;
    color: #777;
    vertical-align: middle;
}

.header_inner .search_box .search_layer .search_tab_cont li>button {
    position: absolute;
    top: 10px;
    right: 0;
    width: 9px;
    height: 9px;
    text-indent: -9999px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_close9x9.png) no-repeat 0 0;
}

.header_inner .search_box .search_layer .search_set_area {
    width: 100%;
    height: 40px;
    border-bottom: 1px solid #9bce26;
    text-align: center;
    padding-top: 7px;
}

.header_inner .search_box .search_layer .search_set_area>a {
    display: inline-block;
    height: 25px;
    padding: 0 7px;
    font-size: 14px;
    line-height: 22px;
    color: #888;
    border: 1px solid #ddd;
    font-weight: 700;
}

.header_inner .search_box .search_layer .search_set_area>a.sch_save {
    margin-left: 5px;
}

.header_inner .search_box .search_layer .search_tab.tab02 {
    left: 50%;
    top: 0;
}

.header_inner .search_box .search_layer .search_tab_cont {
    display: none;
    padding-top: 50px;
}

.search_box .scp_cont {
    padding: 18px 0;
}

.search_box .scp_cont h3 {
    margin-bottom: 14px;
    padding-left: 20px;
    font-size: 18px;
    font-weight: 700;
    color: #333;
    line-height: 110%;
}

.search_box .scp_slide {
    position: relative;
    height: 85px;
    width: 328px;
    margin: 0 auto;
}

.search_box .scp_slide .banner_wrap {
    width: 260px;
    margin: 0 auto;
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

.search_box .scp_slide .banner_wrap .slick-arrow.slick-disabled {
    cursor: default;
    display: none!important;
}

.search_box .scp_slide .banner_wrap .slick-prev {
    background-position: 10px center;
    left: -34px;
}

.search_box .scp_slide .banner_wrap .slick-arrow {
    position: absolute;
    top: 27px;
    width: 30px;
    height: 30px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_notice_pg.png) no-repeat 0 0;
}

.search_box .scp_slide .banner_wrap .slick-list {
    width: 100%;
    height: 85px;
    overflow: hidden;
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

.slick-track {
    position: relative;
    top: 0;
    left: 0;
    display: block;
    z-index: 1;
}

/* 검색어 창 클릭시 생김 */
.header_inner .search_box.active {
    height: auto;
}

.search_layer_before{
    position: absolute;
    top: -19px;
    left: -2px;
    content: ' ';
    width: 18px;
    height: 18px;
    border-left: 2px solid #9bce26;
    background: #fff;
}

.search_layer_after{
    position: absolute;
    top: -19px;
    right: -2px;
    content: ' ';
    width: 18px;
    height: 18px;
    border-right: 2px solid #9bce26;
    background: #fff;
}

.header_inner .search_box.active .search_layer:before {
    position: absolute;
    top: -19px;
    left: -2px;
    content: ' ';
    width: 18px;
    height: 18px;
    border-left: 2px solid #9bce26;
    background: #fff;
}

.header_inner .search_box.active .search_layer:after {
    position: absolute;
    top: -19px;
    right: -2px;
    content: ' ';
    width: 18px;
    height: 18px;
    border-right: 2px solid #9bce26;
    background: #fff;
} 


/* 요소에 따라 left값 -260px되고 width 사라짐 */
.search_box .scp_slide .banner_wrap .slick-slide {
    display: table;
    position: relative;
    width: 260px!important;
    min-width: 260px;
    min-height: 85px;
    cursor: pointer;
    overflow: hidden;
}

.search_box .scp_slide .banner_wrap .slick-slide a {
    display: block;
    height: 100%;
    position: relative;
}

.search_box .scp_slide .banner_wrap .scp_thumb {
    display: table-cell;
    width: 85px;
    text-align: center;
    vertical-align: middle;
}

.search_box .scp_slide .banner_wrap .scp_thumb img {
    width: auto!important;
    height: auto!important;
    max-width: 85px;
    max-height: 85px;
}

.search_box .scp_slide .banner_wrap .scp_txt {
    display: table-cell;
    width: 175px;
    padding-left: 15px;
    vertical-align: middle;
    overflow: hidden;
}

.search_box .scp_slide .banner_wrap .scp_txt .brand {
    font-size: 14px;
    color: #777;
    font-weight: 700;
}

.search_box .scp_slide .banner_wrap .scp_txt>span {
    display: block;
}

.search_box .scp_slide .banner_wrap .scp_txt .tit {
    margin: 4px 0 3px;
    font-size: 14px;
    color: #000;
    line-height: 18px;
    max-height: 36px;
    overflow: hidden;
}

/* 검색어 상품쪽 가격 스타일 */
.search_box .scp_slide .banner_wrap .slick-dots {
    position: absolute;
    top: -26px;
    right: -17px;
}

.search_box .scp_slide .banner_wrap .scp_txt .price em {
    font-size: 14px;
    font-style: normal;
    vertical-align: 2px;
}

.search_box .scp_slide .banner_wrap .scp_txt .price {
    font-size: 20px;
    color: #e02020;
    font-weight: 500;
}

.search_box .scp_slide .banner_wrap .scp_txt .price .sale_pr {
    padding-right: 5px;
    font-size: 14px;
    color: #b5b5b5;
    text-decoration: line-through;
    vertical-align: 1px;
}

input:disabled, input:read-only, select:disabled {
    background-color: #f8f8f8;
    color: #888;
}

.search_box .scp_slide .banner_wrap .slick-next {
    background-position: -41px center;
    right: -34px;
}

/* 활성화된 li 태그 */
.search_box .scp_slide .banner_wrap .slick-dots li.slick-active {
    background: #9bce26;
    width: 20px;
}

.search_box .scp_slide .banner_wrap .slick-dots li {
    float: left;
    margin: 0 2px 0 3px;
    width: 5px;
    height: 5px;
    background-color: #d9d9d9;
    border-radius: 2.5px;
}

.search_box .scp_slide .banner_wrap .slick-dots button {
    font-size: 0;
}

/* 오늘드림, 관심매장소식, 최근본상품 영역 스타일 */
.header_inner .mymenu_area {
    float: right;
    margin-top: 10px;
}

.header_inner .mymenu_area>li.delivery {
    padding-right: 16px;
}

.header_inner .mymenu_area>li {
    float: left;
    position: relative;
    height: 65px;
    padding-top: 22px;
}

.header_inner .mymenu_area>li.delivery:before {
    content: '';
    display: block;
    position: absolute;
    top: 22px;
    right: 0;
    width: 1px;
    height: 18px;
    background: #d6d6d6;
}

.header_inner .mymenu_area>li.delivery .mymenu_layer {
    padding: 3px 27px 3px 0;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_delivery_flag.png) no-repeat;
    background-size: 22px 20px;
    background-position: right 2px;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

.header_inner .mymenu_area>li>a {
    font-size: 14px;
    color: #000;
    line-height: 20px;
    z-index: 30;
    font-weight: 200;
}

.header_inner .mymenu_area>li.delivery .delivery_box_wrap {
    z-index: 20;
    position: absolute;
    top: 61px;
    left: 0;
    width: 210px;
    background: #fff;
    padding: 12px 15px 12px 15px;
    box-shadow: 2px 0 7px 2px rgb(0 0 0 / 20%);
    border-radius: 5px;
    display: none;
}

.header_inner .mymenu_area>li.delivery .delivery_box p {
    font-weight: 500;
    font-size: 12px;
    line-height: 16px;
    color: #000;
    letter-spacing: 0;
    word-break: keep-all;
}

.header_inner .mymenu_area>li.delivery .delivery_addr {
    position: relative;
    width: 440px;
    z-index: 20;
    position: absolute;
    background: #fff;
    border: 1px solid #d5d5d5;
    top: 61px;
    left: -129px;
}

.header_inner .mymenu_area>li.delivery .delivery_addr .addr_box .inner {
    padding: 25px;
}

.tit01 {
    font-size: 18px;
    color: #000;
    letter-spacing: normal;
}

.tit01 span {
    font-size: 12px;
    color: #666;
    font-weight: 400;
    letter-spacing: normal;
    margin-left: 6px;
}

.delivery_addr .addr_box .set-box {
    padding: 15px 20px;
    background: #f5f5f5;
    position: relative;
    padding-right: 100px;
    margin-top: 21px;
}

.delivery_addr .addr_box .set-box>strong {
    color: #000;
    font-size: 15px;
}

.delivery_addr .addr_box .set-box>p {
    font-size: 12px;
    color: #666;
    word-break: keep-all;
}

.delivery_addr .addr_box .set-box .toggleInput {
    position: absolute;
    right: 20px;
    top: 50%;
    transform: translateY(-50%);
}

.toggleInput .switch {
    position: relative;
    display: inline-block;
    width: 45px;
    height: 26px;
    border-radius: 13.5px;
    overflow: hidden;
}

input[type=checkbox]:disabled, input[type=checkbox]:read-only {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png) no-repeat -20px -20px;
}

.toggleInput .switch input {
    opacity: 0;
    width: 0;
    height: 0;
}

.toggleInput .switch .slider {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #bbb;
    -webkit-transition: .4s;
    transition: .4s;
}

.header_inner .mymenu_area>li.delivery .delivery_addr .addr_box .inner+.inner {
    border-top: 1px solid #eee;
    padding: 30px 25px 0;
}

.header_inner .mymenu_area>li.delivery .delivery_addr .addr_box .mCustomScrollbar {
    height: 300px;
    overflow-y: auto;
}

.mCustomScrollBox {
    position: relative;
    overflow: hidden;
    height: 100%;
    max-width: 100%;
    outline: none;
    direction: ltr;
}

.mCSB_container {
    overflow: hidden;
    width: auto;
    height: auto;
}

.mCSB_container.mCS_no_scrollbar_y.mCS_y_hidden {
    margin-right: 0;
}

.mCSB_scrollTools {
    position: absolute;
    width: 16px;
    height: auto;
    left: auto;
    top: 0;
    right: 0;
    bottom: 0;
}

.mCSB_scrollTools {
    opacity: 0.75;
    filter: "alpha(opacity=75)";
    -ms-filter: "alpha(opacity=75)";
}

.mCSB_scrollTools, .mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar, .mCSB_scrollTools .mCSB_buttonUp, .mCSB_scrollTools .mCSB_buttonDown, .mCSB_scrollTools .mCSB_buttonLeft, .mCSB_scrollTools .mCSB_buttonRight {
    -webkit-transition: opacity .2s ease-in-out, background-color .2s ease-in-out;
    -moz-transition: opacity .2s ease-in-out, background-color .2s ease-in-out;
    -o-transition: opacity .2s ease-in-out, background-color .2s ease-in-out;
    transition: opacity .2s ease-in-out, background-color .2s ease-in-out;
}

.mCSB_scrollTools .mCSB_draggerContainer {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    height: auto;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

.mCSB_scrollTools .mCSB_dragger {
    cursor: pointer;
    width: 100%;
    height: 30px;
    z-index: 1;
}

.mCSB_scrollTools .mCSB_draggerRail {
    width: 2px;
    height: 100%;
    margin: 0 auto;
    -webkit-border-radius: 16px;
    -moz-border-radius: 16px;
    border-radius: 16px;
}

li.delivery .delivery_addr .addr_box .add-address-box {
    width: 100%;
    height: 49px;
    padding: 15px 19px;
    border-top: 1px solid #eee;
}

li.delivery .delivery_addr .addr_box .add-address-box a {
    font-size: 15px;
    color: #000;
    font-weight: 700;
}

.btnTy.btn-plus {
    padding-left: 26px;
    position: relative;
}

.btnTy {
    display: inline-block;
}

.header_inner .mymenu_area>li.store {
    width: 120px;
    padding-left: 15px;
}

.header_inner .mymenu_area .alim_box {
    display: none;
    position: absolute;
    top: 61px;
    right: 0;
    width: 595px;
    height: 180px;
    padding: 20px;
    border: 1px solid #d5d5d5;
    z-index: 20;
    background: #fff;
    text-align: center;
}

.header_inner .mymenu_area .alim_box .store_desc {
    display: table-cell;
    width: 553px;
    height: 75px;
    padding-bottom: 20px;
    font-size: 16px;
    border-bottom: 1px solid #d5d5d5;
    line-height: 22px;
    text-align: center;
    color: #888;
    vertical-align: middle;
    box-sizing: content-box;
    font-weight: 700;
}

.header_inner .mymenu_area .alim_box .store_desc>span {
    color: #9bce26;
}

.header_inner .mymenu_area .mymenu_btn {
    display: inline-block;
    height: 32px;
    margin: 14px 0 0;
    padding: 0 27px;
    line-height: 30px;
    background: #fff;
    border: 1px solid #ddd;
    color: #888;
    font-size: 14px;
}

.header_inner .mymenu_area>li.recent {
    width: 96px;
    text-align: right;
}

.header_inner .mymenu_area>li.recent:before {
    content: '';
    display: block;
    position: absolute;
    top: 22px;
    left: 0;
    width: 1px;
    height: 18px;
    background: #d6d6d6;
}

.header_inner .mymenu_area>li>a {
    font-size: 14px;
    color: #000;
    line-height: 20px;
    z-index: 30;
    font-weight: 200;
}

.header_inner .mymenu_area .recent_prd_box {
    display: none;
    position: absolute;
    top: 61px;
    right: 0;
    width: 1020px;
    min-height: 515px;
    padding: 10px 0 20px;
    border: 1px solid #d5d5d5;
    z-index: 20;
    background: #fff;
}

.header_inner .mymenu_area .recent_prd_box .recent_tit {
    position: relative;
    width: 980px;
    height: 40px;
    margin: 0 auto;
    color: #000;
    text-align: left;
    border-bottom: 1px solid #d5d5d5;
    line-height: 40px;
    font-weight: 700;
}

.header_inner .mymenu_area .recent_prd_box .recent_tit>span {
    color: #9bce26;
}

.header_inner .mymenu_area .recent_prd_box .no_data {
    height: 380px;
    text-align: center;
    line-height: 380px;
    color: #888;
}

.header_inner .mymenu_area>li:after {
    content: '';
    display: inline-block;
    width: 7px;
    height: 4px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow11x72.png) no-repeat 0 0;
    margin: 0 0 2px 4px;
}

#Header .header_design_area {
    position: absolute;
    top: 0;
    left: 50%;
    width: 100%;
    height: 119px;
    margin-left: -50%;
    z-index: -1;
}

#Header .header_design_area:after {
    content: '';
    position: absolute;
    display: block;
    left: 0;
    width: 50%;
    height: 119px;
    margin-left: -510px;
}

.header_inner .search_box .search_layer .search_tab_cont.sharp_rise li.top>a>span {
    color: #f27370;
}

.header_inner .search_box .search_layer .search_tab_cont.sharp_rise li>a>.rate.dn {
    color: #183efe;
}

.header_inner .search_box .search_layer .search_tab_cont.sharp_rise li>a>.rate.up {
    color: #e02020;
}

.header_inner .search_box .search_layer .search_tab_cont.sharp_rise li>a>.rate.dn>span:after {
    border-top: 7px solid #183efe;
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
}

.header_inner .search_box .search_layer .search_tab_cont.sharp_rise li>a>span.rate span {
    position: relative;
    margin: 0;
    padding-right: 10px;
}

.header_inner .search_box .search_layer .search_tab_cont.sharp_rise li>a>.rate.up>span:after {
    border-bottom: 7px solid #e02020;
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
}

.header_inner .search_box .search_layer .search_tab_cont.sharp_rise li>a>.rate.dn>span:after,
.header_inner .search_box .search_layer .search_tab_cont.sharp_rise li>a>.rate.up>span:after {
    content: '';
    display: block;
    position: absolute;
    top: 50%;
    right: 0;
    width: 0;
    height: 0;
    margin-top: -3px;
    background: 0 0;
}

rate_span{
    content: '';
    display: block;
    position: absolute;
    top: 50%;
    right: 0;
    width: 0;
    height: 0;
    margin-top: -3px;
    background: 0 0;
}
</style>
<style>
/* 푸터부분 */
#Footer {
    margin: 40px 0 0;
    border-top: 2px solid #aaa;
}

#Footer .oneConts {
    background: #f9f9f9;
    border-bottom: 1px solid #ddd;
}

#Footer * {
    letter-spacing: 0;
}

#Footer .oneConts .conts {
    position: relative;
    height: 52px;
}

#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}

#Footer .list-menu {
    overflow: hidden;
}

#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}

#Footer .list-menu li:first-child {
    background: 0 0;
}

#Footer .list-menu li:first-child>a {
    padding-left: 0;
}

#Footer .list-menu li a {
    display: block;
    padding: 0 20px 0 21px;
    color: #000;
    font-size: 12px;
    line-height: 16px;
}

#Footer .sel_family_group {
    position: absolute;
    top: 10px;
    right: 0;
    width: 235px;
    height: 30px;
    border-radius: 0;
    font-size: 12px;
}

#Footer .sel_family_group .sel_option {
    display: block;
    height: 30px;
    padding: 0 10px;
    line-height: 30px;
    border: 1px solid #e5e5e5;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_footer_arrow.png) no-repeat 95% 50%;
}

#Footer .sel_family_group * {
    color: #777;
}

#Footer .sel_family_group .sel_option_list.hide {
    display: none;
}

#Footer .sel_family_group .sel_option_list {
    overflow-y: auto;
    height: 150px;
    padding: 10px;
    border-left: 1px solid #e5e5e5;
    border-bottom: 1px solid #e5e5e5;
    border-right: 1px solid #e5e5e5;
    background: #fff;
}

#Footer .sel_family_group .sel_option_list dl:first-child {
    margin-top: 0;
}

#Footer .sel_family_group .sel_option_list dl dt {
    font-weight: 700;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}

#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}

#Footer .list-area {
    overflow: hidden;
}

#Footer.m2105 .list-area>li {
    height: 195px;
}

#Footer .list-area>li:nth-child(1) {
    position: relative;
    width: 509px;
    background: 0 0;
}

#Footer .list-area>li {
    float: left;
    height: 175px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x115.gif) no-repeat 0 29px;
    font-size: 0;
    line-height: 0;
}

#Footer .list-area li:nth-child(1) .logo {
    position: absolute;
    top: 50%;
    left: 0;
    margin-top: -12px;
    padding: 0;
    font-size: 0;
    line-height: 0;
}

#Footer .list-area li:nth-child(1) .logo img {
    width: 146px;
    height: 24px;
}

#Footer .list-area li:nth-child(1) h2 {
    padding: 28px 0 3px 170px;
    color: #000;
    font-size: 12px;
    line-height: 20px;
}

#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}

#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}

#Footer .list-area li:nth-child(1) p:nth-child(4) {
    margin-left: 35px;
    text-indent: -35px;
}

#Footer .list-area li:nth-child(2) {
    width: 256px;
}

#Footer .list-area li:nth-child(2) .list-link {
    padding: 26px 0 0 20px;
}

#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}

#Footer .list-area li:nth-child(2) .list-link li a {
    display: inline-block;
    color: #777;
    font-size: 12px;
    line-height: 21px;
    vertical-align: top;
}

#Footer .list-area li:nth-child(2) .list-link li:nth-child(2) a {
    font-weight: 700;
    letter-spacing: -1px;
    color: #333;
}

#Footer .list-area li:nth-child(3) {
    width: 255px;
}

#Footer .list-area li:nth-child(3) h2 {
    padding: 25px 0 0 20px;
    color: #000;
    font-size: 12px;
    line-height: 18px;
}

#Footer .list-area li:nth-child(3) p {
    padding: 10px 0 0 20px;
    color: #777;
    font-size: 12px;
    line-height: 18px;
}

#Footer .list-area li:nth-child(3) p .link {
    display: inline-block;
    color: #333;
    font-size: 12px;
    line-height: 16px;
    border-bottom: 1px solid #333;
}

#Footer .fourConts .conts {
    border-top: 1px solid #ddd;
    text-align: center;
}

#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}

#Footer .fourConts ol li.isms:before {
    content: '';
    display: inline-block;
    vertical-align: middle;
    width: 26px;
    height: 26px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/common/foot_isms_new.png) no-repeat 0 0;
    margin: 0 7px 1px 0;
}

#Footer .fourConts ol li {
    display: inline-block;
    color: #777;
    font-size: 11px;
    line-height: 53px;
}

#Footer .fourConts ol li .bar:before {
    content: '|';
    display: inline-block;
    margin: 0 5px;
    color: #777;
    font-size: 11px;
}

#Footer .fourConts ol li.ncsi {
    margin-left: 28px;
}

#Footer .fourConts ol li.ncsi:before {
    content: '';
    display: inline-block;
    vertical-align: middle;
    width: 30px;
    height: 20px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/common/foot_ncsi.png) no-repeat 0 0;
    margin: 0 7px 2px 0;
}

#Footer .fourConts ol:after {
    content: '';
    display: block;
    clear: both;
}

#Footer .threeConts {
    border-top: 1px solid #e5e5e5;
    background: #f9f9f9;
}

#Footer .threeConts .conts {
    overflow: hidden;
    height: 40px;
}

#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}

#Footer .copyright {
    float: left;
    padding: 11px 0 0;
    color: #888;
    font-size: 11px;
    line-height: 18px;
    font-weight: 700;
}

#Footer .sns {
    overflow: hidden;
    float: right;
    padding: 9px 0 0;
}

#Footer .sns h2 {
    float: left;
    margin-right: 4px;
    color: #aaa;
    font-size: 12px;
    padding: 3px 0 0;
}

#Footer .sns a {
    float: left;
    margin: 0 8px;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
}

#Footer .sns a>img {
    height: 22px;
}

#Footer .sns a:last-child {
    margin-right: 0;
}

#Footer .list-area li:nth-child(1) .link {
    display: inline-block;
    margin-left: 7px;
    color: #333;
    border-bottom: 1px solid #333;
    line-height: 16px;
}
</style>

	<%--카테고리 출력 부분 스타일--%>
	<style>
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
		}
		a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
			margin: 0;
			padding: 0;
			border: 0;
		}
		#gnbWrap {
			position: relative;
			width: 1020px;
			margin: 0 auto;
			top: 0;
		}
		#gnbWrap:after {
			content: '';
			display: block;
			clear: both;
		}
		#Gnb {
			position: relative;
			width: 100%;
			min-width: 1020px;
			height: 47px;
			background: #fff;
			border-top: 1px solid #ddd;
			border-bottom: 2px solid #555;
			z-index: 10;
		}
		#btnGnbOpen.active {
			background-color: #2f3030;
			border-color: #2f3030;
			color: #fff;
		}
		#btnGnbOpen.active:before {
			background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_menu_on.png) no-repeat 0 14px!important;
		}
		#btnGnbOpen:before {
			content: '';
			display: inline-block;
			margin: 0 8px 0 0;
			background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_menu_off.png) no-repeat 0 14px;
			width: 24px;
			height: 44px;
			vertical-align: middle;
		}
		#btnGnbOpen {
			float: left;
			width: 170px;
			height: 44px;
			padding-left: 27px;
			border-right: 1px solid #ddd;
			border-left: 1px solid #ddd;
			line-height: 44px;
			color: #000;
			font-size: 15px;
			font-weight: 700;
			text-align: left;
		}

		#Gnb .layer_all_menu.active {
			display: block;
		}
		#Gnb .layer_all_menu {
			position: absolute;
			top: 44px;
			width: 1020px;
			border: 2px solid #2f3030;
			background: #fff;
			z-index: 20;
			display: none;
		}
		#Gnb .all_menu_wrap {
			display: table;
			width: 100%;
			background: #fff;
		}
		#Gnb .all_menu_wrap:after {
			content: '';
			display: block;
			clear: both;
		}
		#Gnb .all_menu_wrap>li:first-child {
			width: 508px;
			border-left: none;
		}
		#Gnb .all_menu_wrap>li {
			display: table-cell;
			height: 100%;
			width: 254px;
			padding: 18px 20px 22px;
			border-left: 1px solid #ddd;
			vertical-align: top;
		}
		h2 {
			display: block;
			font-size: 1.5em;
			margin-block-start: 0.83em;
			margin-block-end: 0.83em;
			margin-inline-start: 0px;
			margin-inline-end: 0px;
			font-weight: bold;
		}

		#Gnb .all_menu_wrap>li h2 {
			float: left;
			width: 100%;
			font-size: 16px;
			margin-bottom: 17px;
			padding: 0 22px 12px;
			border-bottom: 1px solid #666;
			color: #000;
		}
		div {
			display: block;
		}
		#Gnb .all_menu_wrap>li h2+.sub_menu_box {
			padding: 0 9px 0 22px;
		}
		#Gnb .all_menu_wrap>li .sub_menu_box {
			width: 155px;
		}
		#Gnb .all_menu_wrap>li .sub_menu_box {
			float: left;
			min-height: 400px;
			padding: 0 10px 0 30px;
		}
		p {
			display: block;
			margin-block-start: 1em;
			margin-block-end: 1em;
			margin-inline-start: 0px;
			margin-inline-end: 0px;
		}
		#Gnb .all_menu_wrap .sub_menu_box .sub_depth {
			margin-top: 18px;
		}
		#Gnb .all_menu_wrap .sub_menu_box .sub_depth:first-child {
			margin-top: 0;
		}
		#Gnb.gen1 .all_menu_wrap .sub_menu_box .sub_depth a:after {
			content: "";
			position: absolute;
			left: 0;
			bottom: 0;
			width: 0;
			height: 1px;
			background-color: #000;
			transition: .1s width;
		}
		a {
			color: #666;
			text-decoration: none;
		}
		#Gnb .all_menu_wrap .sub_menu_box .sub_depth a {
			color: #000;
			font-weight: 700;
		}
		#Gnb.gen1 .all_menu_wrap .sub_menu_box a {
			display: inline-block;
			border-bottom-color: transparent;
		}
		#Gnb.gen1 .all_menu_wrap .sub_menu_box .sub_depth a {
			position: relative;
			height: 22px;
			padding-right: 15px;
			padding-bottom: 2px;
			font-weight: 700;
			color: #000;
			background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/arrow_12_21_02.png) no-repeat 100% 5px;
			background-size: 5.5px;
		}

		ol, ul {
			list-style: none;
		}
		ul {
			display: block;
			margin-block-start: 1em;
			margin-block-end: 1em;
			margin-inline-start: 0px;
			margin-inline-end: 0px;
			/*padding-inline-start: 40px;*/
		}

		#Gnb .gnb_menu_list {
			position: relative;
			top: 0;
			right: 0;
		}
		li {
			display: list-item;
			text-align: -webkit-match-parent;
		}
		#Gnb .gnb_menu_list>li {
			float: left;
			margin-left: 45px;
		}
		#Gnb .gnb_menu_list>li:first-child {
			margin-left: 50px;
		}
		#Gnb .gnb_menu_list>li>a {
			display: block;
			height: 44px;
			line-height: 44px;
			color: #000;
			font-size: 16px;
			font-weight: 700;
			letter-spacing: -.04em;
		}
		#Gnb .gnb_menu_list {
			position: relative;
			top: 0;
			right: 0;
			margin:0;
		}
		#Gnb .gnb_menu_list>li:first-child {
			margin-left: 50px;
		}

		#Gnb .gnb_menu_list>li {
			float: left;
			margin-left: 45px;
		}
	</style>

	<%--메인베너 스타일--%>
	<style>

		.main_full_banner {
			width: 100%;
			height: 450px;
		}

		.main_full_banner .banner_wrap {
			position: absolute;
			width: 100%;
			left: 0;
			background: #f5f5f5;
			z-index: 0;
			height: 450px;
			min-width: 1020px;
			overflow: hidden;
		}

		.main_full_banner .banner_wrap .slick-arrow.slick-next {
			left: 50%;
			margin-left: -200px;
		}
		.main_full_banner .banner_wrap .slick-arrow.slick-prev {
			left: 50%;
			margin-left: -290px;
		}
		.main_full_banner .banner_wrap .slick-arrow {
			position: absolute;
			bottom: 30px;
			z-index: 2;
		}
		.slick-arrow.slick-next {
			background-position: -40px 0;
		}
		.slick-arrow.slick-prev {
			background-position: 0 0;
		}
		.slick-arrow {
			display: inline-block;
			width: 40px;
			height: 40px;
			background: url("https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow40x40_2.png") no-repeat 0 0;
			text-indent: -9999px;
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
			font-family: Montserrat,-apple-system,NotoSansCJKkr,AppleSDGothicNeo,Roboto,sans-serif;
			font-weight: 700;
		}

		.slick-track:after, .slick-track:before {
			display: table;
			content: '';
		}
		.slick-track:after {
			clear: both;
		}
		.slick-track:after, .slick-track:before {
			display: table;
			content: '';
		}
		.main_full_banner .banner_link {
			display: block;
			position: relative;
			height: 450px;
			overflow: hidden;
		}
		.main_full_banner .banner_link .banner_desc .tit {
			display: block;
			font-size: 18px;
			color: #000;
		}
		.main_full_banner .banner_link .banner_desc .tit:after {
			content: '';
			display: block;
			width: 12px;
			height: 1px;
			margin: 20px 0;
			background: #b0afb6;
		}
		.main_full_banner .banner_link .banner_desc {
			font-size: 18px;
			color: #666;
			font-weight: 700;
		}
		.main_full_banner .banner_link .banner_desc strong {
			display: block;
			width: 360px;
			margin-bottom: 10px;
			font-size: 48px;
			color: #1f1f1f;
			line-height: 56px;
			word-break: keep-all;
			font-weight: 400;
		}
		.main_full_banner .banner_link .banner_desc {
			position: absolute;
			top: 52px;
			left: 50%;
			font-size: 18px;
			color: #666;
			z-index: 1;
			margin-left: -290px;
			font-weight: 700;
		}
		.main_full_banner .banner_wrap #mainSliderBtn {
			position: absolute;
			bottom: 30px;
			left: 50%;
			width: 40px;
			height: 40px;
			margin-left: -155px;
			background: url("https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_autoplay.png") no-repeat 0 0;
			text-indent: -9999px;
			z-index: 2;
		}
	</style>

	<%--배너좌측(네비div안) 카테고리 스타일--%>
	<style>
		.main_cate_wrap {
			position: absolute;
			top: 46px;
			left: 50%;
			height: 450px;
			margin-left: -510px;
			background: rgba(51,51,51,.5);
			z-index: 10;
		}
		.main_cate_wrap .main_cate_list {
			width: 170px;
			margin-top: 15px;
		}
		.main_cate_wrap .main_cate_list>li .main_menu {
			display: block;
			width: 170px;
			height: 28.5px;
			line-height: 28.5px;
			padding: 0 23px 0;
			font-size: 14px;
			color: #fff;
			font-weight: 700;
		}
		.main_cate_wrap .lnb_ban_box {
			display: none;
			position: absolute;
			top: 0;
			left: 450px;
			height: 450px;
			width: 213px;
			background-color: #fff;
			border-left: 1px solid #f4f5f7;
			border-right: 1px solid #f4f5f7;
			border-bottom: 1px solid #f4f5f7;
		}
		a {
			color: #666;
			text-decoration: none;
		}
		.main_cate_wrap .lnb_ban_box a {
			display: block;
			width: 100%;
			height: 100%;
		}
		.main_cate_wrap .lnb_ban_box .ban_info {
			padding: 35px 19px 0;
			margin : 0;
		}
		.main_cate_wrap .lnb_ban_box .ban_name {
			display: inline-block;
			margin-bottom: 18px;
			font-size: 13px;
			font-weight: 700;
			color: #222;
			margin : 0;
		}
		.main_cate_wrap .lnb_ban_box .tit_group {
			margin-bottom: 7px;
		}
		.main_cate_wrap .lnb_ban_box .price_s {
			margin-bottom: 4px;
			font-size: 17px;
			color: #b5b5b5;
			text-decoration: line-through;
			font-weight: 300;
			margin : 0;
		}
		.main_cate_wrap .lnb_ban_box .price_s em {
			font-size: 14px;
			margin : 0;
		}
		.main_cate_wrap .lnb_ban_box .price_group em {
			font-style: normal;
			vertical-align: 1px;
			margin : 0;
		}
		.main_cate_wrap .lnb_ban_box .price_m {
			font-size: 24px;
			color: #e02020;
			font-weight: 700;
			margin : 0;
		}
		.main_cate_wrap .lnb_ban_box .price_m em {
			font-size: 17px;
		}
		.main_cate_wrap .lnb_ban_box .price_group em {
			font-style: normal;
			vertical-align: 1px;
		}
		.main_cate_wrap .main_cate_list>li.lst .main_menu {
			line-height: 33px;
			height: 33px;
		}
		.main_cate_wrap .main_cate_list>li.lst {
			position: absolute;
			bottom: 0;
			left: 0;
			width: 170px;
			height: 33px;
			margin-top: 5px;
			background-color: rgba(0,0,0,.2);
		}
		.main_cate_wrap .main_cate_list>li .main_menu {
			display: block;
			width: 170px;
			height: 28.5px;
			line-height: 28.5px;
			padding: 0 23px 0;
			font-size: 14px;
			color: #fff;
			font-weight: 700;
		}
		.main_cate_wrap .main_cate_list>li.lst .main_menu .icon_awards {
			padding-left: 16px;
			background: url("https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_awards_32.png") no-repeat 0 0;
			background-size: 15px;
		}
		.main_cate_wrap.active .main_cate_list>li.on .main_menu{
			position : relative;
			z-index: 1;
			background-color: #2f3030;
		}
		.main_cate_wrap .lnb_ban_box.on {
			display: block;
		}
		.main_cate_wrap .lnb_ban_box .ban_thum img {
			width: auto!important;
			max-width: 203px;
			height: auto!important;
			max-height: 203px;
		}
		.main_cate_wrap .lnb_ban_box .ban_thum {
			position: absolute;
			left: 4px;
			bottom: 4px;
			width: 203px;
			height: 203px;
			text-align: center;
		}
		.main_cate_wrap .lnb_ban_box .tit_group .tit_m {
			width: 173px;
			height: 25px;
			margin-bottom: 5px;
			font-size: 20px;
			font-weight: 700;
			color: #333;
			line-height: 1.3;
			overflow: hidden;
		}
		.main_cate_wrap .lnb_ban_box .tit_group .tit_s {
			width: 173px;
			height: 22px;
			font-size: 16px;
			color: #333;
			line-height: 1.4;
			overflow: hidden;
			margin : 0;
		}
	</style>

</head>
<body>
<div id="Wrapper">
<div id="Header">

	<div class="top_util">
		<ul class="menu_list" id="menu_list_header">
			<li class="join"><a href="javascript:common.link.moveJoinMember();" data-attr="공통^헤더^회원가입">회원가입</a></li>
			<li class="login"><a href="javascript:common.link.moveLoginPage();" data-attr="공통^헤더^로그인">로그인</a></li>
			<li class="cart"><a href="javascript:common.link.moveCartPage();" data-attr="공통^헤더^장바구니">장바구니<span id="cartToCnt"></span></a></li>
			<li class="order"><a href="javascript:common.link.moveOrderList();" data-attr="공통^헤더^주문배송">주문배송</a></li>
			<li class="customer"><a href="javascript:common.faq.getFaqList('99');" data-attr="공통^헤더^고객센터">고객센터</a></li>
			<li class="store"><a href="javascript:common.link.moveStoreMain();" data-attr="공통^헤더^매장안내">매장안내</a></li>
			<li class="global"><a href="http://global.oliveyoung.com" target="_blank" title="올리브영 글로벌 새창으로 열기" data-attr="공통^헤더^Global">Global</a></li>
		</ul>
	</div>

	<div class="header_inner">
		<h1><a href="#"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png" alt="올리브영"></a></h1>

		<div class="search_box" id="w_search_box">
			<input type="hidden" name="chkButton" id="chkButton" value="">

			<div class="placeholder_area">
				<!-- onkeypress="javascript:pressCheck_WEB_MainSearch((event),this);" onkeydown="javascript:downCheck_WEB_MainSearch((event));" -->
				<label for="query">검색어를 입력하세요</label><input type="text" id="query" name="" value="" class="inp_placeholder" data-placeholder="사티아 나그참파 단독증정🌿" data-ref-linkurl="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101440224" autocomplete="off">
			</div>

			<button id="searchSubmit">검색</button>

			<!-- 검색 레이어 영역 (디자인 수정 예정) -->
			<div class="search_layer">
				<span class="search_layer_before"></span><!-- !!!!! 예린 추가 -->
				<div class="layer_inner">
					<!-- 2017-02-07 수정 : 자동완성기능 영역 -->
					<div class="auto_search_cont">
						<div class="brand_area" id="ark_brand"></div>
						<div class="auto_list" id="ark_w"></div>
					</div>
					<!--// 2017-02-07 수정 : 자동완성기능 영역 -->

					<!-- 최근 검색어 -->
					<a href="#" class="search_tab tab01" id="searchRecent">최근 검색어</a><!-- 현재 보여지는 탭에 클래스 on 넣어주세요 -->
					<div class="search_tab_cont" id="recent_cont">
						<ul id="mykeyword">
							<!-- 검색 기록이 없을 경우 -->
						<li class="no_data" id="recent_no_data" style="display:none;">최근 검색한 기록이 없습니다.</li>
							<!--// 검색 기록이 없을 경우 -->
							<!-- 검색 저장 기능이 꺼져있을 경우 -->
<!-- 							<li class="no_data" id="recent_no_save" style="display:none;">최근 검색어 저장 기능이 꺼져있습니다.</li> -->
							<!--// 검색 저장 기능이 꺼져있을 경우 -->
						</ul>
						<div class="search_set_area">
							<a href="#" class="sch_all_del" onclick="javascript:deleteCookies();">전체 삭제</a>
<!-- 										<a href="#" class="sch_save"></a>																		 -->
									<a href="#" class="sch_save">검색어 저장 끄기</a>
						</div>
					</div>

					<!--// 최근 검색어 -->
					<!-- 급상승 검색어 -->
					<a href="#" class="search_tab tab02" id="searchPop">급상승 검색어</a>
					<div class="search_tab_cont sharp_rise" id="w_pop_cont" style="display: none;">
						<ul id="mainPopword">
							<li class="top">
								<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
									<span>1</span>
									<strong>롬앤</strong>
									<span class="rate"><span>&nbsp;</span></span>
								</a>
							 </li>
							<li class="top">
								<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
									<span>2</span>
									<strong>롬앤</strong>
									<span class="rate"><span>&nbsp;</span></span>
								</a>
							 </li>
							<li class="top">
								<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
									<span>3</span>
									<strong>롬앤</strong>
									<span class="rate"><span>&nbsp;</span></span>
								</a>
							 </li>
							<li class="">
								<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
									<span>4</span>
									<strong>롬앤</strong>
									<span class="rate"><span>&nbsp;</span></span>
								</a>
							 </li>
							<li class="">
								<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
									<span>5</span>
									<strong>롬앤</strong>
									<span class="rate"><span>&nbsp;</span></span>
								</a>
							 </li>
							<li class="">
								<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
									<span>6</span>
									<strong>롬앤</strong>
									<span class="rate dn"><span>2</span></span>
								</a>
							 </li>
							<li class="">
								<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
									<span>7</span>
									<strong>롬앤</strong>
									<span class="rate"><span>&nbsp;</span></span>
								</a>
							 </li>
							<li class="">
								<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
									<span>8</span>
									<strong>롬앤</strong>
									<span class="rate"><span>&nbsp;</span></span>
								</a>
							 </li>
							<li class="">
								<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
									<span>9</span>
									<strong>롬앤</strong>
									<span class="rate up"><span>5</span></span>
								</a>
							 </li>
							<li class="">
								<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
									<span>10</span>
									<strong>롬앤</strong>
									<span class="rate"><span>&nbsp;</span></span>
								</a>
							 </li>
						</ul>
						<div class="search_set_area">
							<a href="#" class="sch_pop_close">닫기</a>
						</div>
					</div>

					<!--// 인기 검색어 -->
					<!-- 검색창 TOP3 상품 뿌리기 -->
					<div class="scp_cont" id="scp_cont_id" style="display: block;">
						<h3>할인 TOP3 상품</h3>
						<div class="scp_slide"><!-- 배너 이미지 사이즈 -->

						  <div class="FadeDot banner_wrap slick-initialized slick-slider slick-dotted" role="toolbar">

							<button type="button" data-role="none" class="slick-prev slick-arrow slick-disabled" aria-label="Previous" role="button" aria-disabled="true" style="display: inline-block;">Previous</button>
							<div aria-live="polite" class="slick-list draggable">
								<div class="slick-track" style="opacity: 1; width: 780px;" role="listbox">

									<c:if test="${not empty searchTop3List }">
										<c:forEach items="${searchTop3List }" var="top3List">
										<div class="moveGoodsBtn slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 260px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;" tabindex="-1" role="option" aria-describedby="slick-slide90">
											<a href="#"><!-- 상품이미지 클릭시 상품 상세페이지로 이동시키기 -->
												<div class="scp_thumb">
													<img src="${top3List.prm_url }" alt="TOP3 상품이미지">
												</div>
											<div class="scp_txt">
												<span class="brand">${top3List.br_name }</span>
												<span class="tit">${top3List.pr_name }</span>
												<span class="price"><span class="sale_pr">${top3List.prpri_price }<em>원</em></span> ${top3List.realPrice }<em>원</em></span>
											</div>
											<input type="hidden" name="goodsNo" value="A000000006670" tabindex="0">
											<input type="hidden" name="idxNo" value="0" tabindex="0">
										   </a>
										</div>
										</c:forEach>
									</c:if>
								</div><!-- slick-track -->
							</div><!-- polite -->

							<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;" aria-disabled="false"> </button>

							<ul class="slick-dots" style="display: block;" role="tablist">
								<li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation90" id="slick-slide90">
									<button type="button" data-role="none" role="button" tabindex="0">1</button>
								</li>
								<li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation91" id="slick-slide91">
									<button type="button" data-role="none" role="button" tabindex="0">2</button>
								</li>

								<li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation92" id="slick-slide92">
									<button type="button" data-role="none" role="button" tabindex="0">3</button>
								</li>
							</ul>
							</div><!-- FadeDot banner_wrap slick-initialized slick-slider slick-dotted -->
						</div><!-- scp_slide -->
					</div><!-- scp_cont -->
					<!-- //SCP추가 -->
					<span class="search_layer_after"></span><!-- !!!!! 예린 추가 -->
				</div>
			</div>
			<!--// 검색 레이어 영역 -->
		</div>
		<!--// 검색영역 -->

		<ul class="mymenu_area">
			<!-- 오늘드림 플래그 개인화 노출 2차 POC 추가 -->
			<li id="todayDeliveryContainer" class="delivery"><a href="javascript:;" id="tddlvr_header_today_icon" class="mymenu_layer" title="오늘드림 자세히보기 열기/닫기">오늘드림</a>     <!-- 배송지 미등록 / 배송주소 출력-->     <div class="delivery_box_wrap" style="display: none;"><div class="delivery_box"><p class="dTxt">배송지를 등록하고 오늘드림으로 구매 가능한 상품을 확인하세요!</p></div></div>     <!--// 배송지 미등록 / 배송주소 출력-->     <!-- 배송지 설정-->     <div class="delivery_addr" style="display:none">      <div class="addr_box">       <div class="inner box-head">        <h3 class="tit01">배송지<span>배송지에 따라 상품 정보가 달라질 수 있습니다.</span></h3>        <div class="set-box">         <strong>오늘드림 배송 설정 하기</strong>         <p>상세 페이지에서 오늘드림 배송으로 선택돼요</p>         <div class="toggleInput">          <label id="tddlvr_switch" class="switch">           <input id="tddlvr_todayDeliveryFlagCheckbox" type="checkbox">           <span id="tddlvr_slider" class="slider"></span>          </label>         </div>        </div>       </div>       <div class="inner box-cont">        <div class="addr-list-wrap">         <div class="mCustomScrollbar _mCS_1 mCS_no_scrollbar"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 300px;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">          <ul class="addr-list"></ul>         </div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>        </div>       </div>       <div id="callRegDeliveryAddressButton" class="add-address-box">        <a class="btnTy btn-plus" data-rel="layer" href="#">새 배송지 추가</a>       </div>      </div>     </div></li>
			<!-- // 오늘드림 플래그 개인화 노출 2차 POC 추가 -->
			<li class="store">
				<a href="#" class="mymenu_layer" title="관심 매장소식 자세히보기 열기/닫기">관심 매장소식</a>
				<div class="alim_box">
					<p class="store_desc"><span>로그인</span>하시면 자주가는 매장을 <br>관심 매장으로 설정 할 수 있습니다.</p>
					<button class="mymenu_btn" onclick="javascript:common.link.moveLoginPage();">로그인</button>
				</div>
			</li>
			<li class="recent">
				<a href="javascript:;" class="mymenu_layer" title="최근 본 상품 자세히보기 열기/닫기">최근 본 상품</a>
				<div class="recent_prd_box" style="min-height:510px;">
					<p class="recent_tit">전체 <span>0</span>개
					</p><div class="no_data" style="display:block;">
						최근 본 상품이 없습니다.
					</div>
				</div>
			</li>
		</ul>
	</div>
	<div class="header_design_area"></div>
</div>
	<div id="Gnb" class="main gen1">
		<div id="gnbWrap">
			<a href="#" id="btnGnbOpen">카테고리</a>
			<div class = "layer_all_menu">
				<ul class="all_menu_wrap">
					<c:forEach items="${totMap}" var="totMap">
						<li>
							<h2>${totMap.key.ca_name}</h2>
							<c:forEach items="${totMap.value}" var="midMap" varStatus="i">
								<c:if test="${i.begin or i.index%4 == 0}"><div class="sub_menu_box"></c:if>
								<p class="sub_depth"><a href="/olive/productMCate.do?ca_code=${midMap.key.ca_code}">${midMap.key.ca_name}</a></p>
								<ul>
									<c:forEach items="${midMap.value}" var="bottList">
										<li><a href="/olive/productSCate.do?ca_code=${bottList.ca_code}">${bottList.ca_name}</a></li>
									</c:forEach>
								</ul>
								<c:if test="${i.end or i.index%4 == 3}"></div></c:if>
							</c:forEach>
						</li>
					</c:forEach>
				</ul>
			</div>
			<ul class="gnb_menu_list">
				<li><a href="<%=request.getContextPath()%>main/getHotdealList.do"><span>오특</span></a></li>
				<li><a href="<%=request.getContextPath()%>main/getNewList.do"><span>신상</span></a></li>
				<li><a href="<%=request.getContextPath()%>main/getBestList.do"><span>랭킹</span></a></li>
				<li><a href="<%=request.getContextPath()%>planshop/getSpcShopDetail.do?dispCatNo=500000200080001"><span>프리미엄관</span></a></li>
				<li><a href="<%=request.getContextPath()%>main/getPlanShopList.do"><span>기획전</span></a></li>
				<li><a href="<%=request.getContextPath()%>main/getSaleList.do"><span>세일</span></a></li>
				<li><a href="<%=request.getContextPath()%>giftCardGuide/getGiftCardGuide.do"><span>기프트카드</span></a></li>
				<li><a href="<%=request.getContextPath()%>main/getMembership.do"><span>멤버십/쿠폰</span></a></li>
				<li><a href="<%=request.getContextPath()%>main/getEventList.do"><span>이벤트</span></a></li>
			</ul>
		</div>
		<div class="main_cate_wrap">
			<ul class="main_cate_list">

				<c:forEach items="${midCaPrMap}" var="midCaPrEntity">
					<li class="type2">
						<a href="" class="main_menu">${midCaPrEntity.key.ca_name}</a>
						<div class="lnb_ban_box" style="left:170px;">
							<a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?${midCaPrEntity.value.pr_code}" >
								<div class="ban_info">
									<p class="ban_name">MD's Pick</p>
									<div class="tit_group">
										<p class="tit_m">${midCaPrEntity.value.br_name}</p>
										<p class="tit_s">${midCaPrEntity.value.pr_name}</p>
									</div>
									<div class="price_group">
										<p class="price_s">${midCaPrEntity.value.prpri_price}<em>원</em></p>
										<p class="price_m">${midCaPrEntity.value.realPrice}<em>원</em></p>
									</div>
								</div>
								<div class="ban_thum">
									<img src="${midCaPrEntity.value.prm_url}" alt="">
								</div>
							</a>
						</div>
					</li>
				</c:forEach>

				<li class="lst">
					<a href="" class="main_menu">
						<span class="icon_awards">AWARDS</span>
					</a>
				</li>
			</ul>
		</div>
	</div>
	<script>
		$("#btnGnbOpen").click(function (event) {
			event.preventDefault(); //클릭 시, #으로 새로고침 되는 상황 제거
			$(this).toggleClass("active"); // 카테고리 버튼 색 주는 css 토글
			$(".layer_all_menu").toggleClass("active"); // 카테고리 메뉴 block-none 토글
		})
	</script>

	<script>
		$(".main_cate_wrap").mouseover(function (event) {
			$(this).addClass("active");
		})
		$(".main_cate_wrap").mouseout(function (event) {
			$(this).removeClass("active");
		})
		$(".main_cate_list>li").mouseover(function (event) {
			$(this).addClass("on")
			$(this).children(".lnb_ban_box").addClass("on");
		})
		$(".main_cate_list>li").mouseout(function (event) {
			$(this).removeClass("on")
			$(this).children(".lnb_ban_box").removeClass("on");
		})
	</script>

		<div class="top_util">
			<ul class="menu_list" id="menu_list_header">
				<li class="join"><a href="javascript:common.link.moveJoinMember();" data-attr="공통^헤더^회원가입">회원가입</a></li>
				<li class="login"><a href="javascript:common.link.moveLoginPage();" data-attr="공통^헤더^로그인">로그인</a></li>
				<li class="cart"><a href="javascript:common.link.moveCartPage();" data-attr="공통^헤더^장바구니">장바구니<span id="cartToCnt"></span></a></li>
				<li class="order"><a href="javascript:common.link.moveOrderList();" data-attr="공통^헤더^주문배송">주문배송</a></li>
				<li class="customer"><a href="javascript:common.faq.getFaqList('99');" data-attr="공통^헤더^고객센터">고객센터</a></li>
				<li class="store"><a href="javascript:common.link.moveStoreMain();" data-attr="공통^헤더^매장안내">매장안내</a></li>
				<li class="global"><a href="http://global.oliveyoung.com" target="_blank" title="올리브영 글로벌 새창으로 열기" data-attr="공통^헤더^Global">Global</a></li>
			</ul>
		</div>
		
		<div class="header_inner">
            <h1><a href="#"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png" alt="올리브영"></a></h1>
			
			<div class="search_box" id="w_search_box">
				<input type="hidden" name="chkButton" id="chkButton" value="">		
	
				<div class="placeholder_area">
					<!-- onkeypress="javascript:pressCheck_WEB_MainSearch((event),this);" onkeydown="javascript:downCheck_WEB_MainSearch((event));" -->
					<label for="query">검색어를 입력하세요</label><input type="text" id="query" name="" value="" class="inp_placeholder" data-placeholder="사티아 나그참파 단독증정🌿" data-ref-linkurl="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=500000101440224" autocomplete="off">
				</div>
				
				<button id="searchSubmit">검색</button>

				<!-- 검색 레이어 영역 (디자인 수정 예정) -->
				<div class="search_layer">
					<span class="search_layer_before"></span><!-- !!!!! 예린 추가 -->
					<div class="layer_inner">
						<!-- 2017-02-07 수정 : 자동완성기능 영역 -->
						<div class="auto_search_cont">
							<div class="brand_area" id="ark_brand"></div>							
							<div class="auto_list" id="ark_w"></div>
						</div>
						<!--// 2017-02-07 수정 : 자동완성기능 영역 -->
					
						<!-- 최근 검색어 -->						
						<a href="#" class="search_tab tab01" id="searchRecent">최근 검색어</a><!-- 현재 보여지는 탭에 클래스 on 넣어주세요 -->
						<div class="search_tab_cont" id="recent_cont">
							<ul id="mykeyword">							
								<!-- 검색 기록이 없을 경우 -->								 
 							<li class="no_data" id="recent_no_data" style="display:none;">최근 검색한 기록이 없습니다.</li>
								<!--// 검색 기록이 없을 경우 -->
								<!-- 검색 저장 기능이 꺼져있을 경우 -->
<!-- 							<li class="no_data" id="recent_no_save" style="display:none;">최근 검색어 저장 기능이 꺼져있습니다.</li> -->
								<!--// 검색 저장 기능이 꺼져있을 경우 -->								
							</ul>
							<div class="search_set_area">
								<a href="#" class="sch_all_del" onclick="javascript:deleteCookies();">전체 삭제</a>																						
<!-- 										<a href="#" class="sch_save"></a>																		 -->
										<a href="#" class="sch_save">검색어 저장 끄기</a>																		
							</div>
						</div>
						
						<!--// 최근 검색어 -->
						<!-- 급상승 검색어 -->
						<a href="#" class="search_tab tab02" id="searchPop">급상승 검색어</a>
						<div class="search_tab_cont sharp_rise" id="w_pop_cont" style="display: none;">
							<ul id="mainPopword">
								<li class="top">
            						<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
                						<span>1</span>
										<strong>롬앤</strong>
										<span class="rate"><span>&nbsp;</span></span>
									</a>
       							 </li>
								<li class="top">
            						<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
                						<span>2</span>
										<strong>롬앤</strong>
										<span class="rate"><span>&nbsp;</span></span>
									</a>
       							 </li>
								<li class="top">
            						<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
                						<span>3</span>
										<strong>롬앤</strong>
										<span class="rate"><span>&nbsp;</span></span>
									</a>
       							 </li>
								<li class="">
            						<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
                						<span>4</span>
										<strong>롬앤</strong>
										<span class="rate"><span>&nbsp;</span></span>
									</a>
       							 </li>
								<li class="">
            						<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
                						<span>5</span>
										<strong>롬앤</strong>
										<span class="rate"><span>&nbsp;</span></span>
									</a>
       							 </li>
								<li class="">
            						<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
                						<span>6</span>
										<strong>롬앤</strong>
										<span class="rate dn"><span>2</span></span>
									</a>
       							 </li>
								<li class="">
            						<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
                						<span>7</span>
										<strong>롬앤</strong>
										<span class="rate"><span>&nbsp;</span></span>
									</a>
       							 </li>
								<li class="">
            						<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
                						<span>8</span>
										<strong>롬앤</strong>
										<span class="rate"><span>&nbsp;</span></span>
									</a>
       							 </li>
								<li class="">
            						<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
                						<span>9</span>
										<strong>롬앤</strong>
										<span class="rate up"><span>5</span></span>
									</a>
       							 </li>
								<li class="">
            						<a href="#" onclick="javascript:popwordSearchdo('롬앤','Pop_PROD');" data-attr="공통^통합검색_급상승검색어^롬앤">
                						<span>10</span>
										<strong>롬앤</strong>
										<span class="rate"><span>&nbsp;</span></span>
									</a>
       							 </li>       							        							        							        							        							        							        							 
							</ul>
							<div class="search_set_area"> 
								<a href="#" class="sch_pop_close">닫기</a>
							</div>
						</div>
						
						<!--// 인기 검색어 -->						
						<!-- 검색창 TOP3 상품 뿌리기 -->
						<div class="scp_cont" id="scp_cont_id" style="display: block;">
							<h3>할인 TOP3 상품</h3>
							<div class="scp_slide"><!-- 배너 이미지 사이즈 -->
							
							  <div class="FadeDot banner_wrap slick-initialized slick-slider slick-dotted" role="toolbar">
							  
							  	<button type="button" data-role="none" class="slick-prev slick-arrow slick-disabled" aria-label="Previous" role="button" aria-disabled="true" style="display: inline-block;">Previous</button>
					  		  	<div aria-live="polite" class="slick-list draggable">
			                  		<div class="slick-track" style="opacity: 1; width: 780px;" role="listbox">
							        	
							        	<c:if test="${not empty searchTop3List }">
							                <c:forEach items="${searchTop3List }" var="top3List">
							                <div class="moveGoodsBtn slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 260px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;" tabindex="-1" role="option" aria-describedby="slick-slide90">
												<a href="#"><!-- 상품이미지 클릭시 상품 상세페이지로 이동시키기 -->
													<div class="scp_thumb">
														<img src="${top3List.prm_url }" alt="TOP3 상품이미지">
													</div>
											  	<div class="scp_txt">
													<span class="brand">${top3List.br_name }</span>
													<span class="tit">${top3List.pr_name }</span>
													<span class="price"><span class="sale_pr">${top3List.prpri_price }<em>원</em></span> ${top3List.realPrice }<em>원</em></span>
											 	</div>
											  	<input type="hidden" name="goodsNo" value="A000000006670" tabindex="0">
									          	<input type="hidden" name="idxNo" value="0" tabindex="0">
											   </a>
											</div>
							                </c:forEach>
							            </c:if>
									</div><!-- slick-track -->
								</div><!-- polite -->

								<button type="button" data-role="none" class="slick-next slick-arrow" aria-label="Next" role="button" style="display: block;" aria-disabled="false"> </button>
								
								<ul class="slick-dots" style="display: block;" role="tablist">
									<li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation90" id="slick-slide90">
										<button type="button" data-role="none" role="button" tabindex="0">1</button>
									</li>
									<li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation91" id="slick-slide91">
										<button type="button" data-role="none" role="button" tabindex="0">2</button>
									</li>
								
									<li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation92" id="slick-slide92">
										<button type="button" data-role="none" role="button" tabindex="0">3</button>
									</li>
								</ul>
								</div><!-- FadeDot banner_wrap slick-initialized slick-slider slick-dotted -->
							</div><!-- scp_slide -->
						</div><!-- scp_cont -->
						<!-- //SCP추가 -->
						<span class="search_layer_after"></span><!-- !!!!! 예린 추가 -->
					</div>
				</div>
				<!--// 검색 레이어 영역 -->
			</div>
			<!--// 검색영역 -->
			
			<ul class="mymenu_area">
				<!-- 오늘드림 플래그 개인화 노출 2차 POC 추가 -->
				<li id="todayDeliveryContainer" class="delivery"><a href="javascript:;" id="tddlvr_header_today_icon" class="mymenu_layer" title="오늘드림 자세히보기 열기/닫기">오늘드림</a>     <!-- 배송지 미등록 / 배송주소 출력-->     <div class="delivery_box_wrap" style="display: none;"><div class="delivery_box"><p class="dTxt">배송지를 등록하고 오늘드림으로 구매 가능한 상품을 확인하세요!</p></div></div>     <!--// 배송지 미등록 / 배송주소 출력-->     <!-- 배송지 설정-->     <div class="delivery_addr" style="display:none">      <div class="addr_box">       <div class="inner box-head">        <h3 class="tit01">배송지<span>배송지에 따라 상품 정보가 달라질 수 있습니다.</span></h3>        <div class="set-box">         <strong>오늘드림 배송 설정 하기</strong>         <p>상세 페이지에서 오늘드림 배송으로 선택돼요</p>         <div class="toggleInput">          <label id="tddlvr_switch" class="switch">           <input id="tddlvr_todayDeliveryFlagCheckbox" type="checkbox">           <span id="tddlvr_slider" class="slider"></span>          </label>         </div>        </div>       </div>       <div class="inner box-cont">        <div class="addr-list-wrap">         <div class="mCustomScrollbar _mCS_1 mCS_no_scrollbar"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: 300px;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">          <ul class="addr-list"></ul>         </div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>        </div>       </div>       <div id="callRegDeliveryAddressButton" class="add-address-box">        <a class="btnTy btn-plus" data-rel="layer" href="#">새 배송지 추가</a>       </div>      </div>     </div></li>
				<!-- // 오늘드림 플래그 개인화 노출 2차 POC 추가 -->
				<li class="store">
					<a href="#" class="mymenu_layer" title="관심 매장소식 자세히보기 열기/닫기">관심 매장소식</a>
					<div class="alim_box">
						<p class="store_desc"><span>로그인</span>하시면 자주가는 매장을 <br>관심 매장으로 설정 할 수 있습니다.</p>
						<button class="mymenu_btn" onclick="javascript:common.link.moveLoginPage();">로그인</button>
					</div>
				</li>
				<li class="recent">
					<a href="javascript:;" class="mymenu_layer" title="최근 본 상품 자세히보기 열기/닫기">최근 본 상품</a>
					<div class="recent_prd_box" style="min-height:510px;">
						<p class="recent_tit">전체 <span>0</span>개
						</p><div class="no_data" style="display:block;">
							최근 본 상품이 없습니다.
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="header_design_area"></div>
	</div><!-- Header -->
	
<div id="Container">
 <div id="Contents">
	 <%--메인 배너--%>
		 <div class="main_full_banner">
			 <div class="banner_wrap slick_slider slick-initialized slick-slider" id="mainFullSlider">
				 <div aria-live="polite" class="slick-list draggable">
					 <div class="slick-track">
						 <c:forEach items="${mainFullBannerDTOList}" var="mainFullBanner">
							 <div>
								 <a class="banner_link"  href="">
									 <p class="banner_desc">
										 <span class="tit" style="color: #fff;">올영P!CK</span>
										 <strong style="color: #fff;">${mainFullBanner.banner_title}</strong>
										 <span style="color: #fff;">${mainFullBanner.banner_desc}</span>
									 </p>
									 <img src="${mainFullBanner.banner_img}" alt="${mainFullBanner.banner_title}">
								 </a>
							 </div>
						 </c:forEach>
					 </div>
				 </div>
				 <button id="mainSliderBtn">멈춤</button>
			 </div>
		 </div>
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
 
</div><!-- Contents -->
</div><!-- Container -->

	<jsp:include page="layout/footer.jsp"></jsp:include>
</div><!-- Wrapper -->


<%--메인배너 슬릭--%>

<script>
	$(".main_full_banner .slick-track").slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		fade: true,
		autoplay: true,
		autoplaySpeed: 6000,
	});
</script>
<script>	
// 검색창 부분
 	$(".inp_placeholder").on("click", function () {
		$(".search_layer").css("display", "block");
		// $(".header_inner .search_box .search_layer .search_tab_cont").css("display", "block");
		$(".inp_placeholder").focus();
		$(".inp_placeholder").prev().css("display", "none");/* label 태그 숨김 */
		$("#searchRecent").addClass('on');
		$("#searchPop").removeClass("on");
		$(".no_data").css("display", "block"); // 급상승검색어 일 때는 안뜨게 바꾸기 **
	}); 
	
	$("#searchRecent").on("click", function () {
		$(this).addClass('on');
		$("#searchPop").removeClass("on");
		$(".no_data").css("display", "block");
		$("#w_pop_cont").css("display", "none");
	});
	
	$("#searchPop").on("click", function () {
		$(this).addClass('on');
		$("#searchRecent").removeClass("on");
		$(".no_data").css("display", "none");
		$("#w_pop_cont").css("display", "block");
	});
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

</body>
</html>