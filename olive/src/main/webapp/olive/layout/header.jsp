<%@page import="domain.LoginAuth"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div id="Header">
    <div class="top_util">
        <ul class="menu_list" id="menu_list_header">

<c:choose>
<c:when test="${ empty loginAuth }">
            <li class="join"><a href="<%= request.getContextPath() %>/olive/signup.do" data-attr="공통^헤더^회원가입">회원가입</a></li>
            <li class="login"><a href="<%= request.getContextPath() %>/olive/login.do" data-attr="공통^헤더^로그인">로그인</a></li>
</c:when>
<c:otherwise>
            <li class="logout"><strong>${ loginAuth.mbs_grade } ${ loginAuth.me_name }</strong>
            <a href="<%= request.getContextPath() %>/olive/logout.do">로그아웃</a></li>
            <li class="mypage"><a href="#" >마이페이지</a></li>
</c:otherwise>
</c:choose>
            <li class="cart"><a href="<%= request.getContextPath() %>/olive/cart.do">장바구니<span id="cartToCnt"></span></a></li>
            <li class="order"><a href="javascript:common.link.moveOrderList();" data-attr="공통^헤더^주문배송">주문배송</a></li>
            <li class="customer"><a href="javascript:common.faq.getFaqList('99');" data-attr="공통^헤더^고객센터">고객센터</a></li>
            <li class="store"><a href="javascript:common.link.moveStoreMain();" data-attr="공통^헤더^매장안내">매장안내</a></li>
            <li class="global"><a href="http://global.oliveyoung.com" target="_blank" title="올리브영 글로벌 새창으로 열기" data-attr="공통^헤더^Global">Global</a></li>
        </ul>
    </div>

    <div class="header_inner">
        <h1><a href="<%= request.getContextPath() %>/olive/main.do"><img src="/image/logo.png" alt="올리브영"></a></h1>

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
                                                            <img src="${top3List.prm_url}" alt="TOP3 상품이미지">
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
                            <p class="sub_depth"><a href="<%=request.getContextPath()%>/olive/productMCate.do?ca_code=${midMap.key.ca_code}">${midMap.key.ca_name}</a></p>
                            <ul>
                                <c:forEach items="${midMap.value}" var="bottList">
                                    <li><a href="<%=request.getContextPath()%>/olive/productSCate.do?ca_code=${bottList.ca_code}">${bottList.ca_name}</a></li>
                                </c:forEach>
                            </ul>
                            <c:if test="${i.end or i.index%4 == 3}"></div></c:if>
                        </c:forEach>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <ul class="gnb_menu_list">
            <li><a href="<%=request.getContextPath()%>/main/getHotdealList.do"><span>오특</span></a></li>
            <li><a href="<%=request.getContextPath()%>/main/getNewList.do"><span>신상</span></a></li>
            <li><a href="<%=request.getContextPath()%>/main/getBestList.do"><span>랭킹</span></a></li>
            <li><a href="<%=request.getContextPath()%>/planshop/getSpcShopDetail.do?dispCatNo=500000200080001"><span>프리미엄관</span></a></li>
            <li><a href="<%=request.getContextPath()%>/main/getPlanShopList.do"><span>기획전</span></a></li>
            <li><a href="<%=request.getContextPath()%>/main/getSaleList.do"><span>세일</span></a></li>
            <li><a href="<%=request.getContextPath()%>/giftCardGuide/getGiftCardGuide.do"><span>기프트카드</span></a></li>
            <li><a href="<%=request.getContextPath()%>/main/getMembership.do"><span>멤버십/쿠폰</span></a></li>
            <li><a href="<%=request.getContextPath()%>/main/getEventList.do"><span>이벤트</span></a></li>
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
<%--검색 버튼 누르면--%>
<script>
    $("#searchSubmit").click(function (event){
        var keyWord = $("#query").val();
        var searchInput = $("<input>")
            .attr("type","hidden")
            .attr("name","keyWord")
            .attr("value",keyWord);
        $("<form>")
            .attr("method","GET")
            .attr("action","/olive/search.do")
            .append(searchInput)
            .appendTo("body")
            .submit();
    });
</script>