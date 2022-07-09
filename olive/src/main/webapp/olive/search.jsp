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
    <link rel="stylesheet" href="/css/productListTotal.css">

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
                            <c:forEach items="${searchCategoryList}" var="searchCategoryList">
                                <a href="" id="${searchCategoryList.ca_code}">
                                    ${searchCategoryList.ca_name}<span></span>
                                </a>
                            </c:forEach>

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
                        <c:forEach items="${searchBrandList}" var="searchBrandList">
                            <input type="checkbox" id="inpChk1_${searchBrandList.br_code}" name="brand_check" value="${searchBrandList.br_code}">
                            <label for="inpChk1_${searchBrandList.br_code}">${searchBrandList.br_name}</label>
                        </c:forEach>
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