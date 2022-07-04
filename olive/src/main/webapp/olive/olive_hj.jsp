<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>잘하셨조 - 올리브영 온라인몰</title>
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


@font-face{font-family:Montserrat;font-style:normal;font-weight:400;src:local(Montserrat-Light),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Light.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Light.woff") format("woff")}

@font-face{font-family:Montserrat;font-style:normal;font-weight:500;src:local(Montserrat),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Regular.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Regular.woff") format("woff")}

@font-face{font-family:Montserrat;font-style:normal;font-weight:700;src:local(Montserrat-SemiBold),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-SemiBold.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-SemiBold.woff") format("woff")}

@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:400;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff") format("woff")}

@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:500;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Medium.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Medium.woff") format("woff")}

@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:700;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Bold.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Bold.woff") format("woff")}

@font-face{font-family:Dovemayo-Medium;src:url("https://www.oliveyoung.co.kr/pc-static-root/fonts/dovemayo/Dovemayo-Medium.woff") format('woff');font-weight:400;font-style:normal}

body,html{-webkit-font-smoothing:antialiased;-webkit-font-smoothing:antialiased}

a,address,blockquote,body,dd,div,dl,dt,em,fieldset,form,h1,h2,h3,h4,h5,h6,img,input,label,li,ol,p,pre,select,span,strong,textarea,ul{margin:0;padding:0;border:0}

#Header {
    width: 1020px;
    margin: 0 auto;
}
#Container, #Footer, #Header, #Wrapper {
    width: 100%;
    min-width: 1020px;
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

#Header .top_util .menu_list>li * {
    font-size: 12px;
    color: #333;
    white-space: nowrap;
}

#Header .top_util .menu_list>li+li {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x11.gif) no-repeat 0 50%;
}

#Header .top_util .menu_list>li {
    float: left;
    padding: 0 9px 0 10px;
    line-height: 30px;
    white-space: nowrap;
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

.header_inner .search_box #searchSubmit {
    position: absolute;
    top: 7px;
    right: 18px;
    width: 21px;
    height: 21px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_search21x212.png) no-repeat 50% 50%;
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
}

button, input[type=submit] {
    font-family: Montserrat,-apple-system,NotoSansCJKkr,AppleSDGothicNeo,Roboto,sans-serif;
    font-weight: 700;
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

.header_inner .search_box .search_layer .search_tab_cont {
    display: none;
    padding-top: 50px;
}

.header_inner .search_box .search_layer .search_tab_cont ul {
    padding: 10px 20px;
}

ol, ul {
    list-style: none;
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

.header_inner .search_box .search_layer .search_tab.tab02 {
    left: 50%;
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
.header_inner .search_box .search_layer .search_tab_cont ul {
    padding: 10px 20px;
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

button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
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

.header_inner .mymenu_area {
    float: right;
    margin-top: 10px;
}
ol, ul {
    list-style: none;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
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


li {
    display: list-item;
    text-align: -webkit-match-parent;
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
a {
    color: #666;
    text-decoration: none;
}

a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
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

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}


div {
    display: block;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}


div {
    display: block;
}


.header_inner .mymenu_area>li.delivery .delivery_box p {
    font-weight: 500;
    font-size: 12px;
    line-height: 16px;
    color: #000;
    letter-spacing: 0;
    word-break: keep-all;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
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
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
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
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

.header_inner .mymenu_area>li.delivery .delivery_addr .addr_box .inner {
    padding: 25px;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.tit01 {
    font-size: 18px;
    color: #000;
    letter-spacing: normal;
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

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.tit01 span {
    font-size: 12px;
    color: #666;
    font-weight: 400;
    letter-spacing: normal;
    margin-left: 6px;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.tit01 {
    font-size: 18px;
    color: #000;
    letter-spacing: normal;
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

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
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
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

strong {
    font-weight: bold;
}

.delivery_addr .addr_box .set-box>p {
    font-size: 12px;
    color: #666;
    word-break: keep-all;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.delivery_addr .addr_box .set-box .toggleInput {
    position: absolute;
    right: 20px;
    top: 50%;
    transform: translateY(-50%);
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.toggleInput .switch {
    position: relative;
    display: inline-block;
    width: 45px;
    height: 26px;
    border-radius: 13.5px;
    overflow: hidden;
}
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}

label {
    cursor: default;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
input[type=checkbox]:disabled, input[type=checkbox]:read-only {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png) no-repeat -20px -20px;
}
.toggleInput .switch input {
    opacity: 0;
    width: 0;
    height: 0;
}
input[type=checkbox] {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png) no-repeat 0 0;
}
input[type=checkbox], input[type=radio] {
    width: 20px;
    height: 20px;
    border: 0!important;
    padding: 0;
    font-size: 0;
    line-height: 0;
    margin-right: 8px;
    vertical-align: top;
    cursor: pointer;
    appearance: none;
    -webkit-appearance: none;
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
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}

input[type="checkbox" i] {
    background-color: initial;
    cursor: default;
    appearance: auto;
    box-sizing: border-box;
    margin: 3px 3px 3px 4px;
    padding: initial;
    border: initial;
}

input {
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
    color: fieldtext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    appearance: auto;
    -webkit-rtl-ordering: logical;
    cursor: text;
    background-color: field;
    margin: 0em;
    padding: 1px 2px;
    border-width: 2px;
    border-style: inset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
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

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.toggleInput .switch {
    position: relative;
    display: inline-block;
    width: 45px;
    height: 26px;
    border-radius: 13.5px;
    overflow: hidden;
}
button, input.button, input.image, input.submit, label {
    cursor: pointer;
}

label {
    cursor: default;
}

.delivery_addr .addr_box .set-box .toggleInput {
    position: absolute;
    right: 20px;
    top: 50%;
    transform: translateY(-50%);
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.delivery_addr .addr_box .set-box {
    padding: 15px 20px;
    background: #f5f5f5;
    position: relative;
    padding-right: 100px;
    margin-top: 21px;
}

.header_inner .mymenu_area>li.delivery .delivery_addr .addr_box .inner {
    padding: 25px;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

.header_inner .mymenu_area>li.delivery .delivery_addr .addr_box .mCustomScrollbar {
    height: 300px;
    overflow-y: auto;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.mCustomScrollbar.mCS_no_scrollbar, .mCustomScrollbar.mCS_touch_action {
    -ms-touch-action: auto;
    touch-action: auto;
}
.mCustomScrollbar.mCS_no_scrollbar, .mCustomScrollbar.mCS_touch_action {
    -ms-touch-action: auto;
    touch-action: auto;
}
.mCustomScrollbar {
    -ms-touch-action: pinch-zoom;
    touch-action: pinch-zoom;
}
.mCustomScrollbar {
    -ms-touch-action: pinch-zoom;
    touch-action: pinch-zoom;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.mCustomScrollBox {
    position: relative;
    overflow: hidden;
    height: 100%;
    max-width: 100%;
    outline: none;
    direction: ltr;
}
.mCustomScrollBox {
    position: relative;
    overflow: hidden;
    height: 100%;
    max-width: 100%;
    outline: 0;
    direction: ltr;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.mCSB_container.mCS_no_scrollbar_y.mCS_y_hidden {
    margin-right: 0;
}
.mCSB_container.mCS_no_scrollbar_y.mCS_y_hidden {
    margin-right: 0;
}
.mCSB_inside > .mCSB_container {
    margin-right: 15px;
}
.mCSB_inside>.mCSB_container {
    margin-right: 30px;
}
.mCSB_container {
    overflow: hidden;
    width: auto;
    height: auto;
}
.mCSB_container {
    overflow: hidden;
    width: auto;
    height: auto;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}

ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.mCustomScrollBox {
    position: relative;
    overflow: hidden;
    height: 100%;
    max-width: 100%;
    outline: none;
    direction: ltr;
}
.mCustomScrollBox {
    position: relative;
    overflow: hidden;
    height: 100%;
    max-width: 100%;
    outline: 0;
    direction: ltr;
}

element.style {
    position: relative;
    top: 0;
    left: 0;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.mCSB_container.mCS_no_scrollbar_y.mCS_y_hidden {
    margin-right: 0;
}
.mCSB_container.mCS_no_scrollbar_y.mCS_y_hidden {
    margin-right: 0;
}
.mCSB_inside > .mCSB_container {
    margin-right: 15px;
}
.mCSB_inside>.mCSB_container {
    margin-right: 30px;
}
.mCSB_container {
    overflow: hidden;
    width: auto;
    height: auto;
}
.mCSB_container {
    overflow: hidden;
    width: auto;
    height: auto;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
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
    opacity: .75;
    filter: "alpha(opacity=75)";
    -ms-filter: "alpha(opacity=75)";
}
.mCSB_scrollTools, .mCSB_scrollTools .mCSB_buttonDown, .mCSB_scrollTools .mCSB_buttonLeft, .mCSB_scrollTools .mCSB_buttonRight, .mCSB_scrollTools .mCSB_buttonUp, .mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar {
    -webkit-transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
    -moz-transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
    -o-transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
    transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
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

.mCustomScrollBox {
    position: relative;
    overflow: hidden;
    height: 100%;
    max-width: 100%;
    outline: none;
    direction: ltr;
}
.mCustomScrollBox {
    position: relative;
    overflow: hidden;
    height: 100%;
    max-width: 100%;
    outline: 0;
    direction: ltr;
}


.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.mCSB_scrollTools .mCSB_draggerContainer {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    height: auto;
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
.mCSB_scrollTools .mCSB_dragger {
    cursor: pointer;
    width: 100%;
    height: 30px;
    z-index: 1;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar {
    background-color: #b7b7b7;
}
.mCSB_scrollTools, .mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar, .mCSB_scrollTools .mCSB_buttonUp, .mCSB_scrollTools .mCSB_buttonDown, .mCSB_scrollTools .mCSB_buttonLeft, .mCSB_scrollTools .mCSB_buttonRight {
    -webkit-transition: opacity .2s ease-in-out, background-color .2s ease-in-out;
    -moz-transition: opacity .2s ease-in-out, background-color .2s ease-in-out;
    -o-transition: opacity .2s ease-in-out, background-color .2s ease-in-out;
    transition: opacity .2s ease-in-out, background-color .2s ease-in-out;
}
.mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar {
    position: relative;
    width: 4px;
    height: 100%;
    margin: 0 auto;
    -webkit-border-radius: 16px;
    -moz-border-radius: 16px;
    border-radius: 16px;
    text-align: center;
}
.mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar {
    background-color: #fff;
    background-color: rgba(255,255,255,.75);
    filter: "alpha(opacity=75)";
    -ms-filter: "alpha(opacity=75)";
}
.mCSB_scrollTools, .mCSB_scrollTools .mCSB_buttonDown, .mCSB_scrollTools .mCSB_buttonLeft, .mCSB_scrollTools .mCSB_buttonRight, .mCSB_scrollTools .mCSB_buttonUp, .mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar {
    -webkit-transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
    -moz-transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
    -o-transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
    transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
}
.mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar {
    position: relative;
    width: 4px;
    height: 100%;
    margin: 0 auto;
    -webkit-border-radius: 16px;
    -moz-border-radius: 16px;
    border-radius: 16px;
    text-align: center;
}
.mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar {
    background-color: #000!important;
    background-color: rgba(0,0,0,.2)!important;
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
.mCSB_scrollTools .mCSB_dragger {
    cursor: pointer;
    width: 100%;
    height: 30px;
    z-index: 1;
}


.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.mCSB_scrollTools .mCSB_draggerRail {
}
.mCSB_scrollTools .mCSB_draggerRail {
    width: 2px;
    height: 100%;
    margin: 0 auto;
    -webkit-border-radius: 16px;
    -moz-border-radius: 16px;
    border-radius: 16px;
}
.mCSB_scrollTools .mCSB_draggerRail {
    background-color: #000;
    background-color: rgba(0,0,0,.4);
    filter: "alpha(opacity=40)";
    -ms-filter: "alpha(opacity=40)";
}
.mCSB_scrollTools .mCSB_draggerRail {
    width: 2px;
    height: 100%;
    margin: 0 auto;
    -webkit-border-radius: 16px;
    -moz-border-radius: 16px;
    border-radius: 16px;
}
.mCSB_scrollTools .mCSB_draggerRail {
    background-color: #fff!important;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.mCSB_scrollTools .mCSB_draggerContainer {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    height: auto;
}
.mCSB_scrollTools .mCSB_draggerContainer {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    height: auto;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

element.style {
    display: none;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
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
    opacity: .75;
    filter: "alpha(opacity=75)";
    -ms-filter: "alpha(opacity=75)";
}
.mCSB_scrollTools, .mCSB_scrollTools .mCSB_buttonDown, .mCSB_scrollTools .mCSB_buttonLeft, .mCSB_scrollTools .mCSB_buttonRight, .mCSB_scrollTools .mCSB_buttonUp, .mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar {
    -webkit-transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
    -moz-transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
    -o-transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
    transition: opacity .2s ease-in-out,background-color .2s ease-in-out;
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

element.style {
    max-height: 300px;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.mCustomScrollBox {
    position: relative;
    overflow: hidden;
    height: 100%;
    max-width: 100%;
    outline: none;
    direction: ltr;
}
.mCustomScrollBox {
    position: relative;
    overflow: hidden;
    height: 100%;
    max-width: 100%;
    outline: 0;
    direction: ltr;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

.header_inner .mymenu_area>li.delivery .delivery_addr .addr_box .mCustomScrollbar {
    height: 300px;
    overflow-y: auto;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.mCustomScrollbar.mCS_no_scrollbar, .mCustomScrollbar.mCS_touch_action {
    -ms-touch-action: auto;
    touch-action: auto;
}
.mCustomScrollbar.mCS_no_scrollbar, .mCustomScrollbar.mCS_touch_action {
    -ms-touch-action: auto;
    touch-action: auto;
}
.mCustomScrollbar {
    -ms-touch-action: pinch-zoom;
    touch-action: pinch-zoom;
}
.mCustomScrollbar {
    -ms-touch-action: pinch-zoom;
    touch-action: pinch-zoom;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}


.header_inner .mymenu_area>li.delivery .delivery_addr .addr_box .inner+.inner {
    border-top: 1px solid #eee;
    padding: 30px 25px 0;
}
.header_inner .mymenu_area>li.delivery .delivery_addr .addr_box .inner {
    padding: 25px;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

li.delivery .delivery_addr .addr_box .add-address-box {
    width: 100%;
    height: 49px;
    padding: 15px 19px;
    border-top: 1px solid #eee;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

li.delivery .delivery_addr .addr_box .add-address-box a {
    font-size: 15px;
    color: #000;
    font-weight: 700;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
.btnTy.btn-plus {
    padding-left: 26px;
    position: relative;
}
.btnTy {
    display: inline-block;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}


li.delivery .delivery_addr .addr_box .add-address-box {
    width: 100%;
    height: 49px;
    padding: 15px 19px;
    border-top: 1px solid #eee;
}
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

element.style {
    display: none;
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
.header_inner .mymenu_area>li.delivery * {
    font-family: NotoSansCJKkr;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.header_inner .mymenu_area>li.store {
    width: 120px;
    padding-left: 15px;
}

.header_inner .mymenu_area>li.store {
    width: 120px;
    padding-left: 15px;
}
.header_inner .mymenu_area>li {
    float: left;
    position: relative;
    height: 65px;
    padding-top: 22px;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.header_inner .mymenu_area>li>a {
    font-size: 14px;
    color: #000;
    line-height: 20px;
    z-index: 30;
    font-weight: 200;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}


.header_inner .mymenu_area .alim_box .store_desc>span {
    color: #9bce26;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}



* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
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
사용자 에이전트 스타일시트
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

.header_inner .mymenu_area>li:after {
    content: '';
    display: inline-block;
    width: 7px;
    height: 4px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow11x72.png) no-repeat 0 0;
    margin: 0 0 2px 4px;
}

.header_inner .mymenu_area>li.store {
    width: 120px;
    padding-left: 15px;
}
.header_inner .mymenu_area>li.store {
    width: 120px;
    padding-left: 15px;
}
.header_inner .mymenu_area>li {
    float: left;
    position: relative;
    height: 65px;
    padding-top: 22px;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.header_inner .mymenu_area>li.recent {
    width: 96px;
    text-align: right;
}
.header_inner .mymenu_area>li.recent {
    width: 96px;
    text-align: right;
}
.header_inner .mymenu_area>li {
    float: left;
    position: relative;
    height: 65px;
    padding-top: 22px;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
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
a {
    color: #666;
    text-decoration: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

element.style {
    min-height: 510px;
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

a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.header_inner .mymenu_area .recent_prd_box .recent_tit>span {
    color: #9bce26;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}


element.style {
    display: none;
}
.header_inner .mymenu_area .recent_prd_box .no_data {
    height: 380px;
    text-align: center;
    line-height: 380px;
    color: #888;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

element.style {
    min-height: 510px;
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

.header_inner .mymenu_area>li:after {
    content: '';
    display: inline-block;
    width: 7px;
    height: 4px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow11x72.png) no-repeat 0 0;
    margin: 0 0 2px 4px;
}

.header_inner .mymenu_area>li.recent {
    width: 96px;
    text-align: right;
}
.header_inner .mymenu_area>li.recent {
    width: 96px;
    text-align: right;
}
.header_inner .mymenu_area>li {
    float: left;
    position: relative;
    height: 65px;
    padding-top: 22px;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

.header_inner .mymenu_area:after {
    content: '';
    display: block;
    clear: both;
}

.header_inner .mymenu_area {
    float: right;
    margin-top: 10px;
}
ol, ul {
    list-style: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

.header_inner {
    width: 100%;
    height: 90px;
    width: 1020px;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}


/* footer부분 */
#Footer {
    margin: 40px 0 0;
    border-top: 2px solid #aaa;
}
#Container, #Footer, #Header, #Wrapper {
    width: 100%;
    min-width: 1020px;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .oneConts {
    background: #f9f9f9;
    border-bottom: 1px solid #ddd;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .oneConts .conts {
    position: relative;
    height: 52px;
}
#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .list-menu {
    overflow: hidden;
}
#Footer * {
    letter-spacing: 0;
}
ol, ul {
    list-style: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

#Footer .list-menu li:first-child {
    background: 0 0;
}
#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
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
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-menu li:first-child {
    background: 0 0;
}
#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}


#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-menu li a {
    display: block;
    padding: 0 20px 0 21px;
    color: #000;
    font-size: 12px;
    line-height: 16px;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-menu li a {
    display: block;
    padding: 0 20px 0 21px;
    color: #000;
    font-size: 12px;
    line-height: 16px;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-menu li a {
    display: block;
    padding: 0 20px 0 21px;
    color: #000;
    font-size: 12px;
    line-height: 16px;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-menu li a {
    display: block;
    padding: 0 20px 0 21px;
    color: #000;
    font-size: 12px;
    line-height: 16px;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
ol, ul {
    list-style: none;
}
사용자 에이전트 스타일시트
ul {
    list-style-type: disc;
}

#Footer .list-menu li a {
    display: block;
    padding: 0 20px 0 21px;
    color: #000;
    font-size: 12px;
    line-height: 16px;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-menu li {
    float: left;
    height: 52px;
    padding-top: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.gif) no-repeat 0 50%;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-menu {
    overflow: hidden;
}
#Footer * {
    letter-spacing: 0;
}
ol, ul {
    list-style: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
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
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
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
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
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
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .sel_family_group .sel_option_list dl:first-child {
    margin-top: 0;
}
#Footer .sel_family_group .sel_option_list dl {
    margin-top: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .sel_family_group .sel_option_list dl dt {
    font-weight: 700;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dt {
    display: block;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group .sel_option_list dl:first-child {
    margin-top: 0;
}
#Footer .sel_family_group .sel_option_list dl {
    margin-top: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .sel_family_group .sel_option_list dl {
    margin-top: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .sel_family_group .sel_option_list dl dt {
    font-weight: 700;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dt {
    display: block;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}


element.style {
}
#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group .sel_option_list dl {
    margin-top: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .sel_family_group .sel_option_list dl {
    margin-top: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .sel_family_group .sel_option_list dl dt {
    font-weight: 700;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dt {
    display: block;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}


element.style {
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group .sel_option_list dl {
    margin-top: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .sel_family_group .sel_option_list dl {
    margin-top: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
#Footer .sel_family_group .sel_option_list dl dt {
    font-weight: 700;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dt {
    display: block;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}


element.style {
}
#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}


#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}
#Footer .sel_family_group .sel_option_list dl {
    margin-top: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .sel_family_group .sel_option_list dl {
    margin-top: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .sel_family_group .sel_option_list dl dt {
    font-weight: 700;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dt {
    display: block;
}
#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sel_family_group .sel_option_list dl dd {
    margin-top: 3px;
    padding-left: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dd {
    display: block;
    margin-inline-start: 40px;
}

#Footer .sel_family_group .sel_option_list dl {
    margin-top: 10px;
}
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
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
#Footer .sel_family_group * {
    color: #777;
}
#Footer * {
    letter-spacing: 0;
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
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
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
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .oneConts .conts {
    position: relative;
    height: 52px;
}
#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .oneConts {
    background: #f9f9f9;
    border-bottom: 1px solid #ddd;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}


#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .list-area {
    overflow: hidden;
}
#Footer * {
    letter-spacing: 0;
}
ol, ul {
    list-style: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
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
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
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
#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-area li:nth-child(1) .logo img {
    width: 146px;
    height: 24px;
}
#Footer * {
    letter-spacing: 0;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
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
#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .list-area li:nth-child(1) h2 {
    padding: 28px 0 3px 170px;
    color: #000;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}


#Footer .list-area li:nth-child(1) p:nth-child(4) {
    margin-left: 35px;
    text-indent: -35px;
}
#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer * {
    letter-spacing: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#Footer .list-area li:nth-child(1) p:nth-child(4) {
    margin-left: 35px;
    text-indent: -35px;
}
#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}


#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer .list-area li:nth-child(1) .link {
    display: inline-block;
    margin-left: 7px;
    color: #333;
    border-bottom: 1px solid #333;
    line-height: 16px;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-area li:nth-child(1) p {
    padding: 0 0 0 170px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
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
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}


#Footer.m2105 .list-area>li {
    height: 195px;
}
#Footer .list-area li:nth-child(2) {
    width: 256px;
}
#Footer .list-area>li {
    float: left;
    height: 175px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x115.gif) no-repeat 0 29px;
    font-size: 0;
    line-height: 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
#Footer .list-area li:nth-child(2) .list-link {
    padding: 26px 0 0 20px;
}
#Footer * {
    letter-spacing: 0;
}
ol, ul {
    list-style: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
ul ul {
    list-style-type: circle;
    margin-block-start: 0px;
    margin-block-end: 0px;
}
사용자 에이전트 스타일시트
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-area li:nth-child(2) .list-link li a {
    display: inline-block;
    color: #777;
    font-size: 12px;
    line-height: 21px;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-area li:nth-child(2) .list-link li:first-child a:last-child {
    margin: 0 0 0 8px;
    padding: 0 0 0 13px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bull_4x4.gif) no-repeat 0 9px;
}
#Footer .list-area li:nth-child(2) .list-link li a {
    display: inline-block;
    color: #777;
    font-size: 12px;
    line-height: 21px;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}
#Footer .list-area li:nth-child(2) {
    width: 256px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-area li:nth-child(2) .list-link li:nth-child(2) a {
    font-weight: 700;
    letter-spacing: -1px;
    color: #333;
}
#Footer .list-area li:nth-child(2) .list-link li a {
    display: inline-block;
    color: #777;
    font-size: 12px;
    line-height: 21px;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}
#Footer .list-area li:nth-child(2) {
    width: 256px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}


#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}
#Footer .list-area li:nth-child(3) {
    width: 255px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-area li:nth-child(2) .list-link li a {
    display: inline-block;
    color: #777;
    font-size: 12px;
    line-height: 21px;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}
#Footer .list-area li:nth-child(3) {
    width: 255px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}



#Footer .list-area li:nth-child(2) .list-link li a {
    display: inline-block;
    color: #777;
    font-size: 12px;
    line-height: 21px;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}


#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
#Footer .list-area li:nth-child(2) .list-link li a {
    display: inline-block;
    color: #777;
    font-size: 12px;
    line-height: 21px;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .list-area li:nth-child(2) .list-link li {
    font-size: 0;
    line-height: 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-area li:nth-child(2) .list-link {
    padding: 26px 0 0 20px;
}
#Footer * {
    letter-spacing: 0;
}
ol, ul {
    list-style: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
ul ul {
    list-style-type: circle;
    margin-block-start: 0px;
    margin-block-end: 0px;
}
사용자 에이전트 스타일시트
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}


#Footer.m2105 .list-area>li {
    height: 195px;
}
#Footer .list-area li:nth-child(2) {
    width: 256px;
}
#Footer .list-area>li {
    float: left;
    height: 175px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x115.gif) no-repeat 0 29px;
    font-size: 0;
    line-height: 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}


#Footer.m2105 .list-area>li {
    height: 195px;
}
#Footer .list-area li:nth-child(3) {
    width: 255px;
}
#Footer .list-area>li {
    float: left;
    height: 175px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x115.gif) no-repeat 0 29px;
    font-size: 0;
    line-height: 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .list-area li:nth-child(3) h2 {
    padding: 25px 0 0 20px;
    color: #000;
    font-size: 12px;
    line-height: 18px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
#Footer .list-area li:nth-child(3) p {
    padding: 10px 0 0 20px;
    color: #777;
    font-size: 12px;
    line-height: 18px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

#Footer * {
    letter-spacing: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#Footer * {
    letter-spacing: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
#Footer * {
    letter-spacing: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
#Footer .list-area li:nth-child(3) p .link {
    display: inline-block;
    color: #333;
    font-size: 12px;
    line-height: 16px;
    border-bottom: 1px solid #333;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
#Footer .list-area li:nth-child(3) p {
    padding: 10px 0 0 20px;
    color: #777;
    font-size: 12px;
    line-height: 18px;
}
#Footer .list-area li p {
    color: #777;
    font-size: 12px;
    line-height: 20px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
#Footer.m2105 .list-area>li {
    height: 195px;
}
#Footer .list-area li:nth-child(3) {
    width: 255px;
}
#Footer .list-area>li {
    float: left;
    height: 175px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x115.gif) no-repeat 0 29px;
    font-size: 0;
    line-height: 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
#Footer .list-area {
    overflow: hidden;
}
#Footer * {
    letter-spacing: 0;
}
ol, ul {
    list-style: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}
#Footer .fourConts .conts {
    border-top: 1px solid #ddd;
    text-align: center;
}
#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}
#Footer * {
    letter-spacing: 0;
}
ol, ul {
    list-style: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
#Footer .fourConts ol li {
    display: inline-block;
    color: #777;
    font-size: 11px;
    line-height: 53px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
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

#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#Footer .fourConts ol li .bar:before {
    content: '|';
    display: inline-block;
    margin: 0 5px;
    color: #777;
    font-size: 11px;
}

#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#Footer .fourConts ol li .bar:before {
    content: '|';
    display: inline-block;
    margin: 0 5px;
    color: #777;
    font-size: 11px;
}

#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


#Footer .fourConts ol li {
    display: inline-block;
    color: #777;
    font-size: 11px;
    line-height: 53px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .fourConts ol li {
    display: inline-block;
    color: #777;
    font-size: 11px;
    line-height: 53px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
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
#Footer .fourConts ol li.ncsi {
    margin-left: 28px;
}
#Footer .fourConts ol li {
    display: inline-block;
    color: #777;
    font-size: 11px;
    line-height: 53px;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#Footer .fourConts ol:after {
    content: '';
    display: block;
    clear: both;
}
#Footer * {
    letter-spacing: 0;
}
ol, ul {
    list-style: none;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

#Footer .fourConts .conts {
    border-top: 1px solid #ddd;
    text-align: center;
}
#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .threeConts {
    border-top: 1px solid #e5e5e5;
    background: #f9f9f9;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}
#Footer .threeConts .conts {
    overflow: hidden;
    height: 40px;
}
#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}
#Footer .copyright {
    float: left;
    padding: 11px 0 0;
    color: #888;
    font-size: 11px;
    line-height: 18px;
    font-weight: 700;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}
#Footer .sns {
    overflow: hidden;
    float: right;
    padding: 9px 0 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .sns h2 {
    float: left;
    margin-right: 4px;
    color: #aaa;
    font-size: 12px;
    padding: 3px 0 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
#Footer .sns a {
    float: left;
    margin: 0 8px;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sns a>img {
    height: 22px;
}
#Footer * {
    letter-spacing: 0;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#Footer .sns a {
    float: left;
    margin: 0 8px;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sns a {
    float: left;
    margin: 0 8px;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
#Footer .sns a>img {
    height: 22px;
}
#Footer * {
    letter-spacing: 0;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

element.style {
}
#Footer .sns a {
    float: left;
    margin: 0 8px;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sns a {
    float: left;
    margin: 0 8px;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#Footer .sns a>img {
    height: 22px;
}
#Footer * {
    letter-spacing: 0;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#Footer .sns a {
    float: left;
    margin: 0 8px;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}


element.style {
}
#Footer .sns a:last-child {
    margin-right: 0;
}
#Footer .sns a {
    float: left;
    margin: 0 8px;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}
#Footer .sns a>img {
    height: 22px;
}
#Footer * {
    letter-spacing: 0;
}
button, img, input, select, textarea {
    border: 0;
    vertical-align: top;
    color: #666;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

#Footer .sns a:last-child {
    margin-right: 0;
}
#Footer .sns a {
    float: left;
    margin: 0 8px;
    font-size: 0;
    line-height: 0;
    vertical-align: top;
}
#Footer * {
    letter-spacing: 0;
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
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

element.style {
}
#Footer .sns {
    overflow: hidden;
    float: right;
    padding: 9px 0 0;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}

#Footer .threeConts .conts {
    overflow: hidden;
    height: 40px;
}
#Footer .conts {
    width: 1020px;
    margin: 0 auto;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}
#Footer .threeConts {
    border-top: 1px solid #e5e5e5;
    background: #f9f9f9;
}
#Footer * {
    letter-spacing: 0;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}


#Footer {
    margin: 40px 0 0;
    border-top: 2px solid #aaa;
}
#Container, #Footer, #Header, #Wrapper {
    width: 100%;
    min-width: 1020px;
}
a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
    margin: 0;
    padding: 0;
    border: 0;
}
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
사용자 에이전트 스타일시트
div {
    display: block;
}









</style>
</head>
<body>
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
            <h1><a href="javascript:common.link.moveMainHome();"><img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/h1_logo.png" alt="올리브영"></a></h1>
			
			<div class="search_box" id="w_search_box">
				<input type="hidden" name="chkButton" id="chkButton" value="">		
				
	
				<div class="placeholder_area">
					<label for="query">사티아 나그참파 단독증정🌿</label><input type="text" id="query" name="" value="" class="inp_placeholder" data-placeholder="사티아 나그참파 단독증정🌿" data-ref-linkurl="https://www.oliveyoung.co.kr/store/planshop/getPlanShopDetail.do?dispCatNo=	 500000101440224" onkeypress="javascript:pressCheck_WEB_MainSearch((event),this);" onkeydown="javascript:downCheck_WEB_MainSearch((event));" autocomplete="off">
				</div>
				
				<button id="searchSubmit">검색</button>

				<!-- 검색 레이어 영역 (디자인 수정 예정) -->
				<div class="search_layer">
					<div class="layer_inner">
						<!-- 2017-02-07 수정 : 자동완성기능 영역 -->
						<div class="auto_search_cont">
							<div class="brand_area" id="ark_brand"></div>							
							<div class="auto_list" id="ark_w"></div>
						</div>
						<!--// 2017-02-07 수정 : 자동완성기능 영역 -->
					
						<!-- 최근 검색어 -->						
						<a href="#" class="search_tab tab01 on" id="searchRecent">최근 검색어</a><!-- 현재 보여지는 탭에 클래스 on 넣어주세요 -->
						<div class="search_tab_cont" id="recent_cont">
							<ul id="mykeyword">							
								<!-- 검색 기록이 없을 경우 -->								 
<!-- 							<li class="no_data" id="recent_no_data" style="display:none;">최근 검색한 기록이 없습니다.</li> -->
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
						<div class="search_tab_cont sharp_rise" id="w_pop_cont">
							<ul id="mainPopword">
							</ul>
							<div class="search_set_area"> 
								<a href="#" class="sch_pop_close">닫기</a>
							</div>
						</div>
						<!--// 인기 검색어 -->
						<!-- SCP추가 -->
						<div class="scp_cont" id="scp_cont_id">
						</div>
						<!-- //SCP추가 -->
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
						
						</p><div class="no_data" style="display:none;">
							최근 본 상품이 없습니다.
						</div>
					</div>
				</li>
			</ul>
			
		</div>
		
		<div class="header_design_area"></div>
		
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
	</div>
	
<script>
	$(".inp_placeholder").click(function (event) {
		alert("XX");
	});
</script>
</body>
</html>