<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hwan/2022/07/06-11:58 AM</title>
    <link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
    <link rel="stylesheet" href="/css/module.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <%--중분류 탑 5 --%>
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
        .ct-best .ct-product .price-2 {
            display: block;
            margin-top: 2px;
            font-size: 20px;
            color: #e02020;
            font-weight: 500;
        }
        .ct-best .ct-product .price-2 span {
            font-size: 13px;
            position: relative;
            top: -1px;
            left: 1px;
        }
        .ct-best .ct-product .price-1 span {
            font-size: 11px;
        }
        .ct-best .ct-product .price-1 {
            display: block;
            font-size: 14px;
            line-height: 14px;
            color: #a9a9a9;
            text-decoration: line-through;
        }
        .ct-best .ct-product .price {
            display: block;
            margin-top: 4px;
        }
        .ct-best .ct-product .prd-name {
            overflow: hidden;
            height: 36px;
            max-height: 72px;
            margin-top: 10px;
            -webkit-box-orient: vertical;
            line-height: 18px;
            text-overflow: ellipsis;
            display: block;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            word-break: keep-all;
            color: #000;
            font-size: 14px;
            text-align: left;
        }
        p {
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
        }
        .ct-best .ct-product .img, .ct-best .ct-product .img .minor, .ct-best .ct-product .img img {
            width: 135px;
            height: 135px;
        }
        button, img, input, select, textarea {
            border: 0;
            vertical-align: top;
            color: #666;
        }
        .ct-best .ct-product .img, .ct-best .ct-product .img .minor, .ct-best .ct-product .img img {
            width: 135px;
            height: 135px;
        }
        .ct-best .ct-product .num {
            position: absolute;
            left: -5px;
            top: -2px;
            width: 26px;
            height: 26px;
            line-height: 26px;
            text-align: center;
            opacity: .8;
            border-radius: 14px;
            background-color: #000;
            color: #fff;
            font-size: 14px;
        }
        .ct-best .ct-product .item a {
            display: block;
        }
        a {
            color: #666;
            text-decoration: none;
        }
        .ct-best .ct-product .item {
            position: relative;
            width: 135px;
        }
        .ct-best .ct-product {
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            margin-top: -23px;
            padding-bottom: 46px;
        }
        .ct-content .ct-tab .is-active a {
            -webkit-transform: translateY(1px);
            -ms-transform: translateY(-.032em);
            color: #f27370;
            font-weight: 700;
        }
        .ct-content .ct-tab a {
            display: inline-block;
            font-size: 16px;
            line-height: 18px;
            letter-spacing: -.5px;
            color: #888;
        }
        .ct-content .ct-tab * {
            vertical-align: top;
        }
        .ct-content .ct-tab>span {
            float: left;
        }
        .ct-content .ct-tab {
            position: absolute;
            right: 15px;
            top: -26px;
        }
        .ct-best .col-wrap {
            position: relative;
            padding: 43px 15px 21px;
        }
        .ct-content .ct-tit {
            text-align: center;
            font-size: 22px;
            line-height: 24px;
            color: #333;
            font-weight: 700;
        }
        .ct-best {
            border-bottom: 1px solid #e5e5e5;
        }
        .ct-content.bg-white {
            padding-top: 30px;
        }
        .ct-content {
            position: relative;
        }
        button {
            writing-mode: horizontal-tb !important;
            text-rendering: auto;
            color: buttontext;
            letter-spacing: normal;
            word-spacing: normal;
            line-height: normal;
            text-transform: none;
            text-indent: 0px;
            text-shadow: none;
            text-align: center;
            cursor: default;
        }
        .ct-best .ct-product .btn_zzim {
            position: absolute;
            top: 95px;
            right: 0;
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
            border-image: initial;
        }
        .ct-best .ct-product .item+.item {
            margin-left: 20px;
        }
        .ct-best .ct-product .ct-link-arrow span {
            display: inline-block;
            padding-right: 12px;
            background-image: url(https://www.oliveyoung.co.kr/pc-static-root/image/category/ico_link_arrow.png);
            background-repeat: no-repeat;
            background-size: 7px auto;
            background-position: right center;
            color: #333;
        }
        .ct-best .ct-product .ct-link-arrow {
            position: absolute;
            left: 50%;
            bottom: 20px;
            height: 32px;
            line-height: 32px;
            display: inline-block;
            padding: 0 20px;
            line-height: 30px;
            border: solid 1px #e5e5e5;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 700;
            color: #555;
            text-align: center;
            background-color: #fff;
            -webkit-transform: translate(-50%,0);
            -ms-transform: translate(-50%,0);
            transform: translate(-50%,0);
        }
    </style>

    <%--중분류 탑 뷰--%>
    <style>
        .ct-curation-wrap .cate_prd_list>li .btn_zzim {
            position: absolute;
            top: 120px;
            right: 0;
            width: 40px;
            height: 40px;
            border: 1px solid #ebebeb;
            text-indent: -999999px;
            font-size: 0;
            background: #fff url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
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
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_price .tx_org+.tx_cur {
            margin-top: 0;
            margin-left: 0;
        }
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_price .tx_cur {
            margin-top: 20px;
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
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_price .tx_org>span {
            font-weight: 400;
            letter-spacing: 0;
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
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_price .tx_org {
            display: block;
            color: #a9a9a9;
            font-weight: 400;
        }
        .cate_prd_list>li .prd_info .prd_price .tx_org {
            color: #777;
            font-size: 12px;
            text-decoration: line-through;
            vertical-align: middle;
            font-weight: 700;
        }
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_price {
            height: auto;
            line-height: 20px;
            margin-top: 5px;
            text-align: left;
            cursor: default;
        }

        .cate_prd_list>li .prd_info .prd_price {
            height: 25px;
            line-height: 22px;
        }
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_name * {
            text-align: left;
        }
        .ct-curation-wrap .cate_prd_list>li .prd_info .tx_name {
            margin-top: 0;
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
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_name {
            margin-top: 10px;
            height: 36px;
            min-height: 100%;
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
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_thumb img {
            max-width: 160px!important;
            max-height: 160px!important;
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
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_thumb {
            width: 160px;
            height: 160px;
        }
        .cate_prd_list>li .prd_info .prd_thumb {
            position: relative;
            display: block;
            width: 215px;
            height: 215px;
            background: #fff;
        }
        .ct-curation-wrap .cate_prd_list>li .prd_info {
            display: block;
        }
        .cate_prd_list>li .prd_info {
            text-align: center;
            font-size: 14px;
        }
        a {
            color: #666;
            text-decoration: none;
        }
        .cate_prd_list.no_line {
            border-bottom: 0;
        }
        .cate_prd_list {
            border-bottom: 1px solid #ddd;
        }
        ol, ul {
            list-style: none;
        }
        .ct-best-product .ct-curation-wrap {
            margin-top: -5px;
        }
        .ct-content.bg-white {
            padding-top: 30px;
        }
        .ct-content {
            position: relative;
        }
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_name * {
            text-align: left;
        }

        .ct-curation-wrap .cate_prd_list>li .prd_info .tx_name {
            margin-top: 0;
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
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_name {
            margin-top: 10px;
            height: 36px;
            min-height: 100%;
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
        .cate_prd_list>li .prd_info .prd_flag>.icon_flag {
            float: none;
        }
        .ct-curation-wrap .cate_prd_list .icon_flag.delivery {
            width: 55px;
        }
        .ct-curation-wrap .cate_prd_list .icon_flag {
            width: 35px;
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
        .cate_prd_list>li .prd_info .prd_flag>.icon_flag {
            float: none;
        }
        .ct-curation-wrap .cate_prd_list .icon_flag {
            width: 35px;
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
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_flag {
            text-align: left;
            cursor: default;
        }
        .cate_prd_list>li .prd_info .prd_flag {
            margin-top: 5px;
            padding-bottom: 0;
        }
        .prd_flag {
            overflow: hidden;
        }
        .ct-curation-wrap .cate_prd_list>li .prd_info .prd_name {
            margin-top: 10px;
            height: 36px;
            min-height: 100%;
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
        .ct-best-product .ct-curation-wrap .cate_prd_list>li {
            margin-top: 25px;
        }
        .ct-curation-wrap .cate_prd_list>li {
            width: 160px;
            padding: 0;
            margin: 0 18px;
            overflow: hidden;
        }
        .cate_prd_list>li {
            position: relative;
            float: left;
            width: 255px;
            padding: 30px 20px 35px;
        }
        .cate_prd_list:after {
            content: '';
            display: block;
            clear: both;
        }
        .ct-curation-wrap .cate_prd_list .btnbag {
            position: absolute;
            z-index: 3;
            top: 234px;
            right: 10px;
            width: 16px;
            height: 18px;
            margin: 0;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_bag.png) no-repeat 0;
            font-size: 0;
            color: transparent;
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
        .ct-menu .list a {
            color: #333;
            font-size: 14px;
            line-height: 18px;
            letter-spacing: -.86px;
        }
        a {
            color: #666;
            text-decoration: none;
        }
        .ct-menu .list li {
            height: 18px;
        }
        .ct-menu .list {
            padding-top: 19px;
            border-top: 1px solid #e5e5e5;
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
        .ct-menu .ct-heading {
            margin-bottom: 38px;
            font-size: 32px;
            line-height: 40px;
            letter-spacing: -1.3px;
            font-weight: 700;
            color: #000;
            word-break: keep-all;
            word-wrap: break-word;
        }
        p {
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
        }
        .ct-main .ct-menu {
            float: left;
            width: 141px;
            margin-right: 49px;
        }
        .ct-main {
            width: 980px;
            margin: 48px auto 0;
            letter-spacing: 0;
        }
        #Contents {
            width: 1020px;
            height: 100%;
            margin: 0 auto;
        }
        #Container {
            overflow: hidden;
        }

        .ct-main .ct-content-wrapper {
            float: left;
            width: 790px;
        }
        a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1, h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span, strong, textarea, ul {
            margin: 0;
            padding: 0;
            border: 0;
        }
        ol, ul {
            list-style: none;
        }
        .ct-menu .list li+li {
            margin-top: 15px;
        }
    </style>

</head>
<body>
<div id="Wrapper">
    <jsp:include page="layout/header.jsp"></jsp:include>
    <div id="Container">
        <div id="Contents">
            <div class="ct-main">
                <div class="ct-menu">
                    <p class="ct-heading">
                        ${MSCatelist[0].ca_name}
                    </p>
                    <ul class="list">
                        <c:forEach items="${MSCatelist}" begin="1" var="MSCatelist">
                            <li><a href="<%=request.getContextPath()%>/olive/productSCate.do?ca_code=${MSCatelist.ca_code}">
                                <span>${MSCatelist.ca_name}</span>
                            </a></li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="ct-content-wrapper">
                    <div class="ct-content bg-white">
                        <div class="ct-best">
                            <p class="ct-tit">${MSCatelist[0].ca_name}의 BEST만 모아봤어요</p>
                            <div class="col-wrap">
                                <div class="col ct-tab-wrap">
                                    <div class="detail">
                                        <div class="ct-product" id="mRnkGoodsSec">
                                            <c:forEach items="${top5list}" var="top5list" varStatus="i">
                                                <div class="item">
                                                    <a href="">
                                                        <span class="num">${i.count}</span>
                                                        <span class="img goodsList">
                                                        <img src="${top5list.prm_url}">
                                                    </span>
                                                        <p class="txt">
                                                        <span class="prd-name goodsList">
                                                            ${top5list.pr_name}
                                                        </span>
                                                        </p>
                                                        <p class="price">
                                                            <span class="price-1">${top5list.prpri_price}<span>원</span></span>
                                                            <span class="price-2">${top5list.realPrice}<span>원</span></span>
                                                        </p>
                                                    </a>
                                                    <button class="btn_zzim jeem"><span>찜하기전</span></button>
                                                </div>
                                            </c:forEach>
                                            <a href="/store/main/getBestList.do?" class="ct-link-arrow">
                                                <span>${MSCatelist[0].ca_name} 베스트상품 더보기</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ct-content bg-white">
                        <div class="ct-best-product">
                            <p class="ct-tit">${MSCatelist[0].ca_name}에서 많이 본 상품이에요</p>

                            <div class="ct-curation-wrap">
                                <div>

                                    <c:forEach items="${topViewlist}" var="topViewlist" varStatus="i">
                                        <c:if test="${i.index%4==0}"><ul class="cate_prd_list no_line"></c:if>
                                            <li class="flag">
                                                <a href="" class="prd_info">
                                                    <span class="prd_thumb goodsList">
                                                        <img src="${topViewlist.prm_url}">
                                                    </span>
                                                    <div class="prd_name goodsList">
                                                        <p class="tx_name">
                                                            ${topViewlist.pr_name}
                                                        </p>
                                                    </div>
                                                    <p class="prd_price">
                                                        <span class="tx_org"><span class="tx_num">${topViewlist.prpri_price}</span>원 </span>
                                                        <span class="tx_cur"><span class="tx_num">${topViewlist.realPrice}</span>원 </span>
                                                    </p>
                                                    <p class="prd_flag">
                                                        <span class="icon_flag coupon">쿠폰</span>
                                                        <span class="icon_flag delivery">오늘드림</span>
                                                    </p>
                                                </a>
                                                <button class="btn_zzim jeem"><span>찜하기전</span></button>
                                                <button type="button" class="btnbag">장바구니 담기</button>
                                            </li>
                                        <c:if test="${i.index%4==3}"></ul></c:if>
                                    </c:forEach>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="layout/footer.jsp"></jsp:include>
</div>
</body>
</html>
