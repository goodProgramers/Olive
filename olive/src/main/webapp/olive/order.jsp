<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<style>
/* 주문/결제 스타일 */
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

.title_box .step_list {
    float: right;
}

ol, ul {
    list-style: none;
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

.title_box .step_list>li .step_num {
    display: inline-block;
    margin-right: 5px;
    font-size: 20px;
    color: #8b8176;
    vertical-align: top;
}

.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}

.title_box .step_list>li .step_num:before {
    content: '0';
}

.title_box .step_list>li.on {
    color: #000;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bg_step_on.png) no-repeat 100% 50%;
}

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

.title_box .step_list>li.last {
    background: 0 0;
    padding-right: 0;
}

.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}

.title_box .step_list>li .step_num:before {
    content: '0';
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

/* from 태그 쪽 스타일 */
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

.sub-title2 {
    width: 1020px;
    margin: 40px auto 10px;
    color: #333;
    font-size: 20px;
    font-weight: 400;
}

.mgT20 {
    margin-top: 20px!important;
}

.tbl_inp_form {
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

.tbl_inp_form tbody tr:first-child td, .tbl_inp_form tbody tr:first-child th {
    border-top: 2px solid #d6d6d6;
}

.tbl_inp_form tbody th {
    background: #f4f4f4;
    padding: 15px 0 15px 18px;
    text-align: left;
    color: #222;
    border-bottom: 1px solid #e6e6e6;
}

.tbl_inp_form tbody td {
    padding: 15px 20px;
    border-bottom: 1px solid #e6e6e6;
    font-size: 14px;
    color: #222;
    line-height: 28px;
}
input.inpH28 {
    height: 28px;
    padding: 0 10px;
    font-size: 12px;
    border-color: #ccc;
    color: #333;
}
.tbl_inp_form select {
    background: #fff;
}
select.selH28 {
    height: 28px;
    padding: 0 0 0 5px;
    font-size: 12px;
    border-color: #ccc;
}
select {
    width: 100%;
    height: 38px;
    padding: 0 0 0 8px;
    border: 1px solid #d0d0d0;
    border-radius: 5px;
    font-size: 14px;
    line-height: 18px;
    color: #333;
}
.tbl_inp_form input:disabled, .tbl_inp_form input:read-only, .tbl_inp_form select:disabled {
    background-color: #f8f8f8;
    color: #888;
}

/* 배송지 정보 title_wrap */
.title_wrap {
    position: relative;
    width: 100%;
}

.title_wrap .sub_area {
    position: absolute;
    top: 0;
    right: 0;
    font-size: 12px;
    color: #888;
    white-space: nowrap;
}

.title_wrap .sub_area input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin-right: 5px;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}

.title_wrap .sub_area label {
    color: #333;
    white-space: nowrap;
}
</style>
<style>
/* 받는분 */
.tbl_inp_form.important tbody td.imp_data {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_star6x5.png) no-repeat 20px 25px;
}
.tbl_inp_form tbody td .chk_area {
    display: inline-block;
    line-height: 20px;
    margin-left: 20px;
    font-size: 12px;
    white-space: nowrap;
}
.imp_data .chk_area {
    position: relative;
}
.tbl_inp_form tbody td input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin: -2px 5px 0 0;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}

.tbl_inp_form tbody .info_security {
    margin-top: 10px;
}
.tbl_inp_form tbody .info_security>button {
    color: #777;
    font-size: 12px;
    font-weight: 400;
    background: 0 0;
}
.tbl_inp_form tbody td .chk_area {
    display: inline-block;
    line-height: 20px;
    margin-left: 20px;
    font-size: 12px;
    white-space: nowrap;
}
.imp_data .chk_area {
    position: relative;
}
.tbl_inp_form tbody .info_security>button:before {
    width: 18px;
    height: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/project/icon_01.png) no-repeat;
    margin: 0 5px 3px 0;
}
.tbl_inp_form tbody .info_security>button:after, .tbl_inp_form tbody .info_security>button:before {
    display: inline-block;
    content: '';
    vertical-align: middle;
}
.tbl_inp_form tbody .info_security>button:after {
    width: 4px;
    height: 5px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/project/icon_02.png) no-repeat;
    margin: 0 0 3px 5px;
}
.tbl_inp_form tbody .info_security>button:after, .tbl_inp_form tbody .info_security>button:before {
    display: inline-block;
    content: '';
    vertical-align: middle;
}
.tbl_inp_form tbody .sumtr2 th {
    padding: 5px 20px 10px;
}

.tbl_inp_form tbody .sumtr2 td {
    padding: 5px 20px 10px;
}
.btnSmall.w100 {
    width: 100px!important;
}
.btnMedium.wGreen, .btnSmall.wGreen {
    border: 1px solid #9bce26;
    color: #9bce26;
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
.tbl_inp_form tbody td .addr_box {
    width: 500px;
    min-height: 28px;
    margin: 6px 0;
    padding: 5px 10px;
    border: 1px solid #ccc;
    background: #f8f8f8;
    border-radius: 5px;
    font-size: 12px;
    line-height: 20px;
}

.tbl_inp_form {
    width: 100%;
}

.sub-title2>span {
    color: #f47330;
}

.onedayChk input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin-right: 5px;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}

.onedayChk input[type=checkbox]:disabled+label {
    color: #888;
}
.onedayChk label .topTxt {
    font-size: 14px;
    font-weight: 500;
}
.onedayChk label .sbTxt {
    font-size: 12px;
}
.orderConBanner {
    width: 100%;
    margin-top: 30px;
    overflow: hidden;
}
.orderConBanner img {
    width: 1020px;
    height: auto;
}
</style>
<style>
/* 주문상품정보 */
.sub-title2 em.gift {
    color: #f27370;
    font-size: 12px;
    font-weight: 700;
    font-style: normal;
    padding-left: 10px;
}

.tbl_prd_list {
    width: 100%;
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
.tbl_prd_list .tbl_cont_area .tbl_cell.w700 {
    width: 700px;
}
.tbl_prd_list .tbl_cont_area .tbl_cell {
    display: table-cell;
    vertical-align: middle;
}
.tbl_prd_list .tbl_cont_area .tbl_cell.w100 {
    width: 100px;
    border-left: 1px solid #e6e6e6;
}
.tbl_prd_list .tbl_cont_area .tbl_cell {
    display: table-cell;
    vertical-align: middle;
}
.tbl_prd_list tbody td .w700 .prd_info {
    padding-left: 165px;
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
.tbl_prd_list tbody td .w700 .prd_info .prd_img {
    width: 165px;
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
.tbl_prd_list tbody td .prd_info .prd_opt .tit {
    font-style: normal;
}
.tbl_prd_list tbody td .prd_info .prd_opt .tit:after {
    content: '';
    display: inline-block;
    margin: 0 5px 1px;
    width: 1px;
    height: 11px;
    background: #aaa;
    vertical-align: middle;
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
.icon_flag.delivery {
    width: 60px;
    background-color: #f374b7;
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
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.tbl_prd_list tbody td .cur_price {
    display: block;
    color: #222;
    font-weight: 500;
}
</style>
<style>
/* 결제수단, 결제정보 order_payment_box */
.info_dot_list_area>ul li {
    padding: 0 0 0 7px;
    font-size: 12px;
    line-height: 18px;
    color: #888;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_dot2x2_999.gif) no-repeat 0 9px;
}

.order_payment_box {
    overflow: hidden;
    width: 1020px;
}
.order_payment_box .left_area {
    float: left;
    width: 700px;
}
.order_payment_box .width-inline {
    display: inline-block;
    width: auto;
}
.order_payment_box .couponView {
    position: relative;
    margin-left: 10px;
    top: -2px;
    width: 96px;
    height: 28px;
    font-size: 14px;
    border-radius: 4px;
    color: #454c53;
    border: 0.5px solid #b2b8be;
    display: inline-block;
    text-align: center;
    line-height: 27px;
}
.tbl_inp_form.type2 tbody td>div {
    position: relative;
    width: 100%;
    padding: 15px 20px;
}
.order_payment_box .bg_area {
    background: #fcfcfc;
}
input[type=radio]:checked:disabled, input[type=radio]:checked:read-only {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png) no-repeat 0 -60px;
}
.tbl_inp_form tbody td input[type=radio] {
    width: 12px;
    height: 12px;
    margin: -2px 7px 0 0;
    background: 0 0;
    appearance: radio;
    -webkit-appearance: radio;
    vertical-align: middle;
}
.tbl_inp_form.type2 tbody td>div>label {
    margin-right: 40px;
}
input[type=radio]:checked+label {
    color: #333;
}
.tbl_inp_form.type2 tbody td .tx_discount {
    color: #f27370;
    font-size: 16px;
}
.tbl_inp_form.type2 tbody td .tx_right {
    position: absolute;
    top: 50%;
    right: 20px;
    margin-top: -10px;
    height: 20px;
    line-height: 20px;
}
.tbl_inp_form.type2 tbody td .tx_num {
    margin-right: 1px;
    margin-left: 3px;
}
.tbl_inp_form.type2 tbody td .tx_point_info {
    margin: 3px 0 0;
    font-size: 12px;
    color: #888;
    line-height: 18px;
}
.tbl_inp_form.type2 tbody td {
    padding: 0;
}
.btnGift {
    color: #222;
    font-size: 14px;
    background: 0 0;
}
.tbl_inp_form tbody td .inp_point_wrap {
    display: inline-block;
    width: 225px;
}
.colorOrange {
    color: #f27370!important;
    font-weight: 700;
}
.btnSmall.wGray2 {
    border: 1px solid #aaa;
    color: #fff;
    background: #aaa;
}
.btnGift {
    color: #222;
    font-size: 14px;
    background: 0 0;
}
.btnGift:after {
    content: '';
    display: inline-block;
    width: 18px;
    height: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/project/icon_01.png) no-repeat;
    margin: 0 0 3px 4px;
    vertical-align: middle;
}
.tbl_inp_form tbody td .inp_point_wrap {
    display: inline-block;
    width: 225px;
}
.btnSmall.wGray3 {
    border: 1px solid #a4abb9;
    color: #fff;
    background: #a4abb9;
}

/* 결제수단 선택 */
.order_payment_box .payment_info_form {
    border-top: 2px solid #888;
}
.order_payment_box .payment_info_form>li:first-child {
    padding: 10px 0;
    border-top: 0;
}
.order_payment_box .payment_info_form>li {
    overflow: hidden;
    border-top: 1px solid #e6e6e6;
}
.order_payment_box .bg_area {
    background: #fcfcfc;
}
.order_payment_box .payment_info_form>li>span {
    float: left;
    width: 175px;
    padding: 0 20px;
    line-height: 35px;
    color: #222;
}
.order_payment_box .payment_info_form>li input[type=radio] {
    width: 12px;
    height: 12px;
    margin-right: 5px;
    background: 0 0;
    appearance: radio;
    -webkit-appearance: radio;
    vertical-align: middle;
}
.order_payment_box .payment_info_form>li>span label>span.flag.bn {
    background-color: #f27370;
}
.order_payment_box .payment_info_form>li>span label>span.flag {
    display: inline-block;
    margin: 0 0 0 4px;
    padding: 0 7px;
    font-size: 10px;
    line-height: 16px;
    color: #fff;
    border-radius: 8px;
}
</style>
<style>
/* 최종결제정보 */
.order_payment_box .total_payment_box>li .btnPayment {
    width: 100%;
    padding: 17px 0 15px;
    margin: 10px 0;
    border-radius: 5px;
    font-size: 18px;
    color: #fff;
    background: #f27370;
    line-height: 18px;
}

.order_payment_box.fixArea .right_area {
    position: fixed;
    left: 50%;
    top: 0;
    margin-left: 210px;
    overflow: hidden;
}
.order_payment_box .right_area {
    float: right;
    width: 300px;
}
.right_area .sub-title2 {
    color: #4c4c4c;
}
.order_payment_box .total_payment_box {
    padding: 10px 0;
    border: 2px solid #666;
}
.order_payment_box .total_payment_box>li {
    overflow: hidden;
    padding: 0 20px;
    line-height: 32px;
    color: #222;
}
.order_payment_box .total_payment_box>li .tx_tit {
    float: left;
    width: 140px;
}
.order_payment_box .total_payment_box>li .tx_cont {
    float: right;
    font-weight: 700;
}
.order_payment_box .total_payment_box>li .tx_cont .tx_num {
    margin-right: 1px;
}
.order_payment_box .total_payment_box>li.line_top2 {
    border-top: 1px solid #e6e6e6;
    border-bottom: 1px solid #e6e6e6;
    margin: 10px 0;
    padding: 10px 20px;
}
.add_chk_area {
    margin: 10px 0 -10px 0;
    padding: 0 10px 0 18px;
}
.add_chk_area .inchk input[type=checkbox] {
    float: left;
    width: 12px;
    height: 12px;
    margin: 3px 0 0 0;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: top;
}
input[type=checkbox]:checked+label {
    color: #333;
}
.add_chk_area .inchk label {
    display: block;
    margin-left: 17px;
    font-size: 14px;
    line-height: 20px;
    color: #333;
}
.clrfix:after {
    content: '';
    display: block;
    clear: both;
}
.agree_payment_box {
    margin: 20px 0 0;
    border: 1px solid #e6e6e6;
    background: #f6f6f6;
}
.agree_payment_box .all_agree_cont {
    position: relative;
    width: 100%;
    padding: 20px;
    font-size: 14px;
    color: #222;
}

element.style {
}
.agree_payment_box .all_agree_cont>p {
    margin-bottom: 15px;
}
.agree_payment_box .all_agree_cont input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin-right: 5px;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}
.agree_payment_box .all_agree_cont label {
    font-weight: 700;
}
.agree_payment_box .all_agree_cont .btnDetailAgree {
    position: absolute;
    right: 20px;
    bottom: 20px;
    width: 26px;
    height: 16px;
    text-indent: -9999px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow26x16.png) no-repeat 0 0;
}

.agree_payment_box .other_agree_cont {
    display: none;
    padding: 0 0 5px;
    font-size: 12px;
    color: #666;
}
.agree_payment_box .other_agree_cont>li {
    padding: 15px 20px;
    border-top: 1px solid #e6e6e6;
}
.agree_payment_box .other_agree_cont>li .tx_tit {
    font-size: 14px;
    color: #222;
    font-weight: 700;
}
.agree_payment_box .other_agree_cont>li .tx_cont2 {
    margin: 8px 0 0;
}
.agree_payment_box .other_agree_cont>li .tx_cont2 input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin: 5px 5px 0 0;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
}
.agree_payment_box .other_agree_cont>li .tx_cont2 label {
    display: inline-block;
    width: 220px;
}
.agree_payment_box .other_agree_cont>li .tx_cont {
    line-height: 28px;
    margin: 8px 0 0;
}
.agree_payment_box .other_agree_cont>li .tx_cont input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin-right: 5px;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}
.agree_payment_box .other_agree_cont>li .tx_cont label {
    display: inline-block;
    width: 150px;
}
.order_payment_box .btnSmall {
    width: 70px;
}
.btnMedium.wGray, .btnSmall.wGray {
    border: 1px solid #aaa;
    color: #666;
    background: #fff;
}
.right_area .btnSmall>span {
    font-size: 12px;
    color: #888;
}
</style>
<style>
/* 픽업매장 */
.tbl_inp_form tbody td.pickup-area {
    padding: 0;
}

.pickup-store {
    padding: 23px 36px 20px;
    font-size: 0;
}

.pickup-store .store-tit {
    height: 18px;
}

.pickup-store .store-name {
    font-size: 14px;
    font-weight: 700;
    line-height: 16px;
    letter-spacing: normal;
    color: #222;
}

.pickup-store .store-distance {
    padding: 2px 0 0 8px;
    font-size: 12px;
    font-weight: 300;
    letter-spacing: normal;
    line-height: 14px;
    color: #8b8b8b;
}

.pickup-store .store-change {
    display: inline-block;
    padding: 0 6px;
    margin: -3px 0 0 18px;
    border: 1px solid #e5e5e5;
    border-radius: 5px;
    font-size: 12px;
    letter-spacing: normal;
    line-height: 22px;
    color: #555;
}

.pickup-store .store-info__addr {
    margin-top: 10px;
    font-size: 13px;
    line-height: 15px;
    letter-spacing: normal;
    color: #555;
}

.pickup-store .store-info__time {
    margin-top: 10px;
    font-size: 13px;
    line-height: 15px;
    font-weight: 500;
    letter-spacing: normal;
    color: #666;
}

.pickup-store .store-info__time strong {
    font-weight: 700;
}

.pickup-store .noti-covid19 {
    display: inline-block;
    margin: 10px 0 0;
    padding: 7px 10px;
    border-radius: 5px;
    font-size: 11px;
    font-weight: 500;
    line-height: 13px;
    letter-spacing: normal;
    color: #555;
    background: #f3f3f3;
}

.pickup-store-about {
    padding: 18px 36px;
    border-top: 1px solid #e6e6e6;
}

.pickup-store-about__list li {
    padding-left: 8px;
    position: relative;
    font-size: 12px;
    letter-spacing: normal;
    line-height: 18px;
    color: #888;
}

.pickup-store-about__list li span {
    color: #9bce26;
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
</div><!-- Header -->

<div id="Container">
	<!-- #Contents -->
	<div id="Contents">
		<!-- title_box -->
		<div class="title_box">
			<h1>주문/결제</h1>
			<ul class="step_list">
				<li><span class="step_num tx_num">1</span> 장바구니</li>
				<li class="on"><span class="hide">현재단계</span><span class="step_num tx_num">2</span> 주문/결제</li><!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
				<li class="last"><span class="step_num tx_num">3 </span> 주문완료</li>
			</ul>
		</div>
		<!--// title_box -->
		
		<form name="pickupOrderForm" id="pickupOrderForm">
		</form>
		<form name="orderForm" id="orderForm">
			<input type="hidden" id="o2oGiftBoxAmtRm" name="o2oGiftBoxAmtRm" value="30000">
			<input type="hidden" id="o2oGiftBoxAmtDc" name="o2oGiftBoxAmtDc" value="2000">
			<input type="hidden" id="o2oGiftBoxAmtDf" name="o2oGiftBoxAmtDf" value="2000">
			<input type="hidden" id="o2oGiftBoxAmt" name="o2oGiftBoxAmt" value="0">
			<input type="hidden" id="quickYn" name="quickYn" value="N">
			<input type="hidden" id="pickupDirectYn" name="pickupDirectYn" value="N">
			<input type="hidden" id="quickInfoYn" name="quickInfoYn" value="N">
			<input type="hidden" id="ocbValidChk" name="ocbValidChk" value="N">			
			<input type="hidden" id="o2oVisitTypeVal" name="o2oVisitTypeVal" value="">
			<input type="hidden" id="mhCnt" name="mhCnt" value="0">

			<!-- 2020-08-06 o2oJJ 24H 주문 가능한지 여부, 주문서 진입시 오늘드림인지 여부 -->
			<input type="hidden" id="orgIs24HCheckable" name="orgIs24HCheckable" value="Y">
			<input type="hidden" id="is24HCheckable" name="is24HCheckable" value="Y">
			<input type="hidden" id="orgQuickYn" name="orgQuickYn" value="N">

			<!-- 주문자 정보 -->
			<h2 class="sub-title2 mgT20" style="display: none;">주문자정보</h2><!-- 2017-02-21 수정 : mgT20 클래스 추가 -->
			<table class="tbl_inp_form" style="display: none;">
				<caption></caption>
				<colgroup>
					<col style="width:170px">
					<col style="width:*">
				</colgroup>
				<tbody>
				<tr>
					<th scope="row">주문자명</th>
					<td><input type="text" id="ordManNm" name="ordManNm" value="박예린" class="inpH28" title="주문자명을 입력해주세요." this="주문자명은" style="width:200px"></td><!-- id와 label for를 맞춰주세요 (임시로 넣어둠) -->
				</tr>
				<tr>
					<th scope="row">휴대폰</th>
					<td>
						<select id="ordManCellSctNo" name="ordManCellSctNo" class="selH28" title="주문자 휴대폰 번호 앞자리를 선택해주세요." style="width:90px">
							<option value="">선택</option>
								<option value="010" selected="selected">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
								<option value="02">02</option>
								<option value="031">031</option>
								<option value="032">032</option>
								<option value="033">033</option>
								<option value="041">041</option>
								<option value="042">042</option>
								<option value="043">043</option>
								<option value="044">044</option>
								<option value="051">051</option>
								<option value="052">052</option>
								<option value="053">053</option>							
								<option value="054">054</option>							
								<option value="055">055</option>							
								<option value="061">061</option>							
								<option value="062">062</option>							
								<option value="063">063</option>							
								<option value="064">064</option>							
								<option value="070">070</option>							
								<option value="080">080</option>							
								<option value="0130">0130</option>							
								<option value="0303">0303</option>							
								<option value="0502">0502</option>							
								<option value="0503">0503</option>							
								<option value="0504">0504</option>							
								<option value="0505">0505</option>							
								<option value="0506">0506</option>							
								<option value="0507">0507</option>							
						</select>						
						- <input type="text" id="ordManCellTxnoNo" name="ordManCellTxnoNo" value="6777" class="inpH28" title="주문자 휴대폰 번호 가운데 자리를 입력해주세요." this="주문자 휴대폰 번호 가운데 자리는" style="width:90px">
						- <input type="text" id="ordManCellEndNo" name="ordManCellEndNo" value="7428" class="inpH28" title="주문자 휴대폰 번호 마지막 4자리를 입력해주세요." this="주문자 휴대폰 번호 마지막 자리는" style="width:90px">
					</td>
				</tr>				
				</tbody>
			</table>
			<!--// 주문자 정보 -->

			<!-- 배송지 정보 -->
			<div class="title_wrap">
				<h2 class="sub-title2">배송지정보</h2>
			</div>
			<table class="tbl_inp_form important" id="dlvpInfo">
				<caption></caption>
				<colgroup>
					<col style="width:170px">
					<col style="width:*">
				</colgroup>
				<tbody>
				<tr>
					<th scope="row">배송지선택</th>
					<td>
						<div class="show" id="dlvpSelect_div">
							<input type="hidden" name="selectDlvSeq" value="">
							<select id="dlvpSelect" name="mbrDlvpSeq" class="selH28" title="배송지를 선택해주세요." style="width:200px">
							<c:forEach items="${memberAddrList}" var="memberAddrList">
								<option value="">${memberAddrList.ad_name }</option>
							</c:forEach>
							</select>
						</div>
					</td>
				</tr><!-- 배송지선택부분 -->
				<c:forEach items="${memberAddrList}" var="memberAddrList">
				<c:if test="${memberAddrList.ad_main == 1}">
				<tr type="exist" style="display: table-row;">
					<th scope="row">배송지명</th>
					<td id="dlvpNm_exist_span">${ memberAddrList.ad_name}</td>
					<input type="hidden" id="dlvpNm_exist" name="dlvpNm" value="${ memberAddrList.ad_name}" title="배송지명을 입력해주세요." style="width:200px" this="배송지명은">
				</tr>
				<tr id="pickupHide1" type="exist" style="display: table-row;">
					<th scope="row">받는분</th>
					<td class="imp_data">
						<input type="text" id="rmitNm_exist" name="rmitNm" value="${ memberAddrList.ad_member}" class="inpH28" title="받는분 이름을 입력해주세요." style="width:200px" this="받는분 이름은" data-attr="배송지정보^1_받는분">
					</td>
				</tr>
				<tr class="sumtr1" id="pickupHide2" type="exist" style="display: table-row;">
					<th scope="row">연락처</th>
					<td class="imp_data">
						<select id="rmitCellSctNo_exist" name="rmitCellSctNo" class="selH28" title="연락처1 앞자리를 선택해주세요." style="width:90px" orgvalue="" data-attr="배송지정보^1_연락처1">
							<option value="">선택</option>							
							<option value="010" selected="selected">010</option>								
							<option value="011">011</option>								
							<option value="016">016</option>								
							<option value="017">017</option>								
							<option value="018">018</option>								
							<option value="019">019</option>								
							<option value="02">02</option>								
							<option value="031">031</option>								
							<option value="032">032</option>								
							<option value="033">033</option>								
							<option value="041">041</option>								
							<option value="042">042</option>								
							<option value="043">043</option>								
							<option value="044">044</option>								
							<option value="051">051</option>								
							<option value="052">052</option>								
							<option value="053">053</option>								
							<option value="054">054</option>								
							<option value="055">055</option>								
							<option value="061">061</option>								
							<option value="062">062</option>								
							<option value="063">063</option>								
							<option value="064">064</option>								
							<option value="070">070</option>								
							<option value="080">080</option>								
							<option value="0130">0130</option>								
							<option value="0303">0303</option>								
							<option value="0502">0502</option>								
							<option value="0503">0503</option>								
							<option value="0504">0504</option>								
							<option value="0505">0505</option>								
							<option value="0506">0506</option>								
							<option value="0507">0507</option>								
						</select>
						- <input type="text" id="rmitCellTxnoNo_exist" name="rmitCellTxnoNo" value="${ memberAddrList.midtel }" class="inpH28" title="연락처1 가운데 자리를 입력해주세요." this="연락처1 가운데 자리는" style="width:90px" data-attr="배송지정보^1_연락처1">
						- <input type="text" id="rmitCellEndNo_exist" name="rmitCellEndNo" value="${ memberAddrList.endtel }" class="inpH28" title="연락처1 마지막 4자리를 입력해주세요." this="연락처1 마지막 자리는" style="width:90px" data-attr="배송지정보^1_연락처1">
						<span class="info_security"><button type="button" data-rel="layer" data-target="securityInfo" class="chk_area">안심번호 서비스 안내</button></span>
					</td>
				</tr>
				<tr id="pickupHide4" type="exist" style="display: table-row;">
					<th scope="row">주소</th>
					<td class="imp_data"><!-- 2017-01-25 수정 : 클래스 추가 -->
						<input type="text" id="stnmRmitPostNo_exist" name="rmitPostNo" value="16387" class="inpH28" title="우편번호를 검색해주세요." style="width:90px" readonly="readonly">
						<input type="hidden" id="rmitPostNo_exist" name="stnmRmitPostNo" value="16387" title="우편번호를 검색해주세요.">
						
						<button type="button" class="btnSmall wGreen w100" id="search-zipcode-pop_exist" style="display:none;" data-attr="배송지정보^1_주소"><span>우편번호 찾기 (기존)</span></button>
						<button type="button" class="btnSmall wGreen w100" id="search-zipcode-pop_exist_r" data-attr="배송지정보^1_주소"><span>우편번호 찾기</span></button>
						
						<div class="addr_box">
							<p class="addr_new">
								<span class="tx_addr" id="stnmPostAddr_exist">${ memberAddrList.ad_address }</span><!--  도로명주소를 넣어주세요 -->
							</p>
							<!--// 주소 입력 시 보여지는 부분 -->
						</div>
						<input type="text" id="tempRmitDtlAddr_exist" value="${ memberAddrList.ad_address }" class="inpH28" title="상세주소를 입력해주세요." style="width:500px;" this="상세 주소는" maxlength="30">
						<input type="hidden" id="stnmRmitDtlAddr_exist" name="stnmRmitDtlAddr" value="" class="inpH28" title="상세주소를 입력해주세요." style="width:500px" this="상세 주소는">
						<input type="hidden" id="rmitDtlAddr_exist" name="rmitDtlAddr" value="" class="inpH28" title="상세주소를 입력해주세요." style="width:500px">
						<input type="hidden" id="emdNm_exist" name="emdNm" value="">
						<input type="hidden" id="admrNm_exist" name="admrNm" value="">
					</td>
				</tr>				
				</tbody>
				</c:if>
				</c:forEach>							
			</table>
			<!--// 배송지 정보 -->

			<!-- 배송 요청사항 -->
			<div id="pickupHide5">
				<div class="title_wrap">
					<h2 class="sub-title2">배송 요청사항</h2>
				</div>
				
				<table class="tbl_inp_form important">
					<caption></caption>
					<colgroup><col style="width:170px"><col style="width:*"></colgroup>
					<tbody>
					<tr>
						<th scope="row">배송 메시지</th>
						<td>
							<select id="mbrMemoCont" class="selH28" title="택배배송 메시지를 선택해주세요." style="width:350px" data-attr="배송요청사항^배송메세지"><option name="배송메시지를 선택해주세요." value="MH">배송메시지를 선택해주세요.</option><option value="10">부재시 경비실에 맡겨주세요.</option>/n<option value="20">부재시 문앞에 놓아주세요.</option>/n<option value="30">파손의 위험이 있는 상품이오니,  배송 시 주의해주세요.</option>/n<option value="40">배송전에 연락주세요.</option>/n<option value="50">택배함에 넣어주세요.</option>/n<option value="O2O">직접 입력하기</option></select>
							<input type="text" name="mbrMemoCont" value="" class="inpH28 mgT6" title="배송메시지를 입력해주세요." style="width:700px; display: none;">
						</td>
					</tr>
					</tbody>
				</table>
			</div><!--// 배송 요청사항 -->
			
			<div class="orderConBanner" id="orderConBanner" style="display:none">
				<img src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/SYS/image/20220216232240/qksa_20220216232240.jpg">
			</div>			

			<!-- 주문상품정보 -->
			<h2 class="sub-title2">올리브영 배송상품<em class="gift" id="giftNoti2" style="display: none;">* 증정품은 결제 시 확인하실 수 있습니다.</em></h2><!-- 2017-01-24 수정 : 타이틀 마크업 수정 및 클래스명 변경 -->
			<table class="tbl_prd_list">
				<caption>올리브영 배송상품 주문상품 목록</caption>
				<colgroup>
					<col style="width:*">
					<col style="width:110px">
					<col style="width:100px">
					<col style="width:110px">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">상품정보</th>
						<th scope="col">판매가</th>
						<th scope="col">수량</th>
						<th scope="col">구매가</th><!-- 2017-01-24 수정 : 문구수정 -->
					</tr>
				</thead>
				<tbody>
					<tr>				
					<input type="hidden" name="cartNo" value="361736854">
					<td colspan="5" dispcatno="" stdcatno="040202" goodsno="A000000163992" itemno="003" entrno="C14909" brndcd="1604" tradeshpcd="1" staffdscntyn="Y" pntrsrvyn="Y" ordqty="1" thnlpathnm="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0016/A00000016399217ko.jpg?l=ko" goodsnm="아로마티카 바디오일 100ml 리츄얼 기획(괄사증정) 3종 택1_어웨이크닝,서렌, 임브레이스)" cartno="361736854"><!-- 2017-01-13 수정 -->
						<div class="tbl_cont_area">							
							<div class="tbl_cell w700">
								<div class="prd_info">
									<div class="prd_img">
										<img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0016/A00000016399217ko.jpg?l=ko" alt="장바구니 상품 임시 이미지" onerror="common.errorImg(this);">
									</div>
									<div class="prd_name">
										<span>아로마티카</span><!-- 2017-01-26 수정 : 브랜드명 분리 -->
										<p>아로마티카 바디오일 100ml 리츄얼 기획(괄사증정) 3종 택1_어웨이크닝,서렌, 임브레이스)</p>
									</div>
										<p class="prd_opt">
											<i class="tit">옵션</i>어웨이크닝 바디오일 기획
										</p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span>
											<span class="icon_flag delivery">오늘드림</span><!-- 15 -->											
										</p>									
									</div>
								</div>
							
								<div class="tbl_cell w110">
									<span class="cur_price"><span class="tx_num">44,000</span>원</span>
								</div>
								<div class="tbl_cell w100">1</div>
								<div class="tbl_cell w110">
									<span class="org_price"><span class="tx_num" id="normPrc_A000000163992/003">44,000</span>원</span><!-- 2017-01-24 수정 : 추가 -->
									<span class="pur_price"><span class="tx_num" id="salePrc_A000000163992/003">30,800</span>원</span>
									<input type="hidden" id="orgNormPrc_A000000163992/003" value="44000">
									<input type="hidden" id="orgSalePrc_A000000163992/003" value="30800">
									<input type="hidden" id="imdtDscntAmt_A000000163992/003" value="0">
								</div>
							</div>							
					</td>
					</tr>

					<tr>					
					<input type="hidden" name="cartNo" value="353176271">
					<td colspan="5" dispcatno="" stdcatno="060401" goodsno="A000000116034" itemno="001" entrno="C00719" brndcd="0536" tradeshpcd="1" staffdscntyn="Y" pntrsrvyn="Y" ordqty="1" thnlpathnm="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0011/A00000011603406ko.jpg?l=ko" goodsnm="썸머스이브 페미닌 위시 멀티 베니핏 데일리 발란스 237ml" cartno="353176271"><!-- 2017-01-13 수정 -->
						<div class="tbl_cont_area">						
							<div class="tbl_cell w700"><!-- 2017-01-24 수정 : 클래스명 변경 -->
								<div class="prd_info">
									<div class="prd_img">
										<img src="https://image.oliveyoung.co.kr/uploads/images/goods/10/0000/0011/A00000011603406ko.jpg?l=ko" alt="장바구니 상품 임시 이미지" onerror="common.errorImg(this);">
									</div>
									<div class="prd_name">
										<span>썸머스이브</span><!-- 2017-01-26 수정 : 브랜드명 분리 -->
										<p>썸머스이브 페미닌 위시 멀티 베니핏 데일리 발란스 237ml</p>
									</div>
									<p class="prd_opt"></p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span>
										<span class="icon_flag delivery">오늘드림</span><!-- 15 -->
									</p>
								</div>
							</div>

							<div class="tbl_cell w110">							
								<span class="cur_price"><span class="tx_num">18,000</span>원</span>
							</div>
							<div class="tbl_cell w100">1</div>

							<div class="tbl_cell w110">
								<span class="org_price"><span class="tx_num" id="normPrc_A000000116034/001">18,000</span>원</span><!-- 2017-01-24 수정 : 추가 -->
								<span class="pur_price"><span class="tx_num" id="salePrc_A000000116034/001">15,300</span>원</span>
								<input type="hidden" id="orgNormPrc_A000000116034/001" value="18000">
								<input type="hidden" id="orgSalePrc_A000000116034/001" value="15300">
								<input type="hidden" id="imdtDscntAmt_A000000116034/001" value="0">
							</div>
						</div>							
					</td>
					</tr>
				</tbody>
				</table>
				
<script type="text/javascript">
		$("#giftBoxYn_temp").attr("disabled", true);
		$("#giftBoxYn_temp").attr("checked", false);
		$("#giftBoxYn_temp").attr("style", "cursor: not-allowed;");
		$("#giftBoxYn").val("N");
</script>
<!--// 주문상품정보 -->
			
			<!-- 쿠폰 및 포인트, 결제수단, 결제정보 -->
			<div class="order_payment_box">
				<div class="left_area">
					<!-- 포인트사용 --><!-- 2017-01-18 수정 : 전액사용 버튼이 input 뒤로 위치 변경됨 -->
					<h2 class="sub-title2">포인트 사용</h2>
					<table class="tbl_inp_form type2">
						<caption>포인트사용 입력 폼</caption>
						<colgroup>
							<col style="width:170px">
							<col style="width:*">
						</colgroup>
						
						<input type="hidden" id="lastAplyPntInputName" value="">
						
						<tbody>				
						<tr>
							<th scope="row">포인트</th>
							<td>
								<div>
									<span class="inp_point_wrap">
										<input type="text" id="cjonePntAplyAmt" class="inpH28 cjonePoint" title="사용하실 포인트를 입력해주세요." style="width:100px" min="0"> 원 /
												<span id="cjonePnt_span" class="tx_num colorOrange">
													<span id="cjonePnt" value="${memberAddrList[0].my_point }">${memberAddrList[0].my_point }</span>P
												</span>
										<input type="hidden" name="cjonePntAplyAmt" value="0">
										<input type="hidden" name="cjonePntNonPosCnt" value="0">
									</span>
									<button type="button" class="btnSmall wGray3" id="cjonePnt_btn" >전액사용</button>
									<p class="tx_point_info">포인트는 최소 1,000원 이상 보유 시 사용 가능합니다. </p>									
								</div>
							</td>
						</tr>
						<input type="hidden" id="vMbrStaffYn" value="N">				
						</tbody>
					</table>
					<!--// 포인트사용 -->

					<!-- 결제수단 선택 -->
					<div class="title_wrap" id="payMethod_div" style="display: block;">
						<h2 class="sub-title2">결제수단 선택</h2>
						<p class="sub_area" style="display: none;"></p>
					</div>
					<ul class="payment_info_form" id="payMethodList" style="display: block;">
						<li class="bg_area"><!-- 2017-01-18 수정 : 클래스 추가 -->
							<input type="hidden" id="payCouponIndex" value="" paycd="">
							<input type="hidden" id="easyPayCd" value="">
							<span><input type="radio" id="payMethod_11" name="payMethod" value="11" cashreceipt="N" checked="checked"><label id="payMethodLabel_11" for="payMethod_11">신용카드<span class="flag bn">혜택</span></label></span>
							<span class="pay_24h_sh"><input type="radio" id="payMethod_61" name="payMethod" value="61" cashreceipt="Y" data-attr="결제수단선택^결제수단선택"><label id="payMethodLabel_61" for="payMethod_61">무통장입금</label></span>
							<span><input type="radio" id="payMethod_25" name="payMethod" value="25" cashreceipt="N" ><label id="payMethodLabel_25" for="payMethod_25">PAYCO</label></span>
							<span><input type="radio" id="payMethod_26" name="payMethod" value="26" cashreceipt="N" ><label id="payMethodLabel_26" for="payMethod_26">카카오페이</label></span>
							<span><input type="radio" id="payMethod_29" name="payMethod" value="29" cashreceipt="N" ><label id="payMethodLabel_29" for="payMethod_29">네이버페이</label></span>
							<span><input type="radio" id="payMethod_22" name="payMethod" value="22" cashreceipt="N" ><label id="payMethodLabel_22" for="payMethod_22">휴대폰결제</label></span>
							<span><input type="radio" id="payMethod_21" name="payMethod" value="21" cashreceipt="Y" ><label id="payMethodLabel_21" for="payMethod_21">계좌이체</label></span>
							<span><input type="radio" id="payMethod_24" name="payMethod" value="24" cashreceipt="Y" ><label id="payMethodLabel_24" for="payMethod_24">도서상품권</label></span>
							<span><input type="radio" id="payMethod_23" name="payMethod" value="23" cashreceipt="N" ><label id="payMethodLabel_23" for="payMethod_23">문화상품권</label></span>
						</li>	
					</ul>
				</div>
				
				<div class="right_area">
					<!-- 최종 결제정보 -->
					<h2 class="sub-title2">최종 결제정보</h2>
					<!--// 최종 결제정보 -->
					<ul class="total_payment_box">
						<li>
							<span class="tx_tit">총 상품금액</span>
							<span class="tx_cont"><span class="tx_num">46,100</span>원</span>
							<input type="hidden" name="goodsAmt" value="46100">
						</li>
						
						<li class="line_top2">
							<span class="tx_tit">총 배송비</span>
							<span class="tx_cont"><span class="tx_num" id="dlexPayAmt_span">0</span>원</span>
							<input type="hidden" name="dlexPayAmt" value="0">
						</li>

						<li>
							<span class="tx_tit">포인트 사용 금액</span>
							<span class="tx_cont colorOrange"><span class="tx_num" id="cjonePntAplyAmt_span">0</span>원</span>
						</li>
						
						<li class="total">
							<span class="tx_tit">최종 결제금액</span>
							<span class="tx_cont"><span class="tx_num" id="totPayAmt_sum_span">44,100</span>원</span>
							<input type="hidden" name="remainAmt" value="44100">
							<input type="hidden" name="ordPayAmt" value="44100">
							<input type="hidden" name="goodsNm" value="아로마티카 바디오일 100ml 리츄얼 기획(괄사증정) 3종 택1_어웨이크닝,서렌, 임브레이스) 외 1건">
						</li>
						
						<li>
							<button class="btnPayment" id="btnPay" name="btnPay" type="button" data-attr="최종결제정보^결제하기">결제하기<em id="giftNoti3" style="display: none;">(증정품은 결제 시 확인 가능합니다)</em> <em id="giftNotiQuick" style="display: none;">(오늘드림으로 주문 시 온라인 단독 <br>증정품이 제공되지 않습니다.)</em> <em id="giftNoti4" style="display: none;">(오늘드림 주문은 온라인 전용 증정품이<br>제공되지 않습니다.)</em></button>
							<input type="hidden" id="tempOrdNo" value="">
						</li>
					</ul>

					<div class="agree_payment_box" id="agreeList">
						<div class="all_agree_cont">
							<p>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</p><!-- 2017-01-18 수정 : 문구수정 -->
							<input type="checkbox" id="agree_all" name="TrrmsCheck1ed" value="" data-attr="최종결제정보^결제대행동의"> <label for="agree_all">모두 동의</label>
							<button type="button" class="btnDetailAgree" id="btnDetailAgree">주문상품 및 결제대행 서비스 이용약관 자세히 보기 열기/닫기</button>
						</div>
						<ul class="other_agree_cont">
							<li>
								<p class="tx_tit">주문 상품정보에 대한 동의</p>
								<p class="tx_cont2"><input type="checkbox" id="agree_1" name="agreeChk" value="" title="주문 상품정보 및 결제대행 서비스 이용약관에 동의해주세요." data-attr="최종결제정보^결제대행동의"> <label for="agree_1">주문하실 상품, 가격, 배송정보, 할인내역등을 최종 확인하였으며, 구매에 동의합니다. <br>(전상거래법 제8조 제2항)</label></p>
							</li>
							
							<li>
								<p class="tx_tit">결제대행 서비스 이용약관 동의</p>
								<p class="tx_cont">
									<input type="checkbox" id="agree_2_1" name="agreeChk" value="" title="전자금융거래 기본약관에 동의해주세요." data-attr="최종결제정보^6_결제대행동의"> <label for="agree_2_1">전자금융거래 기본약관</label>
									<button type="button" class="btnSmall wGray" onclick="javascript:forder.orderForm.openPopup('https://www.oliveyoung.co.kr/pc-static-root/html/etc/foot_agreement.html','agree',400,900);"><span>약관보기</span></button>
								</p>
								<p class="tx_cont">
									<input type="checkbox" id="agree_2_2" name="agreeChk" value="" title="개인정보 수집 및 이용약관에 동의해주세요." data-attr="최종결제정보^6_결제대행동의"> <label for="agree_2_2">개인정보 수집 및 이용 동의</label>
									<button type="button" class="btnSmall wGray" onclick="javascript:forder.orderForm.openPopup('https://www.oliveyoung.co.kr/pc-static-root/html/etc/foot_agreement_02.html','agree',400,900);"><span>약관보기</span></button>
								</p>
								<p class="tx_cont">
									<input type="checkbox" id="agree_2_3" name="agreeChk" value="" title="개인정보 제공 및 위탁약관에 동의해주세요." data-attr="최종결제정보^6_결제대행동의"> <label for="agree_2_3">개인정보 제공 및 위탁 동의</label>
									<button type="button" class="btnSmall wGray" onclick="javascript:forder.orderForm.openPopup('https://www.oliveyoung.co.kr/pc-static-root/html/etc/foot_agreement_03.html','agree',400,900);"><span>약관보기</span></button>
								</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--// 쿠폰 및 포인트, 결제수단, 결제정보 -->
		</form>
	</div><!-- //#Contents -->
</div><!-- Container -->

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


<!-- script 코딩 부분 -->
<script>
// 포인트 전액사용 버튼 클릭시 cjonePnt_btn
$(function () {
	$("#cjonePnt_btn").on("click", function () {
	// $("#cjonePnt_btn").click(function () {
		var totalpoint = $("#cjonePnt").text();
		$("#cjonePntAplyAmt").attr("value", totalpoint); // 인풋태그 변경
		$("#cjonePntAplyAmt_span").text(totalpoint); // 최종 결제정보 변경
		$("#cjonePntAplyAmt").attr()
	});
});

// 포인트 금액 직접 입력
$(function () {
	$("#cjonePntAplyAmt").on("keyup", function () {
		
		var totalpoint = $("#cjonePntAplyAmt").val();
		var maxpoint = ${ memberAddrList[0].my_point }
		console.log(maxpoint);
		
		if(totalpoint > ${ memberAddrList[0].my_point }) {
			alert("보유하신 포인트를 초과하였습니다.");
			$("#cjonePntAplyAmt").attr("value", 0);
			$("#cjonePntAplyAmt").val(0);
			$("#cjonePntAplyAmt_span").text( 0 );
		} else{
			$("#cjonePntAplyAmt").attr("value", totalpoint); // 인풋태그 변경
			$("#cjonePntAplyAmt").val(totalpoint);
			$("#cjonePntAplyAmt_span").text(totalpoint); // 최종 결제정보 변경
		} // if
		
	});
});
</script>
<script>
// 배송지명 옵션태그 선택시
$(function () {
	$("#dlvpSelect").change(function (event) {
		let selAddrName = $("#dlvpSelect option:selected").text();
        $.ajax({ 
            url:"<%= request.getContextPath() %>/olive/memberinfo.do", 
            dataType:"json", 
             type:"POST",
             data:{
            	 selAddrName
             },
             cache:false, // 꼭 기억
             success:function (data){ 
                $( data.memberAddrInfo ).each( function ( i , elem ){
				   $("#dlvpNm_exist_span").text(elem.ad_name); 
				   $("#rmitNm_exist").attr("value", elem.ad_name);
                   $("#stnmPostAddr_exist").text(elem.ad_address);
                   $("#rmitNm_exist").attr("value", elem.ad_member);
                   $("#rmitCellTxnoNo_exist").attr("value", elem.midtel);
                   $("#rmitCellEndNo_exist").attr("value", elem.endtel);
                   $("#tempRmitDtlAddr_exist").attr("value", elem.ad_address);
                });
             }, 
             error:function (){
                alert("에러발생");
             }
         });
	}); // change
}); // ready

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
</body>
</html>