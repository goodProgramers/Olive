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

/* .slick-track{
	position: relative;
	overflow: hidden;
}

.onlyoneimgdiv{
	position: absolute;
} */
</style>

<style>
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

body, html {
    -webkit-font-smoothing: antialiased;
    -webkit-font-smoothing: antialiased;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
html[Attributes Style] {
    -webkit-locale: "ko";
}
user agent stylesheet
html {
    display: block;
}
.main_plan_banner.ty02 {
    position: relative;
}
.main_sub_tit {
    height: 40px;
    margin: 51px 0 8px;
    font-size: 26px;
    color: #000;
    text-align: center;
    line-height: 40px;
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
.main_plan_banner.ty02 .banner_wrap {
    position: relative;
    width: 1020px;
    height: 675px;
    overflow: hidden;
}
.main_plan_banner .banner_wrap {
    width: 1020px;
    height: 675px;
}
.main_plan_banner.ty02 .banner_wrap .slick_slider {
    margin-left: -10px;
    width: 1040px;
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
    width: 6240px;
    transform: translate3d(-1040px, 0px, 0px);
}
.slick-slider .slick-list, .slick-slider .slick-track {
    -webkit-transform: translate3d(0,0,0);
    -moz-transform: translate3d(0,0,0);
    -ms-transform: translate3d(0,0,0);
    -o-transform: translate3d(0,0,0);
    transform: translate3d(0,0,0);
}

.slick-track {
    position: relative;
    top: 0;
    left: 0;
    display: block;
    z-index: 1;
}
.slick-track:after, .slick-track:before {
    display: table;
    content: '';
}
.main_plan_banner.ty02 .slider_unit {
    position: relative;
    float: left;
    padding: 0 10px;
    width: 520px!important;
    height: 620px;
}

.main_plan_banner .slider_unit {
    position: relative;
    float: left;
    width: 510px;
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
.main_plan_banner.ty02 .slider_unit .plan_top {
    height: 300px;
}
.main_plan_banner.ty02 .slider_unit .plan_banner {
    position: relative;
    overflow: hidden;
    width: 500px
px
;
    height: 300px;
    background-size: 500px auto;
    background-position: 0 0;
    background-repeat: no-repeat;
}

.main_plan_banner .slider_unit .plan_banner {
    position: relative;
    overflow: hidden;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a {
    display: flex;
    flex-direction: column;
    justify-content: center;
    width: 500px;
    height: 259px;
    padding: 0 0 0;
}

.main_plan_banner .slider_unit .plan_banner>a {
    display: block;
    width: 500px;
    height: 310px;
    padding: 80px 0 0;
}
a {
    color: #666;
    text-decoration: none;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a>p {
    position: relative;
    top: inherit;
    left: inherit;
    margin-left: 28px;
    max-width: 360px;
    color: #000;
    text-align: left;
}
.main_plan_banner .slider_unit .plan_banner>a>p {
    position: absolute;
    top: 15px;
    left: 70px;
    width: 360px;
    color: #222;
    font-size: 18px;
    text-align: center;
    line-height: 30px;
    letter-spacing: -.05em;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a>p>strong.tit {
    overflow: hidden;
    max-width: 222px;
    height: inherit;
    margin-top: 0;
    font-size: 21px;
    line-height: 1.35;
    letter-spacing: -.67px;
    font-weight: 700;
    color: #333;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.main_plan_banner .slider_unit .plan_banner>a>p>strong {
    display: block;
    overflow: hidden;
    height: 30px;
    margin-top: -4px;
    font-size: 20px;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a>p>span.desc {
    overflow: hidden;
    height: inherit;
    margin-top: 15px;
    max-width: 215px;
    font-size: 16px;
    line-height: 20px;
    color: #333;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.main_plan_banner .slider_unit .plan_banner>a>p>span {
    display: block;
    overflow: hidden;
    height: 30px;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list {
    position: relative;
    margin: -41px auto 0 12px;
    padding: 15px 15px 0 15px;
    width: 475px;
    height: 408px;
    font-size: 0;
    background-color: #fff;
    border-bottom: 0;
    z-index: 1;
}

.main_plan_banner .slider_unit .cate_prd_list {
    border-bottom: 0;
}
.cate_prd_list {
    border-bottom: 1px solid #ddd;
}
ol, ul {
    list-style: none;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li:first-child {
    margin-left: 0;
}

.main_plan_banner.ty02 .slider_unit .cate_prd_list>li {
    float: inherit;
    padding: 0;
    display: inline-block;
    margin-left: 15px;
    width: 215px;
    vertical-align: top;
}
.main_plan_banner .slider_unit .cate_prd_list>li {
    padding-bottom: 0;
}
.cate_prd_list>li {
    position: relative;
    float: left;
    width: 255px;
    padding: 30px 20px 35px;
}
.cate_prd_list>li .prd_info {
    text-align: center;
    font-size: 14px;
}
.cate_prd_list>li .prd_info .prd_thumb {
    position: relative;
    display: block;
    width: 215px;
    height: 215px;
    background: #fff;
}
a {
    color: #666;
    text-decoration: none;
}
.cate_prd_list>li .prd_info .prd_thumb .thumb_flag {
    position: absolute;
    top: 10px;
    left: 12px;
    line-height: 44px!important;
}
.thumb_flag.best {
    color: #f05a5e;
    line-height: 44px;
    border-color: #f05a5e;
}
.thumb_flag {
    display: inline-block;
    width: 48px;
    height: 48px;
    font-size: 14px;
    background: #fff;
    border-radius: 24px;
    border-width: 2px;
    border-style: solid;
    text-align: center;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_thumb>img {
    width: auto!important;
    max-width: 215px;
    height: auto!important;
    max-height: 215px;
}

button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
.cate_prd_list>li .prd_info .prd_name {
    margin-top: 15px;
}
.cate_prd_list>li .prd_info .prd_name {
    display: block;
    min-height: 62px;
    margin: 8px 0 0;
    text-decoration: none;
}
.cate_prd_list>li .prd_info .prd_name>a {
    display: block;
}
a {
    color: #666;
    text-decoration: none;
}
.cate_prd_list>li .prd_info .prd_name .tx_brand {
    display: block;
    height: 20px;
    line-height: 20px;
    color: #777;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_name .tx_name {
    margin-top: 5px;
}
.cate_prd_list>li .prd_info .prd_name .tx_name {
    overflow: hidden;
    height: 40px;
    margin-top: 2px;
    padding: 2px 0;
    -webkit-box-orient: vertical;
    line-height: 18px;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    word-break: keep-all;
    color: #000;
    font-size: 14px;
    text-align: center;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 175px;
    left: auto;
    right: 0;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
}
.cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 205px;
    left: 195px;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
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
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}

button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
.cate_prd_list>li .prd_info .prd_price {
    height: 25px;
    line-height: 22px;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.cate_prd_list>li .prd_info .prd_price .tx_org {
    color: #777;
    font-size: 12px;
    text-decoration: line-through;
    vertical-align: middle;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_org>span {
    display: inline-block;
    font-size: 14px;
    text-decoration: line-through;
    vertical-align: 0;
    letter-spacing: -.02em;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_price .tx_org+.tx_cur {
    margin: 0 0 0 7px;
    vertical-align: bottom;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur {
    display: inline-block;
    color: #e02020;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur>span {
    display: inline-block;
    font-size: 20px;
    vertical-align: -1px;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_flag {
    margin-top: 5px;
    padding-bottom: 0;
}
.prd_flag {
    overflow: hidden;
}
.cate_prd_list>li .prd_info .prd_flag>.icon_flag {
    float: none;
}
.icon_flag.coupon {
    background-color: #9bce26;
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
.cate_prd_list>li .prd_info .prd_point_area {
    display: none;
    line-height: 16px;
    color: #aaa;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_point_area .review_point {
    vertical-align: top;
    margin-right: 5px;
}
.review_point {
    display: inline-block;
    overflow: hidden;
    width: 92px;
    height: 15px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_off.png) no-repeat 0 0;
    text-indent: -9999px;
}
.review_point .point {
    display: inline-block;
    float: left;
    width: auto;
    height: 15px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_on.png) no-repeat 0 0;
    line-height: 0;
}
.cate_prd_list>li .prd_info .prd_btn_area {
    display: none;
}
.prd_btn_area {
    overflow: hidden;
    margin: 10px 0 0;
}
.cate_prd_list>li .prd_info .prd_btn_area button {
    width: 85px;
    height: 40px;
    color: #f27370;
    border: 1px solid #f27370;
    background: #fff;
}
.prd_btn_area button {
    float: left;
    height: 70px;
    font-size: 20px;
    color: #fff;
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
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
user agent stylesheet
button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li {
    float: inherit;
    padding: 0;
    display: inline-block;
    margin-left: 15px;
    width: 215px;
    vertical-align: top;
}
.main_plan_banner .slider_unit .cate_prd_list>li {
    padding-bottom: 0;
}
.cate_prd_list>li {
    position: relative;
    float: left;
    width: 255px;
    padding: 30px 20px 35px;
}
.cate_prd_list>li .prd_info {
    text-align: center;
    font-size: 14px;
}
.cate_prd_list>li .prd_info .prd_thumb {
    position: relative;
    display: block;
    width: 215px;
    height: 215px;
    background: #fff;
}
a {
    color: #666;
    text-decoration: none;
}
.cate_prd_list>li .prd_info .prd_name {
    margin-top: 15px;
}
.cate_prd_list>li .prd_info .prd_name {
    display: block;
    min-height: 62px;
    margin: 8px 0 0;
    text-decoration: none;
}
.cate_prd_list>li .prd_info .prd_name>a {
    display: block;
}
.cate_prd_list>li .prd_info .prd_name .tx_brand {
    display: block;
    height: 20px;
    line-height: 20px;
    color: #777;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_name .tx_name {
    margin-top: 5px;
}
.cate_prd_list>li .prd_info .prd_name .tx_name {
    overflow: hidden;
    height: 40px;
    margin-top: 2px;
    padding: 2px 0;
    -webkit-box-orient: vertical;
    line-height: 18px;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    word-break: keep-all;
    color: #000;
    font-size: 14px;
    text-align: center;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 175px;
    left: auto;
    right: 0;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
}
.cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 205px;
    left: 195px;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
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
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
user agent stylesheet
button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
.cate_prd_list>li .prd_info {
    text-align: center;
    font-size: 14px;
}
user agent stylesheet
li {
    text-align: -webkit-match-parent;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list {
    position: relative;
    margin: -41px auto 0 12px;
    padding: 15px 15px 0 15px;
    width: 475px;
    height: 408px;
    font-size: 0;
    background-color: #fff;
    border-bottom: 0;
    z-index: 1;
}
ol, ul {
    list-style: none;
}
user agent stylesheet
ul {
    list-style-type: disc;
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
.cate_prd_list>li .prd_info .prd_price {
    height: 25px;
    line-height: 22px;
}
.cate_prd_list>li .prd_info .prd_price .tx_org {
    color: #777;
    font-size: 12px;
    text-decoration: line-through;
    vertical-align: middle;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_org>span {
    display: inline-block;
    font-size: 14px;
    text-decoration: line-through;
    vertical-align: 0;
    letter-spacing: -.02em;
}

.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_price .tx_org+.tx_cur {
    margin: 0 0 0 7px;
    vertical-align: bottom;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur {
    display: inline-block;
    color: #e02020;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur>span {
    display: inline-block;
    font-size: 20px;
    vertical-align: -1px;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_flag {
    margin-top: 5px;
    padding-bottom: 0;
}
.prd_flag {
    overflow: hidden;
}
.cate_prd_list>li .prd_info .prd_flag>.icon_flag {
    float: none;
}
.icon_flag.coupon {
    background-color: #9bce26;
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
.cate_prd_list>li .prd_info .prd_point_area {
    display: none;
    line-height: 16px;
    color: #aaa;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_point_area .review_point {
    vertical-align: top;
    margin-right: 5px;
}
.review_point {
    display: inline-block;
    overflow: hidden;
    width: 92px;
    height: 15px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_off.png) no-repeat 0 0;
    text-indent: -9999px;
}
.review_point .point {
    display: inline-block;
    float: left;
    width: auto;
    height: 15px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_on.png) no-repeat 0 0;
    line-height: 0;
}
.cate_prd_list>li .prd_info .prd_btn_area {
    display: none;
}
.prd_btn_area {
    overflow: hidden;
    margin: 10px 0 0;
}
.cate_prd_list>li .prd_info .prd_btn_area button {
    width: 85px;
    height: 40px;
    color: #f27370;
    border: 1px solid #f27370;
    background: #fff;
}
.prd_btn_area button {
    float: left;
    height: 70px;
    font-size: 20px;
    color: #fff;
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
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
.main_plan_banner .slider_unit:after {
    content: '';
    display: block;
    width: 1px;
    height: 685px;
    position: absolute;
    top: 0;
    left: 0;
    background-color: #ddd;
}
.main_plan_banner.ty02 .slider_unit {
    position: relative;
    float: left;
    padding: 0 10px;
    width: 520px!important;
    height: 620px;
}
.main_plan_banner .slider_unit.right {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x1.gif) repeat-y 0 0;
}
.main_plan_banner .slider_unit {
    position: relative;
    float: left;
    width: 510px;
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
.main_plan_banner.ty02 .slider_unit .plan_top {
    height: 300px;
}
.main_plan_banner.ty02 .slider_unit.right .plan_banner {
    float: inherit;
    margin-left: 0;
}
.main_plan_banner.ty02 .slider_unit .plan_banner {
    position: relative;
    overflow: hidden;
    width: 500px;
    height: 300px;
    background-size: 500px auto;
    background-position: 0 0;
    background-repeat: no-repeat;
}
.main_plan_banner .slider_unit.right .plan_banner {
    float: right;
}
.main_plan_banner .slider_unit .plan_banner {
    position: relative;
    overflow: hidden;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a {
    display: flex;
    flex-direction: column;
    justify-content: center;
    width: 500px;
    height: 259px;
    padding: 0 0 0;
}
.main_plan_banner .slider_unit .plan_banner>a {
    display: block;
    width: 500px;
    height: 310px;
    padding: 80px 0 0;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a>p {
    position: relative;
    top: inherit;
    left: inherit;
    margin-left: 28px;
    max-width: 360px;
    color: #000;
    text-align: left;
}
.main_plan_banner .slider_unit .plan_banner>a>p {
    position: absolute;
    top: 15px;
    left: 70px;
    width: 360px;
    color: #222;
    font-size: 18px;
    text-align: center;
    line-height: 30px;
    letter-spacing: -.05em;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a>p>strong.tit {
    overflow: hidden;
    max-width: 222px;
    height: inherit;
    margin-top: 0;
    font-size: 21px;
    line-height: 1.35;
    letter-spacing: -.67px;
    font-weight: 700;
    color: #333;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.main_plan_banner .slider_unit .plan_banner>a>p>strong {
    display: block;
    overflow: hidden;
    height: 30px;
    margin-top: -4px;
    font-size: 20px;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a>p>span.desc {
    overflow: hidden;
    height: inherit;
    margin-top: 15px;
    max-width: 215px;
    font-size: 16px;
    line-height: 20px;
    color: #333;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.main_plan_banner .slider_unit .plan_banner>a>p>span {
    display: block;
    overflow: hidden;
    height: 30px;
}
.main_plan_banner.ty02 .slider_unit.right .cate_prd_list {
    margin: -41px 12px 0 auto;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list {
    position: relative;
    margin: -41px auto 0 12px;
    padding: 15px 15px 0 15px;
    width: 475px;
    height: 408px;
    font-size: 0;
    background-color: #fff;
    border-bottom: 0;
    z-index: 1;
}
.main_plan_banner .slider_unit .cate_prd_list {
    border-bottom: 0;
}
.cate_prd_list {
    border-bottom: 1px solid #ddd;
}
ol, ul {
    list-style: none;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li:first-child {
    margin-left: 0;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li {
    float: inherit;
    padding: 0;
    display: inline-block;
    margin-left: 15px;
    width: 215px;
    vertical-align: top;
}
.main_plan_banner .slider_unit .cate_prd_list>li {
    padding-bottom: 0;
}
.cate_prd_list>li {
    position: relative;
    float: left;
    width: 255px;
    padding: 30px 20px 35px;
}
.cate_prd_list>li .prd_info {
    text-align: center;
    font-size: 14px;
}
.cate_prd_list>li .prd_info .prd_thumb {
    position: relative;
    display: block;
    width: 215px;
    height: 215px;
    background: #fff;
}
.cate_prd_list>li .prd_info .prd_name {
    margin-top: 15px;
}
.cate_prd_list>li .prd_info .prd_name {
    display: block;
    min-height: 62px;
    margin: 8px 0 0;
    text-decoration: none;
}
.cate_prd_list>li .prd_info .prd_name>a {
    display: block;
}
.cate_prd_list>li .prd_info .prd_name .tx_brand {
    display: block;
    height: 20px;
    line-height: 20px;
    color: #777;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_name .tx_name {
    margin-top: 5px;
}
.cate_prd_list>li .prd_info .prd_name .tx_name {
    overflow: hidden;
    height: 40px;
    margin-top: 2px;
    padding: 2px 0;
    -webkit-box-orient: vertical;
    line-height: 18px;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    word-break: keep-all;
    color: #000;
    font-size: 14px;
    text-align: center;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 175px;
    left: auto;
    right: 0;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
}
.cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 205px;
    left: 195px;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
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
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
user agent stylesheet
button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
.cate_prd_list>li .prd_info .prd_price {
    height: 25px;
    line-height: 22px;
}
.cate_prd_list>li .prd_info .prd_price .tx_org {
    color: #777;
    font-size: 12px;
    text-decoration: line-through;
    vertical-align: middle;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_org>span {
    display: inline-block;
    font-size: 14px;
    text-decoration: line-through;
    vertical-align: 0;
    letter-spacing: -.02em;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_price .tx_org+.tx_cur {
    margin: 0 0 0 7px;
    vertical-align: bottom;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur {
    display: inline-block;
    color: #e02020;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur>span {
    display: inline-block;
    font-size: 20px;
    vertical-align: -1px;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_flag {
    margin-top: 5px;
    padding-bottom: 0;
}
.prd_flag {
    overflow: hidden;
}
.cate_prd_list>li .prd_info .prd_flag>.icon_flag {
    float: none;
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
.cate_prd_list>li .prd_info .prd_flag>.icon_flag {
    float: none;
}
.icon_flag.delivery {
    width: 60px;
    background-color: #f374b7;
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
.cate_prd_list>li .prd_info .prd_point_area {
    display: none;
    line-height: 16px;
    color: #aaa;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
.cate_prd_list>li .prd_info .prd_point_area .review_point {
    vertical-align: top;
    margin-right: 5px;
}
.review_point {
    display: inline-block;
    overflow: hidden;
    width: 92px;
    height: 15px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_off.png) no-repeat 0 0;
    text-indent: -9999px;
}
.review_point .point {
    display: inline-block;
    float: left;
    width: auto;
    height: 15px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_on.png) no-repeat 0 0;
    line-height: 0;
}
.cate_prd_list>li .prd_info .prd_btn_area {
    display: none;
}
.prd_btn_area {
    overflow: hidden;
    margin: 10px 0 0;
}
.cate_prd_list>li .prd_info .prd_btn_area button {
    width: 85px;
    height: 40px;
    color: #f27370;
    border: 1px solid #f27370;
    background: #fff;
}
.prd_btn_area button {
    float: left;
    height: 70px;
    font-size: 20px;
    color: #fff;
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
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li {
    float: inherit;
    padding: 0;
    display: inline-block;
    margin-left: 15px;
    width: 215px;
    vertical-align: top;
}
.main_plan_banner .slider_unit .cate_prd_list>li {
    padding-bottom: 0;
}
.cate_prd_list>li {
    position: relative;
    float: left;
    width: 255px;
    padding: 30px 20px 35px;
}
.cate_prd_list>li .prd_info {
    text-align: center;
    font-size: 14px;
}
.cate_prd_list>li .prd_info .prd_thumb {
    position: relative;
    display: block;
    width: 215px;
    height: 215px;
    background: #fff;
}
.cate_prd_list>li .prd_info .prd_thumb>img {
    width: auto!important;
    max-width: 215px;
    height: auto!important;
    max-height: 215px;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
.cate_prd_list>li .prd_info .prd_name {
    margin-top: 15px;
}
.cate_prd_list>li .prd_info .prd_name {
    display: block;
    min-height: 62px;
    margin: 8px 0 0;
    text-decoration: none;
}
.cate_prd_list>li .prd_info .prd_name>a {
    display: block;
}
a {
    color: #666;
    text-decoration: none;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 175px;
    left: auto;
    right: 0;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
}
.cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 205px;
    left: 195px;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
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
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
user agent stylesheet
button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
.cate_prd_list>li .prd_info .prd_price {
    height: 25px;
    line-height: 22px;
}
.cate_prd_list>li .prd_info .prd_price .tx_org {
    color: #777;
    font-size: 12px;
    text-decoration: line-through;
    vertical-align: middle;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_org>span {
    display: inline-block;
    font-size: 14px;
    text-decoration: line-through;
    vertical-align: 0;
    letter-spacing: -.02em;
}

.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_price .tx_org+.tx_cur {
    margin: 0 0 0 7px;
    vertical-align: bottom;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur {
    display: inline-block;
    color: #e02020;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_flag {
    margin-top: 5px;
    padding-bottom: 0;
}

.prd_flag {
    overflow: hidden;
}
.cate_prd_list>li .prd_info .prd_flag>.icon_flag {
    float: none;
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
.icon_flag.coupon {
    background-color: #9bce26;
}
.icon_flag.gift {
    background-color: #6fcff7;
}
.icon_flag.delivery {
    width: 60px;
    background-color: #f374b7;
}
.cate_prd_list>li .prd_info .prd_point_area {
    display: none;
    line-height: 16px;
    color: #aaa;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_point_area .review_point {
    vertical-align: top;
    margin-right: 5px;
}
.review_point {
    display: inline-block;
    overflow: hidden;
    width: 92px;
    height: 15px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_off.png) no-repeat 0 0;
    text-indent: -9999px;
}
.review_point .point {
    display: inline-block;
    float: left;
    width: auto;
    height: 15px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_on.png) no-repeat 0 0;
    line-height: 0;
}
.cate_prd_list>li .prd_info .prd_btn_area {
    display: none;
}
.prd_btn_area {
    overflow: hidden;
    margin: 10px 0 0;
}
.cate_prd_list>li .prd_info .prd_btn_area button {
    width: 85px;
    height: 40px;
    color: #f27370;
    border: 1px solid #f27370;
    background: #fff;
}
.prd_btn_area button {
    float: left;
    height: 70px;
    font-size: 20px;
    color: #fff;
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
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
user agent stylesheet
button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li {
    float: inherit;
    padding: 0;
    display: inline-block;
    margin-left: 15px;
    width: 215px;
    vertical-align: top;
}
.main_plan_banner .slider_unit .cate_prd_list>li {
    padding-bottom: 0;
}
.cate_prd_list>li {
    position: relative;
    float: left;
    width: 255px;
    padding: 30px 20px 35px;
}
.cate_prd_list>li .prd_info {
    text-align: center;
    font-size: 14px;
}
.cate_prd_list>li .prd_info .prd_thumb {
    position: relative;
    display: block;
    width: 215px;
    height: 215px;
    background: #fff;
}
.cate_prd_list>li .prd_info .prd_name {
    margin-top: 15px;
}
.cate_prd_list>li .prd_info .prd_name {
    display: block;
    min-height: 62px;
    margin: 8px 0 0;
    text-decoration: none;
}
.cate_prd_list>li .prd_info .prd_name>a {
    display: block;
}
a {
    color: #666;
    text-decoration: none;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 175px;
    left: auto;
    right: 0;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
}
.cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 205px;
    left: 195px;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
}
.cate_prd_list>li .prd_info .prd_price {
    height: 25px;
    line-height: 22px;
}
.cate_prd_list>li .prd_info .prd_price .tx_org {
    color: #777;
    font-size: 12px;
    text-decoration: line-through;
    vertical-align: middle;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_org>span {
    display: inline-block;
    font-size: 14px;
    text-decoration: line-through;
    vertical-align: 0;
    letter-spacing: -.02em;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_price .tx_org+.tx_cur {
    margin: 0 0 0 7px;
    vertical-align: bottom;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur {
    display: inline-block;
    color: #e02020;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur>span {
    display: inline-block;
    font-size: 20px;
    vertical-align: -1px;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_flag {
    margin-top: 5px;
    padding-bottom: 0;
}
.prd_flag {
    overflow: hidden;
}
.cate_prd_list>li .prd_info .prd_flag {
    margin-top: 5px;
    padding-bottom: 0;
}
.prd_flag {
    overflow: hidden;
}
.cate_prd_list>li .prd_info .prd_flag>.icon_flag {
    float: none;
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
.icon_flag.coupon {
    background-color: #9bce26;
}
.icon_flag.gift {
    background-color: #6fcff7;
}
.cate_prd_list>li .prd_info .prd_point_area {
    display: none;
    line-height: 16px;
    color: #aaa;
}

.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_point_area .review_point {
    vertical-align: top;
    margin-right: 5px;
}
.review_point {
    display: inline-block;
    overflow: hidden;
    width: 92px;
    height: 15px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_off.png) no-repeat 0 0;
    text-indent: -9999px;
}
.review_point .point {
    display: inline-block;
    float: left;
    width: auto;
    height: 15px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_on.png) no-repeat 0 0;
    line-height: 0;
}
.cate_prd_list>li .prd_info .prd_btn_area {
    display: none;
}
.prd_btn_area {
    overflow: hidden;
    margin: 10px 0 0;
}
.cate_prd_list>li .prd_info .prd_btn_area button {
    width: 85px;
    height: 40px;
    color: #f27370;
    border: 1px solid #f27370;
    background: #fff;
}
.prd_btn_area button {
    float: left;
    height: 70px;
    font-size: 20px;
    color: #fff;
}
.cate_prd_list>li .prd_info .prd_btn_area button {
    width: 85px;
    height: 40px;
    color: #f27370;
    border: 1px solid #f27370;
    background: #fff;
}

.prd_btn_area button {
    float: left;
    height: 70px;
    font-size: 20px;
    color: #fff;
}
.main_plan_banner .slider_unit:after {
    content: '';
    display: block;
    width: 1px;
    height: 685px;
    position: absolute;
    top: 0;
    left: 0;
    background-color: #ddd;
}
.main_plan_banner.ty02 .slider_unit {
    position: relative;
    float: left;
    padding: 0 10px;
    width: 520px!important;
    height: 620px;
}
.main_plan_banner .slider_unit.right {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x1.gif) repeat-y 0 0;
}
.main_plan_banner .slider_unit {
    position: relative;
    float: left;
    width: 510px;
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
.main_plan_banner.ty02 .slider_unit .plan_top {
    height: 300px;
}
.main_plan_banner.ty02 .slider_unit.right .plan_banner {
    float: inherit;
    margin-left: 0;
}
.main_plan_banner.ty02 .slider_unit .plan_banner {
    position: relative;
    overflow: hidden;
    width: 500px;
    height: 300px;
    background-size: 500px auto;
    background-position: 0 0;
    background-repeat: no-repeat;
}
.main_plan_banner .slider_unit.right .plan_banner {
    float: right;
}
.main_plan_banner .slider_unit .plan_banner {
    position: relative;
    overflow: hidden;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a {
    display: flex;
    flex-direction: column;
    justify-content: center;
    width: 500px;
    height: 259px;
    padding: 0 0 0;
}
.main_plan_banner .slider_unit .plan_banner>a {
    display: block;
    width: 500px;
    height: 310px;
    padding: 80px 0 0;
}
.main_plan_banner.ty02 .slider_unit.right .cate_prd_list {
    margin: -41px 12px 0 auto;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list {
    position: relative;
    margin: -41px auto 0 12px;
    padding: 15px 15px 0 15px;
    width: 475px;
    height: 408px;
    font-size: 0;
    background-color: #fff;
    border-bottom: 0;
    z-index: 1;
}
.main_plan_banner .slider_unit .cate_prd_list {
    border-bottom: 0;
}
.cate_prd_list {
    border-bottom: 1px solid #ddd;
}
ol, ul {
    list-style: none;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li:first-child {
    margin-left: 0;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li {
    float: inherit;
    padding: 0;
    display: inline-block;
    margin-left: 15px;
    width: 215px;
    vertical-align: top;
}
.main_plan_banner .slider_unit .cate_prd_list>li {
    padding-bottom: 0;
}
.cate_prd_list>li {
    position: relative;
    float: left;
    width: 255px;
    padding: 30px 20px 35px;
}
.cate_prd_list>li .prd_info {
    text-align: center;
    font-size: 14px;
}
.cate_prd_list>li .prd_info .prd_thumb {
    position: relative;
    display: block;
    width: 215px;
    height: 215px;
    background: #fff;
}
.cate_prd_list>li .prd_info .prd_name {
    margin-top: 15px;
}
.cate_prd_list>li .prd_info .prd_name {
    display: block;
    min-height: 62px;
    margin: 8px 0 0;
    text-decoration: none;
}
.cate_prd_list>li .prd_info .prd_name>a {
    display: block;
}
.cate_prd_list>li .prd_info .prd_name .tx_brand {
    display: block;
    height: 20px;
    line-height: 20px;
    color: #777;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_name .tx_name {
    margin-top: 5px;
}
.cate_prd_list>li .prd_info .prd_name .tx_name {
    overflow: hidden;
    height: 40px;
    margin-top: 2px;
    padding: 2px 0;
    -webkit-box-orient: vertical;
    line-height: 18px;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    word-break: keep-all;
    color: #000;
    font-size: 14px;
    text-align: center;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 175px;
    left: auto;
    right: 0;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
}
.cate_prd_list>li .prd_info .btn_zzim {
    position: absolute;
    top: 205px;
    left: 195px;
    width: 40px;
    height: 40px;
    border: 1px solid #ebebeb;
    text-indent: -999999px;
    font-size: 0;
    background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
}
.cate_prd_list>li .prd_info .prd_price {
    height: 25px;
    line-height: 22px;
}
.cate_prd_list>li .prd_info .prd_price .tx_org {
    color: #777;
    font-size: 12px;
    text-decoration: line-through;
    vertical-align: middle;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_org>span {
    display: inline-block;
    font-size: 14px;
    text-decoration: line-through;
    vertical-align: 0;
    letter-spacing: -.02em;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.cate_prd_list>li .prd_info .prd_price .tx_org+.tx_cur {
    margin: 0 0 0 7px;
    vertical-align: bottom;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur {
    display: inline-block;
    color: #e02020;
    font-weight: 700;
}
.cate_prd_list>li .prd_info .prd_price .tx_cur>span {
    display: inline-block;
    font-size: 20px;
    vertical-align: -1px;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.main_plan_banner.ty02 .slider_unit {
    position: relative;
    float: left;
    padding: 0 10px;
    width: 520px!important;
    height: 620px;
}
.main_plan_banner .slider_unit {
    position: relative;
    float: left;
    width: 510px;
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
.main_plan_banner.ty02 .slider_unit {
    position: relative;
    float: left;
    padding: 0 10px;
    width: 520px!important;
    height: 620px;
}
.main_plan_banner .slider_unit.right {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x1.gif) repeat-y 0 0;
}
.main_plan_banner .slider_unit {
    position: relative;
    float: left;
    width: 510px;
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
.main_plan_banner.ty02 .slider_unit .plan_top {
    height: 300px;
}
.main_plan_banner.ty02 .slider_unit .plan_banner {
    position: relative;
    overflow: hidden;
    width: 500px;
    height: 300px;
    background-size: 500px auto;
    background-position: 0 0;
    background-repeat: no-repeat;
}
.main_plan_banner .slider_unit .plan_banner {
    position: relative;
    overflow: hidden;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a {
    display: flex;
    flex-direction: column;
    justify-content: center;
    width: 500px;
    height: 259px;
    padding: 0 0 0;
}
.main_plan_banner .slider_unit .plan_banner>a {
    display: block;
    width: 500px;
    height: 310px;
    padding: 80px 0 0;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a>p {
    position: relative;
    top: inherit;
    left: inherit;
    margin-left: 28px;
    max-width: 360px;
    color: #000;
    text-align: left;
}
.main_plan_banner .slider_unit .plan_banner>a>p {
    position: absolute;
    top: 15px;
    left: 70px;
    width: 360px;
    color: #222;
    font-size: 18px;
    text-align: center;
    line-height: 30px;
    letter-spacing: -.05em;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a>p>strong.tit {
    overflow: hidden;
    max-width: 222px;
    height: inherit;
    margin-top: 0;
    font-size: 21px;
    line-height: 1.35;
    letter-spacing: -.67px;
    font-weight: 700;
    color: #333;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.main_plan_banner .slider_unit .plan_banner>a>p>strong {
    display: block;
    overflow: hidden;
    height: 30px;
    margin-top: -4px;
    font-size: 20px;
}
.main_plan_banner.ty02 .slider_unit .plan_banner>a>p>span.desc {
    overflow: hidden;
    height: inherit;
    margin-top: 15px;
    max-width: 215px;
    font-size: 16px;
    line-height: 20px;
    color: #333;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.main_plan_banner .slider_unit .plan_banner>a>p>span {
    display: block;
    overflow: hidden;
    height: 30px;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list {
    position: relative;
    margin: -41px auto 0 12px;
    padding: 15px 15px 0 15px;
    width: 475px;
    height: 408px;
    font-size: 0;
    background-color: #fff;
    border-bottom: 0;
    z-index: 1;
}
.main_plan_banner .slider_unit .cate_prd_list {
    border-bottom: 0;
}
.cate_prd_list {
    border-bottom: 1px solid #ddd;
}
ol, ul {
    list-style: none;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li:first-child {
    margin-left: 0;
}
.main_plan_banner.ty02 .slider_unit .cate_prd_list>li {
    float: inherit;
    padding: 0;
    display: inline-block;
    margin-left: 15px;
    width: 215px;
    vertical-align: top;
}
.main_plan_banner .slider_unit .cate_prd_list>li {
    padding-bottom: 0;
}
.cate_prd_list>li {
    position: relative;
    float: left;
    width: 255px;
    padding: 30px 20px 35px;
}
.cate_prd_list>li .prd_info {
    text-align: center;
    font-size: 14px;
}
.cate_prd_list>li .prd_info .prd_thumb {
    position: relative;
    display: block;
    width: 215px;
    height: 215px;
    background: #fff;
}
.cate_prd_list>li .prd_info .prd_thumb>img {
    width: auto!important;
    max-width: 215px;
    height: auto!important;
    max-height: 215px;
}
.cate_prd_list>li .prd_info .prd_name {
    margin-top: 15px;
}
.cate_prd_list>li .prd_info .prd_name {
    display: block;
    min-height: 62px;
    margin: 8px 0 0;
    text-decoration: none;
}
.main_plan_banner.ty02 .banner_paging {
    position: absolute;
    top: 10px;
    right: 0;
}
.main_plan_banner.ty02 .banner_paging .slick-dots {
    position: relative;
    top: 0;
}
.curation_slide .slick-dots, .main_card_banner .slick-dots, .main_onlyone_wrap .slick-dots, .main_plan_banner .slick-dots, .main_recomm_wrap .slick-dots {
    position: absolute;
    overflow: hidden;
}
.main_plan_banner .slick-dots {
    top: -38px;
    right: 0;
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
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
user agent stylesheet
button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
.curation_slide .slick-dots>li>button, .main_card_banner .slick-dots>li>button, .main_onlyone_wrap .slick-dots>li>button, .main_plan_banner .slick-dots>li>button, .main_recomm_wrap .slick-dots>li>button {
    color: #888;
    width: 24px;
    height: 24px;
    background: 0 0;
    font-size: 14px;
    line-height: 24px;
}
.main_plan_banner.ty02 .slick-arrow.slick-prev {
    left: -60px;
}
.main_plan_banner.ty02 .slick-arrow {
    position: absolute;
    top: 50%;
    margin-top: -20px;
    cursor: pointer;
    z-index: 2;
}
.main_plan_banner .slick-arrow.slick-prev {
    left: -60px;
}
.main_plan_banner .slick-arrow {
    position: absolute;
    top: 50%;
    margin-top: -20px;
    z-index: 2;
}
.slick-arrow.slick-prev {
    background-position: 0 0;
}
.slick-arrow {
    display: inline-block;
    width: 40px;
    height: 40px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow40x40_2.png) no-repeat 0 0;
    text-indent: -9999px;
}
.main_plan_banner.ty02 .slick-arrow.slick-next {
    right: -60px;
}
.main_plan_banner.ty02 .slick-arrow {
    position: absolute;
    top: 50%;
    margin-top: -20px;
    cursor: pointer;
    z-index: 2;
}
.main_plan_banner .slick-arrow.slick-next {
    right: -60px;
}
.main_plan_banner .slick-arrow {
    position: absolute;
    top: 50%;
    margin-top: -20px;
    z-index: 2;
}
.slick-arrow.slick-next {
    background-position: -40px 0;
}
.slick-arrow {
    display: inline-block;
    width: 40px;
    height: 40px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow40x40_2.png) no-repeat 0 0;
    text-indent: -9999px;
}
.main_plan_banner.ty02 .slick-arrow.slick-prev {
    left: -60px;
}
.main_plan_banner.ty02 .slick-arrow {
    position: absolute;
    top: 50%;
    margin-top: -20px;
    cursor: pointer;
    z-index: 2;
}
.main_plan_banner .slick-arrow.slick-prev {
    left: -60px;
}
.main_plan_banner .slick-arrow {
    position: absolute;
    top: 50%;
    margin-top: -20px;
    z-index: 2;
}
.slick-arrow.slick-prev {
    background-position: 0 0;
}
.slick-arrow {
    display: inline-block;
    width: 40px;
    height: 40px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow40x40_2.png) no-repeat 0 0;
    text-indent: -9999px;
}
.main_plan_banner.ty02 .slick-arrow.slick-next {
    right: -60px;
}
.main_plan_banner.ty02 .slick-arrow {
    position: absolute;
    top: 50%;
    margin-top: -20px;
    cursor: pointer;
    z-index: 2;
}
.main_plan_banner .slick-arrow.slick-next {
    right: -60px;
}
.main_plan_banner .slick-arrow {
    position: absolute;
    top: 50%;
    margin-top: -20px;
    z-index: 2;
}
.slick-arrow.slick-next {
    background-position: -40px 0;
}
.slick-arrow {
    display: inline-block;
    width: 40px;
    height: 40px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow40x40_2.png) no-repeat 0 0;
    text-indent: -9999px;
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
<div class="main_plan_banner ty02">
			
			
			
			<h3 class="main_sub_tit"><strong>인기 행사만 모았어요!</strong></h3>
			<div class="banner_wrap">
				<div class="slick_slider" id="mainPlanSlider">
					
					
					
						
						
						
					
						
						
						
					
						
						
						
							<div class="slider_unit ">
								
								
								
									
										
										
											
										
										
										<div class="plan_top">
											<div class="plan_banner" style="background-image:url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/7071207535236296943.jpg');">
												<a href="javascript:common.link.movePlanShop('500000101830111', 'Home_Planshop3_PROD');" data-ref-dispCatNo="500000101830111" data-tracking-cd="Home_Planshop3_PROD" data-attr="홈^인기행사기획전상세^조슈아선케어^1"  data-trk="/"  data-attr-imp-goodsno="A000000162086">
													<p>
														<strong class="tit" style="color:#000000;">여름에 더 빛나는 
</strong>
														<strong class="tit" style="color:#000000;">조슈아 추천 선케어
</strong>
														<span class="desc" style="color:#000000;">#SNP #한정판엽서증정</span>
													</p>
												</a>
											</div>
										</div>
										
										
										
									
								
								
								<ul class="cate_prd_list">
									
									
									
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000152314&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000152314" data-attr="홈^인기행사만 모았어요^[1+1]SNP UV 퍼펙트 에어쿨 선크림 더블 기획 (50ml+50ml)^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000152314^홈_인기행사만 모았어요^1"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015231406ko.jpg?l=ko" alt="[1+1]SNP UV 퍼펙트 에어쿨 선크림 더블 기획 (50ml+50ml)" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000152314" data-attr="홈^인기행사만 모았어요^[1+1]SNP UV 퍼펙트 에어쿨 선크림 더블 기획 (50ml+50ml)^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">에스앤피</span><p class="tx_name">[1+1]SNP UV 퍼펙트 에어쿨 선크림 더블 기획 (50ml+50ml)</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000152314">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">20,000</span>원 </span><span class="tx_cur"><span class="tx_num">14,400</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:94.0%">10점만점에 5.5점</span></span>(999+)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000152314" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000152315&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000152315" data-attr="홈^인기행사만 모았어요^[1+1]SNP UV 퍼펙트 에어톤업 선크림 더블 기획 (50ml+50ml)^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000152315^홈_인기행사만 모았어요^2"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015231509ko.jpg?l=ko" alt="[1+1]SNP UV 퍼펙트 에어톤업 선크림 더블 기획 (50ml+50ml)" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000152315" data-attr="홈^인기행사만 모았어요^[1+1]SNP UV 퍼펙트 에어톤업 선크림 더블 기획 (50ml+50ml)^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">에스앤피</span><p class="tx_name">[1+1]SNP UV 퍼펙트 에어톤업 선크림 더블 기획 (50ml+50ml)</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000152315">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">24,000</span>원 </span><span class="tx_cur"><span class="tx_num">17,280</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:96.0%">10점만점에 5.5점</span></span>(70)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000152315" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
									
								</ul>
								
							</div>
						
					
						
						
							
						
						
							<div class="slider_unit  right">
								
								
								
									
										
										
										
										<div class="plan_top">
											<div class="plan_banner" style="background-image:url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/4606774278023219079.jpg');">
												<a href="javascript:common.link.movePlanShop('500000101780195', 'Home_Planshop3_PROD');" data-ref-dispCatNo="500000101780195" data-tracking-cd="Home_Planshop3_PROD" data-attr="홈^인기행사기획전상세^신상향수런칭^2"  data-trk="/"  data-attr-imp-goodsno="A000000162086">
													<p>
														<strong class="tit" style="color:#ffffff;">몽블랑&지미추
</strong>
														<strong class="tit" style="color:#ffffff;">NEW LAUNCHING
</strong>
														<span class="desc" style="color:#ffffff;">#20%할인 #증정까지</span>
													</p>
												</a>
											</div>
										</div>
										
										
										
									
								
								
								<ul class="cate_prd_list">
									
									
									
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000169234&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000169234" data-attr="홈^인기행사만 모았어요^몽블랑 레전드 레드 EDP 30ml/50ml 2종 택1^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="002" data-trk="null" data-impression="A000000169234^홈_인기행사만 모았어요^1"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016923409ko.jpg?l=ko" alt="몽블랑 레전드 레드 EDP 30ml/50ml 2종 택1" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000169234" data-attr="홈^인기행사만 모았어요^몽블랑 레전드 레드 EDP 30ml/50ml 2종 택1^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="002" data-trk="null"><span class="tx_brand">몽블랑</span><p class="tx_name">몽블랑 레전드 레드 EDP 30ml/50ml 2종 택1</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000169234">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">63,000</span>원 ~</span><span class="tx_cur"><span class="tx_num">50,400</span>원 ~</span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:%">10점만점에 5.5점</span></span></p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000169234" data-ref-dispCatNo="90000010001" data-ref-itemNo="002">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000169052&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000169052" data-attr="홈^인기행사만 모았어요^지미추 맨 아쿠아 EDT 30ml^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000169052^홈_인기행사만 모았어요^2"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016905202ko.jpg?l=ko" alt="지미추 맨 아쿠아 EDT 30ml" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000169052" data-attr="홈^인기행사만 모았어요^지미추 맨 아쿠아 EDT 30ml^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">지미추</span><p class="tx_name">지미추 맨 아쿠아 EDT 30ml</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000169052">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">70,000</span>원 </span><span class="tx_cur"><span class="tx_num">56,000</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:%">10점만점에 5.5점</span></span></p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000169052" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
									
										
									
										
									
										
									
										
									
								</ul>
								
							</div>
						
					
						
						
						
							<div class="slider_unit ">
								
								
								
									
										
										
											
										
										
										<div class="plan_top">
											<div class="plan_banner" style="background-image:url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/5617311944641381166.jpg');">
												<a href="javascript:common.link.movePlanShop('500000102390023', 'Home_Planshop3_PROD');" data-ref-dispCatNo="500000102390023" data-tracking-cd="Home_Planshop3_PROD" data-attr="홈^인기행사기획전상세^3CE 썸머신상^3"  data-trk="/"  data-attr-imp-goodsno="A000000162086">
													<p>
														<strong class="tit" style="color:#000000;">썸머 청량 메이크업
</strong>
														<strong class="tit" style="color:#000000;">3CE 신상으로 완성
</strong>
														<span class="desc" style="color:#000000;">#최대20% #틴트증정
</span>
													</p>
												</a>
											</div>
										</div>
										
										
										
									
								
								
								<ul class="cate_prd_list">
									
									
									
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168433&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000168433" data-attr="홈^인기행사만 모았어요^3CE 이지 브로우 디자이닝 펜슬^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000168433^홈_인기행사만 모았어요^1"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016843305ko.jpg?l=ko" alt="3CE 이지 브로우 디자이닝 펜슬" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000168433" data-attr="홈^인기행사만 모았어요^3CE 이지 브로우 디자이닝 펜슬^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">3CE</span><p class="tx_name">3CE 이지 브로우 디자이닝 펜슬</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000168433">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">15,000</span>원 </span><span class="tx_cur"><span class="tx_num">13,500</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:100.0%">10점만점에 5.5점</span></span>(1)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000168433" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000148591&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000148591" data-attr="홈^인기행사만 모았어요^[NEW 컬러] 3CE 블러 워터 틴트^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="012" data-trk="null" data-impression="A000000148591^홈_인기행사만 모았어요^2"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014859107ko.jpg?l=ko" alt="[NEW 컬러] 3CE 블러 워터 틴트" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000148591" data-attr="홈^인기행사만 모았어요^[NEW 컬러] 3CE 블러 워터 틴트^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="012" data-trk="null"><span class="tx_brand">3CE</span><p class="tx_name">[NEW 컬러] 3CE 블러 워터 틴트</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000148591">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">15,000</span>원 </span><span class="tx_cur"><span class="tx_num">13,500</span>원 </span></p><p class="prd_flag"><span class="icon_flag coupon">쿠폰</span><span class="icon_flag gift">증정</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:92.0%">10점만점에 5.5점</span></span>(999+)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000148591" data-ref-dispCatNo="90000010001" data-ref-itemNo="012">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
									
								</ul>
								
							</div>
						
					
						
						
							
						
						
							<div class="slider_unit  right">
								
								
								
									
										
										
											
										
										
										<div class="plan_top">
											<div class="plan_banner" style="background-image:url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/19106999871084845.jpg');">
												<a href="javascript:common.link.movePlanShop('500000102140109', 'Home_Planshop3_PROD');" data-ref-dispCatNo="500000102140109" data-tracking-cd="Home_Planshop3_PROD" data-attr="홈^인기행사기획전상세^바디X더모특집^4"  data-trk="/"  data-attr-imp-goodsno="A000000162086">
													<p>
														<strong class="tit" style="color:#000000;">더 산뜻한 썸머
</strong>
														<strong class="tit" style="color:#000000;">바디 모음 zip.
</strong>
														<span class="desc" style="color:#000000;">#더모 산뜻 샤워</span>
													</p>
												</a>
											</div>
										</div>
										
										
										
									
								
								
								<ul class="cate_prd_list">
									
									
									
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000165876&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000165876" data-attr="홈^인기행사만 모았어요^[이세영Pick] 세타필 젠틀 바디워시 리프레싱 400ml 1+1 기획^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000165876^홈_인기행사만 모았어요^1"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016587607ko.jpeg?l=ko" alt="[이세영Pick] 세타필 젠틀 바디워시 리프레싱 400ml 1+1 기획" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000165876" data-attr="홈^인기행사만 모았어요^[이세영Pick] 세타필 젠틀 바디워시 리프레싱 400ml 1+1 기획^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">세타필</span><p class="tx_name">[이세영Pick] 세타필 젠틀 바디워시 리프레싱 400ml 1+1 기획</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000165876">찜하기</button><p class="prd_price"><span class="tx_cur"><span class="tx_num">12,500</span>원 </span></p><p class="prd_flag"><span class="icon_flag coupon">쿠폰</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:94.0%">10점만점에 5.5점</span></span>(62)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000165876" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168144&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000168144" data-attr="홈^인기행사만 모았어요^피지오겔 레드수딩 시카밸런스 +AC 바디워시 320ml^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000168144^홈_인기행사만 모았어요^2"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016814401ko.jpg?l=ko" alt="피지오겔 레드수딩 시카밸런스 +AC 바디워시 320ml" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000168144" data-attr="홈^인기행사만 모았어요^피지오겔 레드수딩 시카밸런스 +AC 바디워시 320ml^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">피지오겔</span><p class="tx_name">피지오겔 레드수딩 시카밸런스 +AC 바디워시 320ml</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000168144">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">25,000</span>원 </span><span class="tx_cur"><span class="tx_num">20,000</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:86.0%">10점만점에 5.5점</span></span>(4)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000168144" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
									
										
									
								</ul>
								
							</div>
						
					
						
						
						
							<div class="slider_unit ">
								
								
								
									
										
										
											
										
										
										<div class="plan_top">
											<div class="plan_banner" style="background-image:url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/3643769559817483638.jpg');">
												<a href="javascript:common.link.movePlanShop('500000102190078', 'Home_Planshop3_PROD');" data-ref-dispCatNo="500000102190078" data-tracking-cd="Home_Planshop3_PROD" data-attr="홈^인기행사기획전상세^남자스킨케어^5"  data-trk="/"  data-attr-imp-goodsno="A000000162086">
													<p>
														<strong class="tit" style="color:#000000;">UP TO 48%
</strong>
														<strong class="tit" style="color:#000000;">여름엔 브로앤팁스
</strong>
														<span class="desc" style="color:#000000;">#개기름OUT #첫구매혜택</span>
													</p>
												</a>
											</div>
										</div>
										
										
										
									
								
								
								<ul class="cate_prd_list">
									
									
									
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168893&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000168893" data-attr="홈^인기행사만 모았어요^브로앤팁스 네버오일리 스킨미스트/올인원 2종세트^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000168893^홈_인기행사만 모았어요^1"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016889302ko.jpg?l=ko" alt="브로앤팁스 네버오일리 스킨미스트/올인원 2종세트" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000168893" data-attr="홈^인기행사만 모았어요^브로앤팁스 네버오일리 스킨미스트/올인원 2종세트^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">브로앤팁스</span><p class="tx_name">브로앤팁스 네버오일리 스킨미스트/올인원 2종세트</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000168893">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">47,000</span>원 </span><span class="tx_cur"><span class="tx_num">28,200</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:%">10점만점에 5.5점</span></span></p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000168893" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000168886&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000168886" data-attr="홈^인기행사만 모았어요^브로앤팁스 네버 오일리 스킨 미스트 100ml^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000168886^홈_인기행사만 모았어요^2"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016888603ko.jpg?l=ko" alt="브로앤팁스 네버 오일리 스킨 미스트 100ml" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000168886" data-attr="홈^인기행사만 모았어요^브로앤팁스 네버 오일리 스킨 미스트 100ml^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">브로앤팁스</span><p class="tx_name">브로앤팁스 네버 오일리 스킨 미스트 100ml</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000168886">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">15,000</span>원 </span><span class="tx_cur"><span class="tx_num">9,750</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:%">10점만점에 5.5점</span></span></p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000168886" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
									
										
									
										
									
								</ul>
								
							</div>
						
					
						
						
							
						
						
							<div class="slider_unit  right">
								
								
								
									
										
										
											
										
										
										<div class="plan_top">
											<div class="plan_banner" style="background-image:url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/1046827522023801518.jpg');">
												<a href="javascript:common.link.movePlanShop('500000101510155', 'Home_Planshop3_PROD');" data-ref-dispCatNo="500000101510155" data-tracking-cd="Home_Planshop3_PROD" data-attr="홈^인기행사기획전상세^바캉스럽티켓^6"  data-trk="/"  data-attr-imp-goodsno="A000000162086">
													<p>
														<strong class="tit" style="color:#000000;">안심하고 휴식하는
</strong>
														<strong class="tit" style="color:#000000;">바캉스 럽티켓
</strong>
														<span class="desc" style="color:#000000;">#Max 37% #증정</span>
													</p>
												</a>
											</div>
										</div>
										
										
										
									
								
								
								<ul class="cate_prd_list">
									
									
									
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000148268&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000148268" data-attr="홈^인기행사만 모았어요^(의료기기) [증량] 바른생각 에어핏 20P (얇고 가벼운 / 올리브영 단독)^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000148268^홈_인기행사만 모았어요^1"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0014/A00000014826807ko.jpg?l=ko" alt="(의료기기) [증량] 바른생각 에어핏 20P (얇고 가벼운 / 올리브영 단독)" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000148268" data-attr="홈^인기행사만 모았어요^(의료기기) [증량] 바른생각 에어핏 20P (얇고 가벼운 / 올리브영 단독)^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">바른생각</span><p class="tx_name">(의료기기) [증량] 바른생각 에어핏 20P (얇고 가벼운 / 올리브영 단독)</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000148268">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">17,900</span>원 </span><span class="tx_cur"><span class="tx_num">13,900</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:98.0%">10점만점에 5.5점</span></span>(920)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000148268" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000161416&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000161416" data-attr="홈^인기행사만 모았어요^이브 울트라씬 더블기획 (10p+10p/의료기기)^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000161416^홈_인기행사만 모았어요^2"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016141601ko.jpg?l=ko" alt="이브 울트라씬 더블기획 (10p+10p/의료기기)" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000161416" data-attr="홈^인기행사만 모았어요^이브 울트라씬 더블기획 (10p+10p/의료기기)^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">이브</span><p class="tx_name">이브 울트라씬 더블기획 (10p+10p/의료기기)</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000161416">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">25,900</span>원 </span><span class="tx_cur"><span class="tx_num">21,150</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag coupon">쿠폰</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:100.0%">10점만점에 5.5점</span></span>(2)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000161416" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
								</ul>
								
							</div>
						
					
						
						
						
							<div class="slider_unit ">
								
								
								
									
										
										
											
										
										
										<div class="plan_top">
											<div class="plan_banner" style="background-image:url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/8052599999237768469.jpg');">
												<a href="javascript:common.link.movePlanShop('500000101440223', 'Home_Planshop3_PROD');" data-ref-dispCatNo="500000101440223" data-tracking-cd="Home_Planshop3_PROD" data-attr="홈^인기행사기획전상세^캠핑용품모음^7"  data-trk="/"  data-attr-imp-goodsno="A000000162086">
													<p>
														<strong class="tit" style="color:#000000;">화창한 여름
</strong>
														<strong class="tit" style="color:#000000;">캠핑가기 딱 좋은날
</strong>
														<span class="desc" style="color:#000000;">#캠핑용품 #MAX 30%
</span>
													</p>
												</a>
											</div>
										</div>
										
										
										
									
								
								
								<ul class="cate_prd_list">
									
									
									
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000167821&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="B000000167821" data-attr="홈^인기행사만 모았어요^단순생활 넥밴드 휴대용 선풍기 롤링^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="002" data-trk="null" data-impression="B000000167821^홈_인기행사만 모았어요^1"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/B00000016782101ko.jpg?l=ko" alt="단순생활 넥밴드 휴대용 선풍기 롤링" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="B000000167821" data-attr="홈^인기행사만 모았어요^단순생활 넥밴드 휴대용 선풍기 롤링^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="002" data-trk="null"><span class="tx_brand">단순생활</span><p class="tx_name">단순생활 넥밴드 휴대용 선풍기 롤링</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="B000000167821">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">39,900</span>원 </span><span class="tx_cur"><span class="tx_num">32,900</span>원 </span></p><p class="prd_flag"><span class="icon_flag coupon">쿠폰</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:98.0%">10점만점에 5.5점</span></span>(7)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="B000000167821" data-ref-dispCatNo="90000010001" data-ref-itemNo="002">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=B000000155783&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="B000000155783" data-attr="홈^인기행사만 모았어요^무로 아웃도어 원터치 텐트 (3~4인용)^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="B000000155783^홈_인기행사만 모았어요^2"><span class="thumb_flag best">베스트</span><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/B00000015578301ko.jpg?l=ko" alt="무로 아웃도어 원터치 텐트 (3~4인용)" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="B000000155783" data-attr="홈^인기행사만 모았어요^무로 아웃도어 원터치 텐트 (3~4인용)^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">무로</span><p class="tx_name">무로 아웃도어 원터치 텐트 (3~4인용)</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="B000000155783">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">69,900</span>원 </span><span class="tx_cur"><span class="tx_num">60,900</span>원 </span></p><p class="prd_flag"><span class="icon_flag coupon">쿠폰</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:96.0%">10점만점에 5.5점</span></span>(6)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="B000000155783" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
									
										
									
								</ul>
								
							</div>
						
					
						
						
							
						
						
							<div class="slider_unit  right">
								
								
								
									
										
										
											
										
										
										<div class="plan_top">
											<div class="plan_banner" style="background-image:url('https://image.oliveyoung.co.kr/uploads/images//categoryBanner/2115953127584635385.jpg');">
												<a href="javascript:common.link.movePlanShop('500000102150067', 'Home_Planshop3_PROD');" data-ref-dispCatNo="500000102150067" data-tracking-cd="Home_Planshop3_PROD" data-attr="홈^인기행사기획전상세^브러쉬추천템모음^8"  data-trk="/"  data-attr-imp-goodsno="A000000162086">
													<p>
														<strong class="tit" style="color:#000000;">메이크업 완성도를 
</strong>
														<strong class="tit" style="color:#000000;">올리는 꿀팁
</strong>
														<span class="desc" style="color:#000000;">#브러쉬 추천</span>
													</p>
												</a>
											</div>
										</div>
										
										
										
									
								
								
								<ul class="cate_prd_list">
									
									
									
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000162332&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000162332" data-attr="홈^인기행사만 모았어요^[신비 PICK] 스튜디오17 블러셔 브러쉬 833^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000162332^홈_인기행사만 모았어요^1"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016233202ko.jpg?l=ko" alt="[신비 PICK] 스튜디오17 블러셔 브러쉬 833" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000162332" data-attr="홈^인기행사만 모았어요^[신비 PICK] 스튜디오17 블러셔 브러쉬 833^1" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">스튜디오17</span><p class="tx_name">[신비 PICK] 스튜디오17 블러셔 브러쉬 833</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000162332">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">6,800</span>원 </span><span class="tx_cur"><span class="tx_num">5,900</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span><span class="icon_flag delivery">오늘드림</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:96.0%">10점만점에 5.5점</span></span>(97)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000162332" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
											<li>
												
												<div class="prd_info "><a href="https://www.oliveyoung.co.kr/store/goods/getGoodsDetail.do?goodsNo=A000000160294&dispCatNo=90000010001&trackingCd=Home_Planshop3&curation&egcode&rccode&egrankcode" name="Home_Planshop3" class="prd_thumb goodsList" data-ref-goodsNo="A000000160294" data-attr="홈^인기행사만 모았어요^[단독기획] 더툴랩 105 파운데이션 브러쉬 기획 (브러쉬+파운데이션브러쉬클렌져)^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null" data-impression="A000000160294^홈_인기행사만 모았어요^2"><img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016029401ko.jpg?l=ko" alt="[단독기획] 더툴랩 105 파운데이션 브러쉬 기획 (브러쉬+파운데이션브러쉬클렌져)" onerror="common.errorImg(this);"></a><div class="prd_name"><a href="javascript:;" name="Home_Planshop3" class="goodsList" data-ref-goodsNo="A000000160294" data-attr="홈^인기행사만 모았어요^[단독기획] 더툴랩 105 파운데이션 브러쉬 기획 (브러쉬+파운데이션브러쉬클렌져)^2" data-ref-dispCatNo="90000010001" data-ref-itemNo="001" data-trk="null"><span class="tx_brand">더툴랩</span><p class="tx_name">[단독기획] 더툴랩 105 파운데이션 브러쉬 기획 (브러쉬+파운데이션브러쉬클렌져)</p></a></div><button class="btn_zzim jeem" data-ref-goodsNo="A000000160294">찜하기</button><p class="prd_price"><span class="tx_org"><span class="tx_num">36,550</span>원 </span><span class="tx_cur"><span class="tx_num">34,720</span>원 </span></p><p class="prd_flag"><span class="icon_flag sale">세일</span></p><p class="prd_point_area tx_num"><span class="review_point"><span class="point" style="width:100.0%">10점만점에 5.5점</span></span>(2)</p><p class="prd_btn_area"><button class="cartBtn" data-ref-goodsNo="A000000160294" data-ref-dispCatNo="90000010001" data-ref-itemNo="001">장바구니</button><button class="btn_new_pop goodsList">새창보기</button></p></div>

												
											</li>
										
									
										
									
										
									
										
									
										
									
								</ul>
								
							</div>
						
					
						
						
						
					
					
				</div>
			</div>
			<div class="banner_paging" role="toolbar"><ul class="slick-dots" role="tablist" style="display: block;"><li class="slick-active" aria-hidden="false" role="presentation" aria-selected="true" aria-controls="navigation20" id="slick-slide20"><button type="button" data-role="none" role="button" tabindex="0">1</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation21" id="slick-slide21" class=""><button type="button" data-role="none" role="button" tabindex="0">2</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation22" id="slick-slide22"><button type="button" data-role="none" role="button" tabindex="0">3</button></li><li aria-hidden="true" role="presentation" aria-selected="false" aria-controls="navigation23" id="slick-slide23"><button type="button" data-role="none" role="button" tabindex="0">4</button></li></ul></div>
			<span class="slick-prev prev slick-arrow" id="plan_prev" style="display: block;">prev</span>
			<span class="slick-next next slick-arrow" id="plan_next" style="display: block;">next</span>
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
			
			<c:if test="${not empty onlyoneList }">
				 <c:forEach items="${onlyoneList }" var="onlyonedto">
				 	<div class="slick-slide slick-cloned onlyoneimgdiv" data-slick-index="-3" aria-hidden="true" style="width: 343px;">
				 	   <a href="${onlyonedto.exd_path }" class="onlyone_box">
				 	   	 <img src="${onlyonedto.exi_img }" alt="${onlyonedto.ex_name }">
<%-- 				 <c:if test="${onlyonedto.ex_name == '브링그린 X 세븐틴 깜짝선물' || onlyonedto.ex_name == '아옳이Pick 젤네일/젤페디' ||
				 	onlyonedto.ex_name == '딜라이트 프로젝트 화제의 신상 NEW' || onlyonedto.ex_name == '여름맛집 핫플레이스! 선/클렌징 특가' ||
				 	onlyonedto.ex_name == '웨이크메이크 7월 행사 미리보기' || onlyonedto.ex_name == '강철부대2 이주용PICK #강철스프레이'}">
				 	<div class="slick-slide slick-cloned onlyoneimgdiv" data-slick-index="-3" aria-hidden="true" style="width: 343px;">
				 	   <a href="${onlyonedto.exd_path }" class="onlyone_box">
				 	   	 <img src="${onlyonedto.exi_img }" alt="${onlyonedto.ex_name }">
				 </c:if>	 --%>   	 
				 	   	 <div class="txt" style="color:#000000">
				 	   	 	<c:if test="${onlyonedto.ex_name ==  '브링그린 X 세븐틴 깜짝선물'}">
								<strong class="title">브링그린X세븐틴</strong>
								<strong class="title">올영데이 할인!!</strong>
								<span class="desc">내 피부는 오늘도 맑음</span>
							</c:if>
							<c:if test="${onlyonedto.ex_name ==  '아옳이Pick 젤네일/젤페디'}">
								<strong class="title">웨이크메이크</strong>
								<strong class="title">아옳이 PICK!</strong>
								<span class="desc">초특가에 증정까지</span>
							</c:if>
							<c:if test="${onlyonedto.ex_name ==  '딜라이트 프로젝트 화제의 신상 NEW'}">
								<strong class="title">상반기 인기간식</strong>
								<strong class="title">최대 27% OFF</strong>
								<span class="desc">서울체크인 속 신상까지!</span>
							</c:if>
							<c:if test="${onlyonedto.ex_name ==  '여름맛집 핫플레이스! 선/클렌징 특가'}">
								<strong class="title">식물나라</strong>
								<strong class="title">라운드어라운드</strong>
								<span class="desc">선/클렌징 최대 41% 할인</span>
							</c:if>														
							<c:if test="${onlyonedto.ex_name ==  '웨이크메이크 7월 행사 미리보기'}">
								<strong class="title">웨이크메이크</strong>
								<strong class="title">요즘 여.쿨.라</strong>
								<span class="desc">여.쿨.라.템 미리보기</span>
							</c:if>
							<c:if test="${onlyonedto.ex_name ==  '강철부대2 이주용PICK #강철스프레이'}">
								<strong class="title" style="color: white;">아이디얼 포맨</strong>
								<strong class="title" style="color: white;">이주용 PICK!</strong>
								<span class="desc" style="color: white;">강철 헤어스프레이</span>
							</c:if>																					
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
</div><!-- Wrapper -->
</main>
<footer>
</footer>

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