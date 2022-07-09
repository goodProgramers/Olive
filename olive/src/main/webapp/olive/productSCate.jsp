<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hwan/2022/07/07-7:00 PM</title>
    <link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/module.css">
    <link rel="stylesheet" href="/css/productListTotal.css">

</head>
<body>

<body>
<div id="Wrapper">
    <jsp:include page="layout/header.jsp"></jsp:include>
    <div id="Container">
        <div id="Contents">
            <div class="page_location">
                <a href="/olive/main.do" class="loc_home">홈</a>
                <ul class="loc_history">
                    <li class="">
                        <c:forEach items="${totMap}" var="totMap">
                            <c:if test="${totMap.key.ca_code eq topcategoryList[0].ca_code}">
                                <a href="#" class="cate_y">${topcategoryList[1].ca_name}</a>
                                <div class="history_cate_box" style="width: 122px;">
                                    <ul>
<%--                                    <c:forEach items="${totMap.value}" var="midList">
                                        <li><a href="/olive/productMCate.do?ca_code=${midList.key.ca_code}">${midList.key.ca_name}</a></li>
                                    </c:forEach>--%>
                                    </ul>
                                </div>
                            </c:if>
                        </c:forEach>
                    </li>
                    <li class="">
                        <c:forEach items="${totMap}" var="totMap">
                            <c:if test="${totMap.key.ca_code eq topcategoryList[0].ca_code}">
                                <a href="#" class="cate_y">${topcategoryList[2].ca_name}</a>
                                <div class="history_cate_box" style="width: 122px;">
                                    <ul>
<%--                                    <c:forEach items="${totMap.value}" var="midEntity">
                                        <c:if test="${midEntity.key.ca_code eq topcategoryList[1].ca_code}">
                                            <c:forEach items="${midEntity.value}" var="bottList">
                                                <li><a href="#">${bottList.ca_name}</a></li>
                                            </c:forEach>
                                        </c:if>
                                    </c:forEach>--%>
                                    </ul>
                                </div>
                            </c:if>
                        </c:forEach>
                    </li>
                    <li class="">
                        <a href="#" class="cate_y">
                            스킨/토너
                            <%--<c:forEach items="${dCategoryList}" var="dCategoryList">

                                <li><a href="#" class="on.">${dCategoryList.ca_name}</a></li>
                            </c:forEach>--%>
                        </a>
                        <div class="history_cate_box" style="width: 122px;">
                            <ul>
<%--                                <c:forEach items="${dCategoryList}" var="dCategoryList">
                                    <li><a href="#" class="on.">${dCategoryList.ca_name}</a></li>
                                </c:forEach>--%>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="titBox">
                <h1>${topcategoryList[2].ca_name}</h1>
            </div>
            <ul class="cate_list_box">
                <li class="first on">
                    <a> 전체</a>
                </li>

                <c:forEach items="${dCategoryList}" var="dCategoryList">
                    <li>
                        <a href="">
                        ${dCategoryList.ca_name}
                        </a>
                    </li>
                </c:forEach>
                <c:forEach begin="${fn:length(dCategoryList)}" end="${dCategorySize-1}">
                    <li>
                        &nbsp;
                    </li>
                </c:forEach>
            </ul>
            <div class="cate_brand_box">
                <div class="tit_area">
                    <strong>브랜드</strong>
                    <span class="tx_num">Total ${fn:length(sBrandList)}  </span>
                </div>
                <ul class="brand_list">
                    <c:forEach items="${sBrandList}" var="sBrandList">
                        <li>
                            <input type="checkbox" id="${sBrandList.br_code}" name="searchOnlBrndCdArr">
                            <label for="${sBrandList.br_code}">${sBrandList.br_name}</label>
                        </li>
                    </c:forEach>
                </ul>
                <button class="btn_more">더보기</button>
                <div class="btn_reset"><button id="onlBrndReSet">선택 초기화</button></div>
            </div>
            <p class="cate_info_tx">
                ${topcategoryList[2].ca_name} 카테고리에
                <span> ${fn:length(sProductList)}  </span>
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
            <c:forEach items="${sProductList}" var="sProductList" varStatus="i">
                <c:if test="${i.index%4==0}"><ul class="cate_prd_list gtm_cate_list"></c:if>
                    <li class="flag">
                        <div class="prd_info">
                            <a href="<%=request.getContextPath()%>/olive/productDetail.do?pr_code=${sProductList.pr_code}" class="prd_thumb goodsList">
                                <img src="${sProductList.prm_url}">
                            </a>
                            <div class="prd_name">
                                <a href="<%=request.getContextPath()%>/olive/productDetail.do?pr_code=${sProductList.pr_code}">
                                    <span class="tx_brand">${sProductList.br_name}</span>
                                    <p class="tx_name">${sProductList.pr_name}</p>
                                </a>
                            </div>
                            <button class="btn_zzim jeem">
                                <span>찜하기전</span>
                            </button>
                            <p class="prd_price">
                                <span class="tx_org"><span class="tx_num"><fmt:formatNumber value="${sProductList.prpri_price}" pattern="###,###" /></span>원</span>
                                <span class="tx_cur"><span class="tx_num"><fmt:formatNumber value="${sProductList.realPrice}" pattern="###,###" /></span>원</span>
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