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
<style>
/* 공통 적용 */
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
<style>
/* 장바구니 부분 스타일 */
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
</style>
<style>
.title_box {
    overflow: hidden;
    height: 140px;
    border-radius: 5px;
    z-index: 0;
}
.title_box:before {
    content: '';
    position: absolute;
    width: 100%;
    height: 140px;
    left: 50%;
    margin-left: -50%;
    background: #ffeeda url(https://image.oliveyoung.co.kr/uploads/contents/main/top/bg_order_top.png) no-repeat 50% 0;
    z-index: -1;
}
.title_box h1 {
    float: left;
    padding: 37px 0 0;
    font-size: 40px;
    color: #000;
    line-height: 40px;
}
.title_box h1>span {
    display: inline-block;
    width: 36px;
    height: 36px;
    line-height: 36px;
    font-size: 16px;
    color: #fff;
    background: #ff2828;
    border-radius: 18px;
    text-align: center;
    vertical-align: 10px;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.title_box .step_list {
    float: right;
}
.title_box .step_list>li.on {
    color: #000;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bg_step_on.png) no-repeat 100% 50%;
}
.title_box .step_list>li {
    float: left;
    height: 120px;
    padding: 0 30px 0 20px;
    line-height: 120px;
    text-align: center;
    font-size: 24px;
    color: #8b8176;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bg_step.png) no-repeat 100% 50%;
    white-space: nowrap;
}
/* hide 굳이? */
.hide {
    position: absolute;
    top: -99999px;
    left: -99999px;
    font-size: 0;
    visibility: hidden;
    width: 0;
    height: 0;
    font-size: 0;
    line-height: 0;
    text-indent: -99999px;
}
.title_box .step_list>li.on .step_num {
    color: #333;
}
.title_box .step_list>li .step_num {
    display: inline-block;
    margin-right: 5px;
    font-size: 20px;
    color: #8b8176;
    vertical-align: top;
}
.title_box .step_list>li .step_num:before {
    content: '0';
}
.title_box .step_list>li.last {
    background: 0 0;
    padding-right: 0;
}
.title_box .step_list:after {
    content: '';
    display: block;
    clear: both;
}
.title_box:after {
    content: '';
    position: absolute;
    display: block;
    width: 1020px;
    height: 20px;
    margin: 110px 0 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bg_line.gif) no-repeat 50% 10px;
}

/* 멤버십 박스 영역 스타일 */
.membership_box {
    overflow: hidden;
    height: 103px;
    padding: 9px 0 25px;
    border-bottom: 1px solid #e6e6e6;
}
.membership_box .tx_grade_info {
    float: left;
    width: 338px;
    padding: 6px 30px 0 30px;
    font-size: 20px;
    color: #222;
    line-height: 28px;
}
.membership_box .tx_grade_info strong {
    font-weight: 400;
}
/* 멤버십등급 이름에 따라 색상 다르게 적용할 부분 */
.membership_box.iconGrade4 .tx_grade_info .grade {
    color: #eb6d9a;
}
.membership_box .membership_info_list {
    float: left;
    overflow: hidden;
    margin-left: 50px;
}
.membership_box .membership_info_list>li:first-child {
    width: 120px!important;
}
.membership_box .membership_info_list>li {
    float: left;
    width: 170px;
    height: 68px;
    text-align: center;
    color: #222;
}
.membership_box .membership_info_list>li+li {
    padding: 10px 0 0;
    border-left: 1px solid #e6e6e6;
    color: #333;
}
.membership_box .membership_info_list>li a {
    color: #333;
    display: block;
}
.membership_box .membership_info_list>li strong {
    display: block;
    margin-bottom: 8px;
}

.membership_box .membership_info_list>li .own_point {
    display: block;
    font-size: 12px;
}
.membership_box .membership_info_list>li .own_point .tx_num {
    margin-right: 2px;
    font-size: 18px;
    color: #f27370;
    vertical-align: -1px;
}

.membership_box.iconGrade4 .membership_info_list>li .grade_benefit {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/mypage/icon_rating_pink_on.svg) no-repeat center 0;
}
.membership_box .membership_info_list>li .grade_benefit {
    display: inline-block;
    width: 60px;
    padding: 45px 0 0;
    font-size: 12px;
}
.membership_box .membership_info_list>li a {
    color: #333;
    display: block;
}
.membership_box .membership_info_list>li .grade_benefit>span {
    display: inline-block;
    padding-right: 13px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow6x11.png) no-repeat 100% 4px;
    font-weight: 700;
}
.membership_box:after {
    content: '';
    display: block;
    clear: both;
}
/* 일반배송, 오늘드림 탭 영역 */
.comm5sTabs {
    overflow: hidden;
    width: 1020px;
    margin: 30px auto 0;
    padding-bottom: 5px;
}
.comm5sTabs li {
    position: relative;
    float: left;
    width: 50%;
}
.comm5sTabs li.on:before {
    position: absolute;
    content: '';
    bottom: -5px;
    left: 50%;
    width: 12px;
    height: 5px;
    margin-left: -6px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bg_tab_arrow.png) no-repeat 0 0;
}
/* 선택한 탭의 색상 바꾸는 스타일 */
.comm5sTabs li.on button {
    color: #fff;
    background: #555!important;
}
.comm5sTabs li button {
    width: 100%;
    height: 50px;
    background: #f6f6f6;
    color: #666;
    font-size: 18px;
    line-height: 24px;
    font-weight: 400;
}
.comm5sTabs li button {
    width: 100%;
    height: 50px;
    background: #f6f6f6;
    color: #666;
    font-size: 18px;
    line-height: 24px;
    font-weight: 400;
}
.sub-title2 {
    width: 1020px;
    margin: 40px auto 10px;
    color: #333;
    font-size: 20px;
    font-weight: 400;
}
.tbl_prd_list.tableFix {
    table-layout: fixed;
}
.tbl_prd_list {
    width: 100%;
}
table {
    border-spacing: 0;
    border: 0;
}
caption {
    width: 0;
    height: 0;
    text-indent: -9999px;
}
.tbl_prd_list thead th {
    height: 40px;
    border-top: 2px solid #d6d6d6;
    border-bottom: 1px solid #ccc;
    background: #fafafa;
}
input[type=checkbox]:checked:disabled, input[type=checkbox]:checked:read-only {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png) no-repeat 0 -20px;
}
.tbl_prd_list tbody td input[type=checkbox], .tbl_prd_list thead th input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin: 0 auto;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}
.tbl_prd_list thead th {
    height: 40px;
    border-top: 2px solid #d6d6d6;
    border-bottom: 1px solid #ccc;
    background: #fafafa;
}
.tbl_prd_list tbody td {
    border-bottom: 1px solid #e6e6e6;
    text-align: center;
}
.tbl_prd_list .tbl_cont_area {
    display: table-row;
}
.tbl_prd_list .tbl_cont_area .tbl_cell.w40 {
    width: 40px;
}
.tbl_prd_list .tbl_cont_area .tbl_cell.w390 {
    width: 390px;
}
.tbl_prd_list .tbl_cont_area .tbl_cell {
    display: table-cell;
    vertical-align: middle;
}
.tbl_prd_list tbody td .prd_info {
    display: table-cell;
    position: relative;
    height: 145px;
    padding: 30px 30px 30px 125px;
    border-left: 0;
    text-align: left;
    vertical-align: middle;
}
.tbl_prd_list tbody td .prd_info .prd_img {
    position: absolute;
    top: 50%;
    left: 0;
    width: 125px;
    height: 85px;
    margin-top: -42px;
    text-align: center;
}
a {
    color: #666;
    text-decoration: none;
}
.tbl_prd_list tbody td .prd_info .prd_img img {
    width: auto!important;
    max-width: 85px;
    height: auto!important;
    max-height: 85px;
}
.tbl_prd_list tbody td .prd_info .prd_name {
    display: inline-block;
    margin-bottom: 5px;
}
.tbl_prd_list tbody td .prd_info .prd_name>span {
    display: block;
    margin-bottom: 4px;
    color: #777;
    font-weight: 700;
}
.tbl_prd_list tbody td .prd_info .prd_name>p {
    overflow: hidden;
    max-height: 36px;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    word-break: normal;
    font-size: 14px;
    line-height: 18px;
    color: #000;
}
.tbl_prd_list tbody td .prd_info .prd_opt {
    margin-bottom: 5px;
    color: #888;
    font-size: 12px;
    font-weight: 700;
}
.prd_flag {
    overflow: hidden;
}
.icon_flag.sale {
    background-color: #f65c60;
}
.prd_flag span {
    float: left;
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
.tbl_prd_list .tbl_cont_area .tbl_cell.w110 {
    width: 110px;
    border-left: 1px solid #e6e6e6;
}
.tbl_prd_list tbody td .cur_price {
    display: block;
    color: #222;
    font-weight: 500;
}
.tbl_prd_list .tbl_cont_area .tbl_cell.w100 {
    width: 100px;
    border-left: 1px solid #e6e6e6;
}
.tbl_prd_list tbody td .prd_cnt {
    width: 60px;
    margin: 0 auto;
}
.tbl_prd_list tbody td .prd_cnt select {
    width: 60px;
    height: 28px;
    padding: 0 0 0 10px;
    border-color: #ccc;
    font-size: 12px;
}
.tbl_cont_area select {
    background: #fff;
}

.tbl_prd_list tbody td .prd_cnt+button {
    width: 60px;
    margin: 5px 0 0;
}
.btnMedium.wGray, .btnSmall.wGray {
    border: 1px solid #aaa;
    color: #666;
    background: #fff;
}
.btnSmall {
    height: 28px;
    padding: 0 5px;
    font-size: 12px!important;
    line-height: 28px;
    border-radius: 5px;
}
.btnSmall>span {
    display: inline-block;
    min-width: 40px;
}
.tbl_prd_list .tbl_cont_area .tbl_cell.w110 {
    width: 110px;
    border-left: 1px solid #e6e6e6;
}
.tbl_prd_list tbody td .org_price {
    display: block;
    font-size: 12px;
    color: #b5b5b5;
    text-decoration: line-through;
}
.tbl_prd_list tbody td .org_price .tx_num {
    font-weight: 400;
}
.tbl_prd_list tbody td .pur_price {
    display: block;
    color: #e02020;
    font-weight: 500;
}
.tbl_prd_list .tbl_cont_area .tbl_cell.w120 {
    width: 120px;
    border-left: 1px solid #e6e6e6;
}
.tbl_prd_list tbody td .prd_delivery {
    color: #666;
    font-size: 12px;
}
.tbl_prd_list tbody td .prd_delivery strong {
    display: block;
    color: #333;
    font-size: 14px;
}
.tbl_prd_list tbody td .prd_delivery .ex {
    display: block;
    color: #666;
    font-size: 12px;
    font-weight: 400;
}
.tbl_prd_list .tbl_cont_area .tbl_cell.w150 {
    width: 150px;
    border-left: 1px solid #e6e6e6;
}
.tbl_prd_list tbody td .btn_group .btnSmall {
    width: 109px;
    margin-bottom: 5px;
}
.btnMedium.wGreen, .btnSmall.wGreen {
    border: 1px solid #9bce26;
    color: #9bce26;
    background: #fff;
}
.tbl_prd_list tbody td .btn_group .btnSmall.zzim {
    padding-left: 23px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_btn_zzim.png) no-repeat 30px 8px;
}
.oyblind {
    overflow: hidden;
    position: absolute;
    top: 0;
    left: 0;
    clip: rect(0 0 0 0);
    width: 0;
    height: 0;
    margin: -1px;
    padding: 0;
    border: 0;
}
.tbl_prd_list tbody td .btn_group .btnSmall.delete {
    padding-left: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_btn_del.png) no-repeat 35px 8px;
}

.basket_price_info {
    overflow: hidden;
    margin: 10px 0 0;
}
.basket_price_info .btn_area {
    float: left;
    width: 300px;
}
.btnSmall.type2 {
    padding: 0 15px;
}
.basket_price_info .sum_price {
    font-weight: 700;
}
.basket_price_info .sum_price {
    color: #666;
}
.basket_price_info .sum_price {
    float: right;
    width: 700px;
    margin: 5px 0 0;
    color: #222;
    line-height: 18px;
    text-align: right;
}
.basket_price_info .sum_price .tx_num {
    margin-right: 1px;
    font-size: 16px;
    font-weight: 500;
}
.basket_price_info .sum_price .tx_sign {
    margin: 0 5px;
}
.tx_sign.minus {
    background-position: 0 50%;
}
.tx_sign {
    display: inline-block;
    width: 10px;
    height: 10px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_sign_cal.png) no-repeat 0 0;
    text-indent: -9999px;
    overflow: hidden;
    text-align: left;
}
.basket_price_info .sum_price .tx_num {
    margin-right: 1px;
    font-size: 16px;
    font-weight: 500;
}
.tx_sign.plus {
    background-position: -20px 50%;
}
.tx_sign.equal {
    background-position: -40px 50%;
}
.basket_price_info .sum_price .tx_total_price {
    font-size: 14px;
    color: #f27370;
}
.basket_price_info .sum_price .tx_total_price .tx_price {
    font-weight: 700;
}
.basket_price_info .sum_price .tx_total_price .tx_price {
    color: #f27370;
}
.basket_price_info .sum_price .tx_total_price .tx_num {
    margin-left: 9px;
    font-size: 16px;
    color: #f27370;
    font-weight: 500;
}

/* 총 판매가 스타일 영역 */
.total_price_info {
    margin: 60px 0 0;
    border-top: 2px solid #9bce26;
    border-bottom: 1px solid #e6e6e6;
}
.total_price_info .detail_price {
    position: relative;
    overflow: hidden;
    width: 100%;
    height: 110px;
    font-weight: 700;
}
.total_price_info .detail_price>p:first-child {
    border-left: 1px solid #efefef;
}
.total_price_info .detail_price>p {
    float: left;
    width: 340px;
    height: 110px;
    padding: 30px 0 0;
    text-align: center;
    font-size: 16px;
    color: #666;
    border-right: 1px solid #efefef;
}
.total_price_info .detail_price>p .tx_num {
    font-size: 24px;
    margin-right: 2px;
    vertical-align: -2px;
}
.total_price_info .detail_price .tx_sign2.minus {
    top: 50%;
    left: 340px;
}
.total_price_info .detail_price .tx_sign2 {
    position: absolute;
    margin: -15px 0 0 -15px;
}
.tx_sign2.minus {
    background-position: 0 0;
}
.tx_sign2 {
    display: inline-block;
    width: 30px;
    height: 30px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_sign_cal2.png) no-repeat 0 0;
    text-indent: -9999px;
    overflow: hidden;
}
.total_price_info .detail_price>p.tx_sale>span {
    color: #f27370;
}
.total_price_info .detail_price .tx_sign2.plus {
    top: 50%;
    left: 680px;
}
.total_price_info .sum_price {
    color: #333;
}
.total_price_info .sum_price {
    height: 80px;
    padding: 30px 30px 0;
    text-align: right;
    background: #f6f6f6;
    border-top: 2px solid #d6d6d6;
    font-size: 22px;
    color: #222;
    font-weight: 700;
    position: relative;
}
.total_price_info .sum_price .tx_text {
    position: absolute;
    top: 50%;
    left: 30px;
    height: 30px;
    margin-top: -11px;
    color: #888;
    font-size: 14px;
    line-height: 22px;
}
.total_price_info .sum_price .tx_text:before {
    content: '';
    display: inline-block;
    width: 22px;
    height: 22px;
    margin: 0 7px 2px 0;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow_01.gif) no-repeat;
    vertical-align: middle;
}
.total_price_info .sum_price .tx_price {
    color: #ff2828;
    font-size: 16px;
}
.total_price_info .sum_price .tx_num {
    margin-left: 10px;
    font-size: 26px;
    margin-right: 2px;
    vertical-align: -2px;
}
.total_price_info .detail_price>p>span {
    color: #333;
}
.total_price_info .detail_price>p>span {
    display: block;
    color: #222;
    margin-top: 10px;
}

/* 주문버튼 스타일 */
.order_btn_area {
    margin: 30px 0 0;
    text-align: center;
}
.order_btn_area.order_cart button {
    width: 180px;
}
.order_btn_area button+button {
    margin-left: 7px;
}
.order_btn_area button {
    width: 130px;
    font-size: 16px;
}
.btnOrangeW, a.btnOrangeW {
    width: 100%;
    height: 50px;
    background-color: #fff;
    border: 1px solid #f27370;
    padding: 11px 0 9px;
    font-size: 16px;
    line-height: 28px;
    color: #f27370;
    border-radius: 5px;
}
.btnOrange, a.btnOrange {
    width: 100%;
    height: 50px;
    background-color: #f27370;
    padding: 11px 0 9px;
    font-size: 18px;
    line-height: 30px;
    border-radius: 5px;
}

.cart_comment {
    margin-top: 30px;
    padding: 20px 0;
    border-top: 1px solid #ccc;
}
.cart_comment p {
    font-size: 12px;
    color: #888;
    text-align: center;
    font-weight: 700;
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
		<!-- #Contents -->
		<form name="cartForm" id="cartForm">
		<input type="hidden" id="btnOrderTp" name="btnOrderTp" value="">
		<input type="hidden" id="cartNo" name="cartNo" value="">
		<input type="hidden" id="partYn" name="partYn" value="">
		<input type="hidden" id="optChgYn" name="optChgYn" value="Y">
		<input type="hidden" id="quickYn" name="quickYn" value="N">
		<input type="hidden" id="quickOrdPsbMaxQty" name="quickOrdPsbMaxQty" value="999">
		<input type="hidden" id="quickOrdTimeFrom" name="quickOrdTimeFrom" value="0">
		<input type="hidden" id="quickOrdTimeTo" name="quickOrdTimeTo" value="24">		
		<input type="hidden" id="o2oBlockInfo" name="o2oBlockInfo" value="{&quot;o2oBlockMsg&quot;:&quot;시스템점검으로 오늘드림 서비스에 제한이 있습니다.\n빠른 시간안에 서비스 재개 하도록 하겠습니다.&quot;,&quot;o2oBlockYn&quot;:&quot;N&quot;}">
		<input type="hidden" id="ktmDestYn" name="ktmDestYn" value="Y">
		<input type="hidden" id="oldAddrYn" name="oldAddrYn" value="Y"> <!-- 구주소 유효성 여부 -->
		<input type="hidden" id="orderStrNo" name="orderStrNo" value="">
		<input type="hidden" id="quickInfoYn" name="quickInfoYn" value="N">		
		
	<div id="Contents">
			<!-- title_box -->
			<div class="title_box">
				<h1>장바구니<span class="tx_num">2</span></h1><!-- span 태그 안에 장바구니에 담음 상품 수량 뿌리기 -->
				<ul class="step_list">
					<li class="on"><span class="hide">현재단계</span><span class="step_num tx_num">1</span> 장바구니</li><!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
					<li><span class="step_num tx_num">2</span> 주문/결제</li>
					<li class="last"><span class="step_num tx_num">3 </span> 주문완료</li>
				</ul>
			</div>
			<!--// title_box -->
			
			<!-- membership_box -->
			<div class="membership_box  iconGrade4">
				<p class="tx_grade_info"><strong>박예린</strong>님의 멤버십 등급은 <span class="grade">PINK OLIVE</span>입니다 </p>
				<ul class="membership_info_list">
					<li><a href="https://www.oliveyoung.co.kr/store/main/getMembershipBenefitInfo.do" class="grade_benefit"><span>등급혜택</span></a></li>
					<li><a href="https://www.oliveyoung.co.kr/store/mypage/getCJOnePointInfo.do"><strong><span class="tx_num">CJ ONE</span> 포인트</strong> 
						<span class="own_point">						
							<span class="tx_num">2,052</span>P
						</span></a></li>
					<li><a href="https://www.oliveyoung.co.kr/store/mypage/getCouponList.do"><strong>할인쿠폰</strong> <span class="own_point"><span class="tx_num">2</span>개</span></a></li>
					<li><a href="https://www.oliveyoung.co.kr/store/mypage/getDepositList.do"><strong>예치금</strong> <span class="own_point"><span class="tx_num">0</span>원</span></a></li>
				</ul>
			</div>
			<!--// membership_box -->
			
<!-- 일반배송, 당일배송 탭 -->
	<ul class="comm5sTabs" id="ulDelivGb">
		<li quickyn="N" class="on"><button type="button" data-attr="장바구니^Tab^일반 배송" title="선택됨">일반 배송 (2)</button></li>
		<li quickyn="Y"><button type="button" data-attr="장바구니^Tab^오늘 드림">오늘드림&amp;픽업 (0)</button></li>
	</ul>
<!--// 일반배송, 당일배송 탭 -->

		

			
			<!-- 올리브영 배송상품 -->			
			<h2 class="sub-title2">올리브영 배송상품</h2>			
			<table class="tbl_prd_list tableFix">
				<caption>상품정보, 판매가, 수량, 구매가, 배송정보, 선택으로 이루어진 올리브영 배송상품 장바구니 목록 표</caption>
				<colgroup>
					<col style="width:40px">
					<col style="width:*">
					<col style="width:110px">
					<col style="width:100px">
					<col style="width:110px">					
					<col style="width:120px"><!-- 2017-01-13 수정 -->
					<col style="width:150px">
				</colgroup>
				<thead>
				<tr>
					<th scope="col"><input type="checkbox" checked="" id="inp_allRe1" name="" value="" title="올리브영 배송상품 전체 선택"></th>
					<th scope="col">상품정보</th>
					<th scope="col">판매가</th>
					<th scope="col">수량</th>
					<th scope="col">구매가</th>					
					<th scope="col">배송정보</th>
					<th scope="col">선택</th>					
				</tr>
				</thead>
				<tbody>				
					<tr soldoutyn="N" cno="367587813" goodsno="A000000156060" itemno="001" lgcgoodsno="3423473020233" oripno="" pno="" promkndcd="" rsvsaleyn="N" drtpuryn="N" dispcatno="" buycondstrtqtyamt="" getcondstrtqtyamt="" pkggoodsno="" quickyn="N" strno="" criteo-goods="A000000156060001" trackingcd="Cat100000100050003_MID" gatecd="Main">
						<input type="hidden" id="soldout_yn" name="soldout_yn" value="N">
						<td colspan="7">			
						<div class="tbl_cont_area">		
							<!-- 쿠폰할인 : 즉시할인,상품할인 쿠폰 할인가 적용 -->
							<input type="hidden" id="saleCpnDcPrc" name="saleCpnDcPrc" value="0">
							<input type="hidden" id="goodsCpnYn" name="goodsCpnYn" value="N">
								<div class="tbl_cell w40">
									<input type="checkbox" saleprc="83800" orgsaleprc="129000" cpndcamt="0" ordqty="1" rsvstockqty="N" stockqty="10" checked="checked" id="inp_prd_chk1" name="s_checkbox1" soldoutyn="N" value="0" class="chkSmall" title="[돌체앤가바나 라이트블루 오드뚜왈렛 100ml] 선택">
									<input type="hidden" name="s_cart_no" value="367587813">
									<input type="hidden" name="s_prom_no" value="">
									<input type="hidden" name="s_buy_cond_strt_qty_amt" value="">
									<input type="hidden" name="s_disp_cat_no" value="">
									<input type="hidden" name="s_goods_no" value="A000000156060">
									<input type="hidden" name="s_item_no" value="001">
									<input type="hidden" name="s_cpn_dc_amt" value="0">
									<input type="hidden" name="s_org_sale_prc" value="129000">
									<input type="hidden" name="s_sale_prc" value="83800">
									<input type="hidden" name="s_drt_pur_yn" value="N">
									<input type="hidden" name="s_dlex_polc_no" value="1">
									<input type="hidden" name="s_trade_shp_cd" value="1">
									<input type="hidden" name="s_entr_no" value="C16761">
									<input type="hidden" name="s_sum_pkg_yn" value="Y">
									<input type="hidden" name="s_whsg_expc_dt" value="">
									<input type="hidden" name="s_dlex_free_yn" value="N">
								</div>
								<div class="tbl_cell w390">
									<div class="prd_info ">
										<a class="prd_img" href="javascript:common.link.moveGoodsDetail('A000000156060','');">	
											<img data-original="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0015/A00000015606001ko.jpg?l=ko" class="completed-seq-lazyload" alt="상품이미지" onerror="common.errorImg(this);" src="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0015/A00000015606001ko.jpg?l=ko">
										</a>
										<a class="prd_name" href="javascript:common.link.moveGoodsDetail('A000000156060','');">
											<span class="tx_sale_info"></span><!-- 브랜드명 및 할인정보 -->
											<span id="brandNm">돌체앤가바나 </span>
											<p id="goodsNm">돌체앤가바나 라이트블루 오드뚜왈렛 100ml</p>
										</a>
										<p class="prd_opt"></p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span>
										</p>
									</div>
								</div>
								<div class="tbl_cell w110">
									<span class="cur_price"><span class="tx_num">129,000</span>원</span>
								</div>
								<div class="tbl_cell w100">
									<div class="prd_cnt">
											<select class="amount" name="s_amount" prdtp="1" prdcnt="0" ordpsbminqty="1" ordpsbmaxqty="999" qtyaddunit="1" ordqty="1" title="상품 수량 선택">
												<option value="1" selected="">1</option>											
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
												<option value="10+">10+</option>
											</select>	
									</div>
									<button type="button" class="btnSmall wGray" style="display: none;" name="btnQtyMod"><span>변경</span></button>
								</div>
								<div class="tbl_cell w110">
										<span class="org_price">
											<span class="tx_num">129,000</span>원
										</span>
										<span class="pur_price"><span class="tx_num">83,800</span>원</span>
								</div>
								
								<div class="tbl_cell w120  "><!-- 합배송, 배송 예정 class / sum   delay추가 하기 -->
									<p class="prd_delivery">
										<strong id="deliStrongText">무료배송<span class="ex">도서·산간 제외</span></strong>
									</p>
								</div>
								
								<div class="tbl_cell w150">
									<div class="btn_group">
										<button id="367587813|A000000156060|001" type="button" class="btnSmall wGreen" name="btn_buy" data-attr="장바구니^장바구니바로구매^바로구매"><span data-attr="장바구니^장바구니바로구매^바로구매">바로구매</span></button><!-- 3440969_PM작업시 오늘드림 레이어 팝업 노출 요청 건 - obj인계 불가능에 따른 고유 ID 선언(즉시 구매 시, find로 찾기 위함) -->
										<!-- <button type="button" class="btnSmall wGray zzim " name="btnZzim" zim-on-off="" data-ref-goodsno="A000000156060"><span>쇼핑찜<span class="oyblind">해제됨</span></span></button> -->
										<button type="button" class="btnSmall wGray delete" name="btnDelete" data-attr="장바구니^장바구니상품삭제^삭제"><span data-attr="장바구니^장바구니상품삭제^삭제">삭제</span></button><!-- 버튼 공간(스페이스바)없이 붙여주세요. -->
									</div>
								</div>
						</div>
						</td>
					</tr>
				</tbody>
			</table><!--// 올리브영 배송상품 -->
			
			<!-- 올리브영 배송상품 결제금액 -->
			<div class="basket_price_info">
				<div class="btn_area">
					<button type="button" class="btnSmall wGray type2" id="partDelBtn1" name="partDelBtn"><span>선택상품 삭제</span></button> 
					<!-- <button type="button" class="btnSmall wGray type2" id="soldOutDelBtn1" name="soldOutDelBtn"><span>품절상품 삭제</span></button> -->
				</div>
				<div class="sum_price">총 판매가 <span class="tx_num">217,000</span>원 <span class="tx_sign minus">-</span> 총 할인금액 <span class="tx_num">71,600</span>원 <span class="tx_sign plus">+</span> 배송비 <span class="tx_num">0</span>원 <span class="span_quickDeliCharge" style="display:none;">(3!4!, 미드나잇 이용시)</span><span class="tx_sign equal">=</span> <span class="tx_total_price">총 결제금액 <span class="tx_price"><span class="tx_num">145,400</span>원</span></span></div>
			</div>
			<!--// 올리브영 배송상품 결제금액 -->
		
		<div class="total_price_info">
			<div class="detail_price">
				<p>총 판매가<span><span class="tx_num">217,000</span>원</span></p>
				<span class="tx_sign2 minus">-</span>
				<p class="tx_sale">총 할인금액<span><span class="tx_num">71,600</span>원</span></p>
				<span class="tx_sign2 plus">+</span>
				<p>배송비 <span><span class="tx_num">0</span>원</span></p>
			</div>	
			<div class="sum_price">
				<span class="tx_text">배송비는 쿠폰할인금액에 따라 변경될 수 있습니다.</span>
				총 결제예상금액 <span class="span_quickDeliCharge" style="display:none;">최소</span><span class="tx_price"><span class="tx_num">145,400</span>원</span>
			</div>	
		</div>
		
		<div class="order_btn_area order_cart">
			<button type="button" class="btnOrangeW" name="partOrderBtn" data-attr="장바구니^주문유형^선택주문">선택주문(2)</button>
			<button type="button" class="btnOrange" name="allOrderBtn" data-attr="장바구니^주문유형^전체주문">전체주문</button>
		</div>

		<!-- 2018-07-09 문구추가 -->
		<div class="cart_comment">
			<p>장바구니 상품은 90일동안, 판매종료 된 상품은 10일동안 보관됩니다.</p>
		</div>

		</div>
		</form>
		<!-- //#Contents -->	
	</div>
	
<div id="Footer" class="m2105">
		<div class="oneConts">
			<div class="conts">
				<ul class="list-menu">
					<li><a class="brandstory" href="https://www.oliveyoung.co.kr/store/company/brandStory.do">회사소개</a></li>
					<li><a class="recruit" href="https://www.oliveyoung.co.kr/store/company/recruit.do">채용안내</a></li>
					<li><a class="prvsuser" href="https://www.oliveyoung.co.kr/store/prvsuser/getPrvsuser.do">가맹점 개설문의</a></li>
					<li><a class="cjoyp" href="https://oypartner.cj.net/CJOYP/prvsuser/index/index.fo" target="_blank">상품입점 및 제휴문의</a></li>
<!-- 					<li><a class="cyberAudit" href="javascript:common.link.openCyberAudit();">사이버 감사실</a></li> -->
					<li><a class="cyberAudit" href="javascript:common.cyber.oyLayerOpen('cyberAuditPop',this);">사이버 감사실</a></li>
					<li><a class="faqList" href="javascript:common.faq.getFaqList('99');">고객센터</a></li>
				</ul>
				<div class="sel_family_group">
					<a href="#" class="sel_option" title="상세내용 보기">CJ그룹 계열사 바로가기</a>
					<div class="sel_option_list hide">
						<dl>
							<dt>CJ그룹</dt>
							<dd><a href="http://www.cj.net/" target="_blank" title="CJ 주식회사 새창으로 열기">CJ주식회사</a></dd>
						</dl>
						<dl>
							<dt>식품 &amp; 식품서비스</dt>
							<dd><a href="https://www.cj.co.kr/kr/index" target="_blank" title="CJ제일제당 (식품) 새창으로 열기">CJ제일제당</a></dd>
							<dd><a href="https://www.cjfoodville.co.kr/main.asp" target="_blank" title="CJ푸드빌 새창으로 열기">CJ푸드빌</a></dd>
							<dd><a href="http://www.cjfreshway.com/index.jsp" target="_blank" title="CJ프레시웨이 새창으로 열기">CJ프레시웨이</a></dd>
						</dl>
						<dl>
							<dt>생명공학</dt>
							<dd><a href="https://www.cj.co.kr/kr/about/business/bio" target="_blank" title="CJ제일제당 (바이오) 새창으로 열기">CJ제일제당 BIO사업부문</a></dd>
							<dd><a href="https://www.cj.co.kr/kr/about/business/bio" target="_blank" title="CJ Feed&amp;Care 새창으로 열기">CJ Feed&amp;Care</a></dd>
						</dl>
						<dl>
							<dt>물류 &amp; 신유통</dt>
							<dd><a href="https://www.cjlogistics.com/ko/main" target="_blank" title="CJ대한통운 새창으로 열기">CJ대한통운</a></dd>
							<dd><a href="http://www.cjenc.co.kr/kr/Default.asp" target="_blank" title="CJ대한통운 (건설) 새창으로 열기">CJ대한통운 건설부문</a></dd>
							<dd><a href="https://www.oliveyoung.co.kr/store/company/brandStory.do" target="_blank" title="CJ올리브영 새창으로 열기">CJ올리브영</a></dd>
							<dd><a href="https://www.cjolivenetworks.co.kr:449/" target="_blank" title="CJ올리브네트웍스 (IT사업) 새창으로 열기">CJ올리브네트웍스</a></dd>
							<dd><a href="https://www.cjoshopping.com:9002/index.asp" target="_blank" title="CJ ENM (오쇼핑) 새창으로 열기">CJ ENM 커머스부문</a></dd>
						</dl>
						<dl>
							<dt>엔터테인먼트 &amp; 미디어</dt>
							<dd><a href="https://www.cjem.net:433/main/?locale=ko" target="_blank" title="CJ ENM (E&amp;M)새창으로 열기">CJ ENM 엔터테인먼트부문</a></dd>
							<dd><a href="http://corp.cgv.co.kr/" target="_blank" title="CJ CGV 새창으로 열기">CJ CGV</a></dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<div class="twoConts">
			<div class="conts">
				<ul class="list-area">
					<li>
                        <p class="logo"><a href="javascript:common.link.moveMainHome();"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/footer/foot_logo.png" alt="OLIVEYOUNG"></a></p>
						<h2>씨제이올리브영 주식회사</h2>
						<p>대표이사 : 구창근 | 사업자등록번호 : 809-81-01574</p>
						<p>주소 : (04323) 서울특별시 용산구 한강대로 372, 24층 <br>(동자동, KDB타워)</p>
						<p>호스팅사업자 : CJ 올리브네트웍스</p>
						<p>통신판매업신고번호 : 2019-서울용산-1428</p>
                        <p><a href="mailto:oliveweb@cj.net" class="email_addr">이메일 : oliveweb@cj.net</a></p>
						<p><a class="link" href="javascript:common.link.openFtcBizInfo();" title="새창 열림">사업자 정보확인 &gt;</a></p>
					</li>
					<li>
						<ul class="list-link">
							<li><a href="javascript:common.link.moveTermsPage();">이용약관</a><a href="javascript:common.link.moveLegalPage();">법적고지</a></li>
							<li><a href="javascript:common.link.movePrivacyPage();">개인정보처리방침</a></li>
							<li><a href="javascript:common.link.moveYouthProtectionPage();">청소년보호방침</a></li>
							<li><a href="javascript:common.link.moveMultimediaPage();">영상정보처리기기 운영/관리 방침</a></li>
							<li><a href="javascript:common.link.moveDenyEmailPage();">이메일무단수집거부</a></li>
						</ul>
					</li>
					<li>
						<h2>하나은행 구매안전 서비스</h2>
						<p>
							올리브영은 현금 결제한 금액에 대해<br>
							하나은행과 채무지급보증 계약을체결<br>
							하여 안전한 거래를 보장하고 있습니다<br>
							<a class="link" href="javascript:common.link.openEscrowPopup('https://www.oliveyoung.co.kr/pc-static-root/html/etc/escrowPopup.html','agree',665,925);" title="새창 열림">서비스 가입사실 확인&gt;</a>
						</p>
					</li>
				</ul>
			</div>
		</div>
		<div class="fourConts">
			<div class="conts">
				<ol>
					<li class="isms">정보보호 관리체계 ISMS 인증획득
						<span class="bar">인증범위 : 온라인 쇼핑몰 운영(CJ올리브영)</span>
						<span class="bar">유효기간 : 2020.12.02 - 2023.12.01</span>
					</li>
					<li class="ncsi">2017~2021 국가고객만족도(NCSI) 헬스앤뷰티전문점 업계 최초 5년 연속 1위​</li>
				</ol>
			</div>
		</div>
		<div class="threeConts">
			<div class="conts"> 
				<p class="copyright">Copyright ⓒ CJ OliveYoung. All Rights Reserved.</p>
				<div class="sns">
					<h2>OLIVE YOUNG SNS</h2>
					<a class="facebook" href="https://www.facebook.com/OLIVEYOUNG" title="페이지 이동" target="_blank"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/footer/iconf_facebook.png" alt="페이스북"></a>
					<a class="insta" href="https://www.instagram.com/oliveyoung_official/" title="페이지 이동" target="_blank"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/footer/iconf_instagram.png" alt="인스타그램"></a>
					<a class="youtube" href="https://www.youtube.com/user/cjoliveyoung/" title="페이지 이동" target="_blank"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/footer/iconf_youtube.png" alt="유튜브"></a>
					<a class="kakao" href="javascript:common.link.openKakao();" title="페이지 이동"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/footer/iconf_kakaotalk.png" alt="카카오톡"></a>
				</div>
			</div>
		</div>
	</div><!-- Footer -->
</div><!-- Wrapper -->	
</body>
</html>