<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hwan/2022/07/08-9:28 PM</title>
    <link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/module.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        #Container {
            overflow: hidden;
        }

        #Container, #Footer, #Wrapper {
            width: 100%;
            min-width: 1020px;
        }
        #Contents {
            width: 1020px;
            height: 100%;
            margin: 0 auto;
        }
        .cate_align_box .type_sort>button.btn_list {
            margin-left: 10px;
            background-position: -28px 0;
        }
        .cate_align_box .type_sort>button.btn_thumb {
            background-position: 0 -28px;
        }
        .cate_align_box .type_sort>button {
            width: 18px;
            height: 18px;
            text-indent: -9999px;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bg_sorting.png) no-repeat 0 0;
        }
        .cate_align_box .type_sort>button {
            width: 18px;
            height: 18px;
            text-indent: -9999px;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bg_sorting.png) no-repeat 0 0;
        }
        cate_align_box:after {
            content: '';
            display: block;
            clear: both;
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
        .cate_prd_list:after {
            content: '';
            display: block;
            clear: both;
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

        a {
            color: #666;
            text-decoration: none;
        }
        a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
            margin: 0;
            padding: 0;
            border: 0;
        }
        .cate_prd_list>li .prd_info .prd_thumb {
            position: relative;
            display: block;
            width: 215px;
            height: 215px;
            background: #fff;
        }
        .cate_prd_list>li .prd_info {
            text-align: center;
            font-size: 14px;
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
        .page_location {
            width: 100%;
            max-width: 1020px;
            height: 46px;
            margin: 0 auto;
            padding: 8px 0 0;
            border-bottom: 1px solid #e5e5e5;
        }
        .page_location .loc_home {
            float: left;
            width: 16px;
            height: 16px;
            margin: 7px 0 0;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_location.png) no-repeat 0 1px;
            text-indent: -9999px;
        }
        a {
            color: #666;
            text-decoration: none;
        }
        .page_location .loc_history {
            float: left;
        }
        .page_location .loc_history>li {
            float: left;
            position: relative;
            margin-left: 10px;
            padding-left: 15px;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_location.png) no-repeat 0 -30px;
            line-height: 30px;
        }
        .page_location .loc_history>li a {
            display: inline-block;
            line-height: 16px;
            font-size: 12px;
            color: #888;
        }
        .page_location .loc_history>li a.cate_y:after {
            content: '';
            display: inline-block;
            width: 13px;
            height: 13px;
            margin-left: 10px;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow_down7x5.png) no-repeat 50% 50%;
            border: 1px solid #e5e5e5;
            vertical-align: top;
        }
        .page_location .loc_history>li a {
            display: inline-block;
            line-height: 16px;
            font-size: 12px;
            color: #888;
        }
        .page_location:after {
            content: '';
            display: block;
            clear: both;
        }
        .titBox {
            padding: 25px 0;
        }
        .titBox h1 {
            font-size: 30px;
            line-height: 30px;
            color: #000;
        }
        ol, ul {
            list-style: none;
        }
        .cate_list_box>li.first, .cate_list_box>li:nth-child(6n+1) {
            margin-left: 0;
            width: 170px;
        }
        .cate_list_box>li {
            float: left;
            width: 171px;
            height: 40px;
            margin: -1px 0 0 -1px;
            background: #fff;
            border: 1px solid #ddd;
            overflow: hidden;
        }
        .cate_brand_box {
            position: relative;
            min-height: 75px;
            margin: 30px 0;
            border: 1px solid #ddd;
            border-top: 2px solid #9bce26;
        }
        .cate_brand_box .tit_area {
            float: left;
            width: 168px;
            padding: 15px 20px;
        }
        .cate_brand_box .tit_area>strong {
            display: block;
            font-size: 18px;
            color: #000;
        }
        .cate_brand_box .tit_area>span {
            display: block;
            margin-top: 5px;
            color: #9bce26;
        }
        .tx_num {
            letter-spacing: -.02em!important;
            font-weight: 500;
        }
        .cate_brand_box.more_view .brand_list {
            height: auto;
            max-height: none;
        }

        .cate_brand_box .brand_list {
            float: left;
            width: 850px;
            min-height: 75px;
            max-height: 118px;
            padding: 5px 0 5px 15px;
            border-left: 1px solid #ddd;
            overflow: hidden;
        }
        .cate_brand_box .brand_list>li {
            float: left;
            width: 165px;
            margin: 8px 0;
        }
        .cate_brand_box .brand_list>li>input[type=checkbox] {
            width: 12px;
            height: 12px;
            margin-right: 5px;
            background: 0 0;
            appearance: checkbox;
            -webkit-appearance: checkbox;
            vertical-align: middle;
        }
        input[type=checkbox]:disabled, input[type=checkbox]:read-only {
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png) no-repeat -20px -20px;
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
        input[type="checkbox" i] {
            background-color: initial;
            cursor: default;
            appearance: auto;
            box-sizing: border-box;
            margin: 3px 3px 3px 4px;
            padding: initial;
            border: initial;
        }
        사용자 에이전트 스타일시트
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
        .cate_brand_box .brand_list>li>label {
            color: #333;
        }
        button, input.button, input.image, input.submit, label {
            cursor: pointer;
        }
        .cate_brand_box.more_view .btn_more {
            background-image: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow_up7x5.png);
        }

        .cate_brand_box .btn_more {
            z-index: 2;
            position: absolute;
            bottom: -30px;
            left: -1px;
            display: block;
            width: 85px;
            height: 30px;
            padding-right: 15px;
            border-left: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            border-right: 1px solid #ddd;
            color: #666;
            background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow_down7x5.png) no-repeat 60px 50%;
            font-size: 12px;
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
        .cate_brand_box .btn_reset {
            z-index: 1;
            position: absolute;
            right: 0;
            bottom: -31px;
            width: 100%;
            height: 30px;
            background-color: #f5f5f5;
            text-align: right;
        }
        .cate_brand_box .btn_reset button {
            display: inline-block;
            width: 105px;
            line-height: 30px;
            background: 0 0;
            color: #888;
            font-size: 13px;
            font-weight: 400;
            text-align: center;
        }
        .cate_brand_box .btn_reset button:before {
            content: '';
            width: 10px;
            height: 10px;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/main/ico_x.png) no-repeat;
            display: inline-block;
            margin-right: 7px;
        }
        .cate_info_tx {
            margin: 60px 0 20px;
            font-size: 20px;
            color: #222;
            text-align: center;
        }
        .cate_info_tx>span {
            color: #f27370;
            font-weight: 500;
        }
        .cate_align_box {
            position: relative;
        }
        .cate_align_box {
            height: 55px;
            border-top: 5px solid #e5e5e5;
            border-bottom: 1px solid #e5e5e5;
        }
        .cate_align_box .align_sort {
            position: relative;
            width: 774px;
            padding: 15px 0 0;
            z-index: 1;
        }
        .cate_align_box>div {
            float: left;
            height: 50px;
        }
        .cate_align_box .align_sort>ul {
            float: left;
        }
        .cate_align_box .align_sort>ul>li {
            float: left;
        }
        .cate_align_box .align_sort>ul>li.on>a {
            color: #000;
            font-weight: 700;
        }
        .cate_align_box .align_sort>ul>li>a {
            display: inline-block;
            margin: 0 21px;
            color: #666;
        }
        .cate_align_box .count_sort {
            width: 158px;
            padding: 15px 20px 0;
        }

        .cate_align_box>div+div {
            border-left: 1px solid #ddd;
        }
        .cate_align_box>div {
            float: left;
            height: 50px;
        }
        .tx_num {
            letter-spacing: -.02em!important;
            font-weight: 500;
        }
        .cate_align_box .count_sort .tx_view {
            float: left;
            width: 40px;
            color: #222;
            text-align: center;
        }
        .cate_align_box .count_sort>ul {
            float: left;
            margin-left: 5px;
            overflow: hidden;
        }
        .cate_align_box .count_sort>ul>li+li {
            margin-left: 5px;
        }

        .cate_align_box .count_sort>ul>li {
            float: left;
            text-align: center;
            color: #ccc;
        }
        .cate_align_box .count_sort>ul>li>a {
            display: block;
            min-width: 20px;
            color: #888;
        }
        .cate_prd_list {
            border-bottom: 1px solid #ddd;
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
        .cate_prd_list>li .prd_info .prd_name {
            margin-top: 15px;
        }

        .cate_prd_list>li .prd_info .prd_name {
            display: block;
            min-height: 62px;
            margin: 8px 0 0;
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
        p {
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
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
        .page_location .loc_history>li .history_cate_box>ul>li>a.on {
            font-weight: 700;
        }

        .page_location .loc_history>li a {
            display: inline-block;
            line-height: 16px;
            font-size: 12px;
            color: #888;
        }
        .page_location .loc_history>li .history_cate_box>ul {
            float: left;
            position: relative;
            width: 120px;
            padding: 0 10px;
            line-height: 1;
        }
        .cate_brand_box:after {
            content: '';
            display: block;
            clear: both;
        }
    </style>
</head>
<body>
<div id="Wrapper">
    <jsp:include page="layout/header.jsp"></jsp:include>
    <div id="Container">
        <div id="Contents">
            <div class="searchResultArea">
                <p class="resultTxt"><strong>${param.searchKeyword}</strong>검색결과 (전체 <span><%--<fmt:formatNumber value="" pattern="###,###">--%>개</span>의 상품)</p>
            </div>
            <div class="detailSearch new">
                <div class="search_box cate">
                    <h4 class="tit_th">
                        카테고리
                        <button class="btnMore">열기/닫기</button>
                    </h4>
                    <ul class="list show">
                        <li>
                            <%--<c:forEach></c:forEach>--%>
                            <a href="" id="category_10000010001">
                                스킨케어<span></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="search_box brand">
                    <div class="inner">
                        <h4 class="tit_th">
                            브랜드
                            <button class="btnMore">열기/닫기</button>
                        </h4>
                    </div>
                    <ul>
                        <%--<c:forEach></c:forEach>--%>
                        <c:forEach items="${searchBrandList}" var="searchBrandList">
                            <input type="checkbox" id="inpChk1_${searchBrandList.br_code}" name="brand_check" value="${searchBrandList.br_code}">
                            <label for="inpChk1_${searchBrandList.br_code}">${searchBrandList.br_name}
                            </label>
                        </c:forEach>
                            <%--<li>
                                <input type="checkbox" id="inpChk1_A000897" name="brand_check" value="A000897">
                                <label for="inpChk1_A000897">바이오힐보
                                </label>
                            </li>--%>
                    </ul>
                </div>
                <div class="search_box">
                    <div class="inner">
                        <h4 class="tit_th">가격대</h4>
                        <div class="priceSearch">
                            <input type="text" id="sale_below_price" name="sale_below_price" placeholder="최저가" value="" title="">
                            <span>~</span>
                            <input type="text" id="sale_over_price" name="sale_over_price" placeholder="최고가" value="" title="">
                            <input type="submit" value="가격대 적용" title="가격대 적용">
                        </div>
                    </div>
                </div>
            </div>

            <p class="cate_info_tx">
                ${param.keyWord} 검색결과 :
                <span> ${fn:length(searchProductList)}  </span>
                개의 상품이 등록되어 있습니다.
            </p>
            <div class="cate_align_box">
                <div class="align_sort">
                    <ul>
                        <li class="on"><a href="javascript:;" data-prdsoting="01">인기순</a></li>
                        <li><a href="javascript:;" data-prdsoting="02">최근등록순</a></li>
                        <li><a href="javascript:;" data-prdsoting="03">판매수량순</a></li>
                        <li><a href="javascript:;" data-prdsoting="05">낮은 가격순</a></li>
                        <li><a href="javascript:;" data-prdsoting="06">높은 가격순</a></li>
                    </ul>
                </div>
            </div>
            <c:forEach items="${searchProductList}" var="searchProductList" varStatus="i">
                <c:if test="${i.index%4==0}"><ul class="cate_prd_list gtm_cate_list"></c:if>
                <li class="flag">
                    <div class="prd_info">
                        <a href="<%=request.getContextPath()%>/olive/productDetail.do?pr_code=${searchProductList.pr_code}" class="prd_thumb goodsList">
                            <img src="${searchProductList.prm_url}">
                        </a>
                        <div class="prd_name">
                            <a href="<%=request.getContextPath()%>/olive/productDetail.do?pr_code=${searchProductList.pr_code}">
                                <span class="tx_brand">${searchProductList.br_name}</span>
                                <p class="tx_name">${searchProductList.pr_name}</p>
                            </a>
                        </div>
                        <button class="btn_zzim jeem">
                            <span>찜하기전</span>
                        </button>
                        <p class="prd_price">
                            <span class="tx_org"><span class="tx_num"><fmt:formatNumber value="${searchProductList.prpri_price}" pattern="###,###" /></span>원</span>
                            <span class="tx_cur"><span class="tx_num"><fmt:formatNumber value="${searchProductList.realPrice}" pattern="###,###" /></span>원</span>
                        </p>
                    </div>
                </li>
                <c:if test="${i.index%4==3 or i.end}"></ul></c:if>
            </c:forEach>
        </div>
    </div>
    <jsp:include page="layout/footer.jsp"></jsp:include>
</div>
</body>
</html>