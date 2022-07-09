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
    <link rel="stylesheet" href="/css/productListTotal.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>



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
                            <li><a href="">
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
                                    <%--미구현 영역 : 브랜드 탑 5--%>
                                    <%--
                                    <div class="ct-tab">
                                        <span><a href="#"><span>브랜드</span></a></span>
                                        <span class="is-active"><a href="#"><span>상품</span></a></span>
                                    </div>
                                    <div class="detail" style="display: none">
                                        <div class="ct-brand">

                                            <a href="javascript:common.link.moveBrandShop('A002756', 'Cat10000010001_Brandrank_PROD');" class="item" onclick="javascript:categoryShop.detail.setBindWlogEvent('rank_brand', '1');" data-attr="카테고리관^스킨케어_랭킹BEST상품브랜드_브랜드랭킹^라운드랩">
                                                <span class="num">1</span>
                                                <span class="img"><img src="https://image.oliveyoung.co.kr/uploads/images/onlBrandMgmt/2020/12/8461360608481023208.jpg" onerror="common.errorCrcImg(this);"></span><!-- 브랜드 로고 없을 경우 -->
                                                <p class="txt">라운드랩</p>
                                                <p class="link-txt"><span>브랜드관 가기!</span></p>
                                            </a>

                                            <a href="javascript:common.link.moveBrandShop('A000627', 'Cat10000010001_Brandrank_PROD');" class="item" onclick="javascript:categoryShop.detail.setBindWlogEvent('rank_brand', '2');" data-attr="카테고리관^스킨케어_랭킹BEST상품브랜드_브랜드랭킹^닥터지">
                                                <span class="num">2</span>
                                                <span class="img"><img src="https://image.oliveyoung.co.kr/uploads/images/onlBrandMgmt/2021/4/7996462662502374809.jpg" onerror="common.errorCrcImg(this);"></span><!-- 브랜드 로고 없을 경우 -->
                                                <p class="txt">닥터지</p>
                                                <p class="link-txt"><span>브랜드관 가기!</span></p>
                                            </a>

                                            <a href="javascript:common.link.moveBrandShop('A002474', 'Cat10000010001_Brandrank_PROD');" class="item" onclick="javascript:categoryShop.detail.setBindWlogEvent('rank_brand', '3');" data-attr="카테고리관^스킨케어_랭킹BEST상품브랜드_브랜드랭킹^에스트라">
                                                <span class="num">3</span>
                                                <span class="img"><img src="https://image.oliveyoung.co.kr/uploads/images/onlBrandMgmt/2020/12/58144562832857706.jpg" onerror="common.errorCrcImg(this);"></span><!-- 브랜드 로고 없을 경우 -->
                                                <p class="txt">에스트라</p>
                                                <p class="link-txt"><span>브랜드관 가기!</span></p>
                                            </a>

                                            <a href="javascript:common.link.moveBrandShop('A003526', 'Cat10000010001_Brandrank_PROD');" class="item" onclick="javascript:categoryShop.detail.setBindWlogEvent('rank_brand', '4');" data-attr="카테고리관^스킨케어_랭킹BEST상품브랜드_브랜드랭킹^CKD">
                                                <span class="num">4</span>
                                                <span class="img no-img"><img src="https://image.oliveyoung.co.kr/pc-static-root/image//category/brand_default.png" onerror="common.errorCrcImg(this);"></span><!-- 브랜드 로고 없을 경우 -->
                                                <p class="txt">CKD</p>
                                                <p class="link-txt"><span>브랜드관 가기!</span></p>
                                            </a>

                                            <a href="javascript:common.link.moveBrandShop('A003377', 'Cat10000010001_Brandrank_PROD');" class="item" onclick="javascript:categoryShop.detail.setBindWlogEvent('rank_brand', '5');" data-attr="카테고리관^스킨케어_랭킹BEST상품브랜드_브랜드랭킹^아누아">
                                                <span class="num">5</span>
                                                <span class="img"><img src="https://image.oliveyoung.co.kr/uploads/images/onlBrandMgmt/2021/2/140686590235886002.jpg" onerror="common.errorCrcImg(this);"></span><!-- 브랜드 로고 없을 경우 -->
                                                <p class="txt">아누아</p>
                                                <p class="link-txt"><span>브랜드관 가기!</span></p>
                                            </a>

                                        </div>
                                    </div>
                                    --%>
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
