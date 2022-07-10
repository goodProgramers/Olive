<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/module.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>2022. 6. 27. - 오전 9:06:35</title>
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
    border: 1px solid;
    border-radius: 10%;
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

<jsp:include page="layout/header.jsp"></jsp:include>

<div id="Container">
  <form name="cartForm" id="cartForm" action="<%= request.getContextPath() %>/olive/order.do" method="get">	
	<div id="Contents"><!-- #Contents -->
			<!-- title_box -->
			<div class="title_box">
				<h1>장바구니<span class="tx_num">2</span></h1><!-- 예린 : span 태그 안에 장바구니에 담음 상품 수량 뿌리기 -->
				<ul class="step_list">
					<li class="on"><span class="hide">현재단계</span><span class="step_num tx_num">1</span> 장바구니</li><!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
					<li><span class="step_num tx_num">2</span> 주문/결제</li>
					<li class="last"><span class="step_num tx_num">3 </span> 주문완료</li>
				</ul>
			</div>
			<!--// title_box -->
			
			<!-- membership_box --><!-- 예린 : 회원이름, 등급명, 포인트 뿌리기 -->
			<input type="hidden" class="memberCode" name="memberCode" value="me000004"><!-- 예린 : 회원코드 -->	
			<div class="membership_box  iconGrade4">
				<p class="tx_grade_info"><strong>회원</strong>님의 멤버십 등급은 <span class="grade">PINK OLIVE</span>입니다 </p>
				<ul class="membership_info_list">
					<li><a href="#" class="grade_benefit"><span>등급혜택</span></a></li>
					<li><a href="#"><strong><span class="tx_num"></span> 포인트</strong> 
						<span class="own_point">						
							<span class="tx_num" value="5000">5,000</span>P
						</span></a></li>
					<li><a href="#"><strong>할인쿠폰</strong> <span class="own_point"><span class="tx_num">0</span>개</span></a></li>
					<li><a href="#"><strong>예치금</strong> <span class="own_point"><span class="tx_num">0</span>원</span></a></li>
				</ul>
			</div>
			<!--// membership_box -->
			
<!-- 일반배송, 당일배송 탭 -->
	<ul class="comm5sTabs" id="ulDelivGb"><!-- 예린 : 일반 배송 탭에도 상품 갯수 뿌리기 -->
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
					<col style="width:120px">
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
					<tr>
						<input type="hidden" id="soldout_yn" name="soldout_yn" value="N">
						<td colspan="7">			
						<div class="tbl_cont_area">		
								<!-- 예린 : 장바구니 상품 정보를 핸들러로 보내기 위해서 input 태그에 담기(채영구현예정) 각 상품마다 하나씩 -->
								<div class="tbl_cell w40">
									<input type="checkbox" checked="checked" id="inp_prd_chk1" name="s_checkbox1" value="0" class="chkSmall">
									<input type="hidden" class="prCode" name="prCode" value="pr001002">
									<input type="hidden" class="prImg" name="prImg" value="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0015/A00000015606001ko.jpg?l=ko">
									<input type="hidden" class="brand" name="brand" value="돌체앤가바나">
									<input type="hidden" class="product" name="product" value="돌체앤가바나 라이트블루 오드뚜왈렛 100ml">
									<input type="hidden" class="prPrice" name="prPrice" value="129000">
									<input type="hidden" class="prPriceCnt" name="prPriceCnt" value="129000">
									<input type="hidden" class="realPrice" name="realPrice" value="83800">
									<input type="hidden" class="realPricehidden" name="realPricehidden" value="83800">
									<input type="hidden" class="priceCode" name="priceCode" value="prpr000003"> <!-- 단가코드 -->
									<input type="hidden" class="saleCode" name="saleCode" value="sa000003"> <!-- 할인코드 -->
								</div>
								
								<div class="tbl_cell w390">
									<div class="prd_info ">
										<a class="prd_img" href="javascript:common.link.moveGoodsDetail('A000000156060','');">	
											<img data-original="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0015/A00000015606001ko.jpg?l=ko" class="completed-seq-lazyload" alt="상품이미지" src="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0015/A00000015606001ko.jpg?l=ko">
										</a>
										<a class="prd_name">
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
									<span class="cur_price" value="129000">
										<span class="tx_num">129,000</span>원
									</span>
								</div>
								
								<div class="tbl_cell w100">
									<div class="prd_cnt">
											<input type="hidden" name="prCount" value="1">
											<select class="amount" name="prCount2" prdtp="1" prdcnt="0" ordpsbminqty="1" ordpsbmaxqty="999" qtyaddunit="1" ordqty="1" title="상품 수량 선택">
												<option value="1" selected="selected">1</option>											
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
											</select>	
									</div>
									<button type="button" class="btnSmall wGray" style="display: none;" name="btnQtyMod"><span>변경</span></button>
								</div>
								
								<div class="tbl_cell w110"><span class="org_price" value="129000"><span class="tx_num">129,000</span>원</span><span class="pur_price" value="83800"><span class="tx_num">83,800</span>원</span></div>
								
								<div class="tbl_cell w120  "><!-- 합배송, 배송 예정 class / sum   delay추가 하기 -->
									<p class="prd_delivery">
										<strong id="deliStrongText">무료배송<span class="ex">도서·산간 제외</span></strong>
									</p>
								</div>
								
								<div class="tbl_cell w150">
									<div class="btn_group">
										<button id="367587813|A000000156060|001" type="button" class="btnSmall wGreen" name="btn_buy" data-attr="장바구니^장바구니바로구매^바로구매"><span data-attr="장바구니^장바구니바로구매^바로구매">바로구매</span></button><!-- 3440969_PM작업시 오늘드림 레이어 팝업 노출 요청 건 - obj인계 불가능에 따른 고유 ID 선언(즉시 구매 시, find로 찾기 위함) -->
										<button type="button" class="btnSmall wGray delete" name="btnDelete" data-attr="장바구니^장바구니상품삭제^삭제"><span data-attr="장바구니^장바구니상품삭제^삭제">삭제</span></button><!-- 버튼 공간(스페이스바)없이 붙여주세요. -->
									</div>
								</div>
						</div>
						</td>
					</tr>
					
					<tr>
						<input type="hidden" id="soldout_yn" name="soldout_yn" value="N">
						<td colspan="7">			
						<div class="tbl_cont_area">		
								<div class="tbl_cell w40">
								<input type="checkbox" checked="checked" id="inp_prd_chk1" name="s_checkbox1" value="0" class="chkSmall">
									<input type="hidden" class="prCode" name="prCode" value="pr003052">
									<input type="hidden" class="prImg" name="prImg" value="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0016/A00000016399217ko.jpg?l=ko">
									<input type="hidden" class="brand" name="brand" value="아로마티카">
									<input type="hidden" class="product" name="product" value="아로마티카 바디오일 100ml 리츄얼 기획(괄사증정) 3종 택1_어웨이크닝,서렌, 임브레이스)">
									<input type="hidden" class="prPrice" name="prPrice" value="44000">
									<input type="hidden" class="prPriceCnt" name="prPriceCnt" value="44000">
									<input type="hidden" class="realPrice" name="realPrice" value="30800">
									<input type="hidden" class="realPricehidden" name="realPricehidden" value="30800">
									<input type="hidden" class="priceCode" name="priceCode" value="prpr000254"><!-- 단가코드 -->
									<input type="hidden" class="saleCode" name="saleCode" value="sa000207"><!-- 할인코드 -->
								</div>
								
								<div class="tbl_cell w390">
									<div class="prd_info ">
										<a class="prd_img">	
											<img data-original="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0016/A00000016399217ko.jpg?l=ko" class="completed-seq-lazyload" alt="상품이미지" src="https://image.oliveyoung.co.kr/uploads/images/goods/220/10/0000/0016/A00000016399217ko.jpg?l=ko">
										</a>
										<a class="prd_name">
											<span class="tx_sale_info"></span><!-- 브랜드명 및 할인정보 -->
											<span id="brandNm">아로마티카 </span>
											<p id="goodsNm">아로마티카 바디오일 100ml 리츄얼 기획(괄사증정) 3종 택1_어웨이크닝,서렌, 임브레이스)</p>
										</a>
										<p class="prd_opt"></p>
										<p class="prd_flag">
											<span class="icon_flag sale">세일</span>
										</p>
									</div>
								</div>
								
								<div class="tbl_cell w110">
									<span class="cur_price" value="44000">
										<span class="tx_num">44,000</span>원
									</span><!-- 1개의 판매가 -->
								</div>
								
								<div class="tbl_cell w100">
									<div class="prd_cnt">
											<input type="hidden" name="prCount" value="1">
											<select class="amount" name="prCount2" prdtp="1" prdcnt="0" ordpsbminqty="1" ordpsbmaxqty="999" qtyaddunit="1" ordqty="1" title="상품 수량 선택">
												<option value="1" selected="selected">1</option>											
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
												<option value="8">8</option>
												<option value="9">9</option>
												<option value="10">10</option>
											</select>	
									</div>
									<button type="button" class="btnSmall wGray" style="display: none;" name="btnQtyMod"><span>변경</span></button>
								</div>
								
								<div class="tbl_cell w110">
										<span class="org_price" value="44000">
											<span class="tx_num">44,000</span>원<!-- 수량*판매가 -->
										</span>
										<span class="pur_price" value="30800"><span class="tx_num">30,800</span>원</span><!-- 수량*구매가 -->
								</div>
								
								<div class="tbl_cell w120  "><!-- 합배송, 배송 예정 class / sum   delay추가 하기 -->
									<p class="prd_delivery">
										<strong id="deliStrongText">무료배송<span class="ex">도서·산간 제외</span></strong>
									</p>
								</div>
								
								<div class="tbl_cell w150">
									<div class="btn_group">
										<button id="367587813|A000000156060|001" type="button" class="btnSmall wGreen" name="btn_buy" data-attr="장바구니^장바구니바로구매^바로구매"><span data-attr="장바구니^장바구니바로구매^바로구매">바로구매</span></button><!-- 3440969_PM작업시 오늘드림 레이어 팝업 노출 요청 건 - obj인계 불가능에 따른 고유 ID 선언(즉시 구매 시, find로 찾기 위함) -->
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
				</div>
				<div class="sum_price">총 판매가 <span class="tx_num">173,000</span>원 <span class="tx_sign minus">-</span> 총 할인금액 <span class="tx_num">58,400</span>원 <span class="tx_sign plus">+</span> 배송비 <span class="tx_num">0</span>원 <span class="span_quickDeliCharge" style="display:none;">(3!4!, 미드나잇 이용시)</span><span class="tx_sign equal">=</span> <span class="tx_total_price">총 결제금액 <span class="tx_price"><span class="tx_num">114,600</span>원</span></span></div>
			</div>
			<!--// 올리브영 배송상품 결제금액 -->
		
		<div class="total_price_info">
			<div class="detail_price">
				<p>총 판매가<span><span class="tx_num">173,000</span>원</span></p>
				<span class="tx_sign2 minus">-</span>
				<p class="tx_sale">총 할인금액<span><span class="tx_num">58,400</span>원</span></p>
				<span class="tx_sign2 plus">+</span>
				<p>배송비 <span><span class="tx_num">0</span>원</span></p>
			</div>	
			<div class="sum_price">
				<span class="tx_text">배송비는 쿠폰할인금액에 따라 변경될 수 있습니다.</span>
				총 결제예상금액 <span class="span_quickDeliCharge" style="display:none;">최소</span><span class="tx_price"><span class="tx_num">114,600</span>원</span>
			</div>	
		</div>
		
		<div class="order_btn_area order_cart"><!-- 예린 : 상품 선택에 따라서 선택주문 옆에 숫자 바꾸기 -->
			<button type="button" class="btnOrangeW" name="partOrderBtn" data-attr="장바구니^주문유형^선택주문">선택주문(2)</button>
			<button type="button" class="btnOrange" name="allOrderBtn" data-attr="장바구니^주문유형^전체주문">전체주문</button>
		</div>

		<!-- 2018-07-09 문구추가 -->
		<div class="cart_comment">
			<p>장바구니 상품은 90일동안, 판매종료 된 상품은 10일동안 보관됩니다.</p>
		</div>

		</div><!-- //#Contents -->
	  </form><!-- form -->
	</div><!-- Container -->
	
<jsp:include page="layout/footer.jsp"></jsp:include>

</div><!-- Wrapper -->		


<script>

// 전체선택 처리 작업1
$("#inp_allRe1").change(function (event) {
	$(".tbl_cont_area :checkbox").prop("checked", $(this).prop("checked"));
});

//전체선택 처리 작업2
$(":checkbox:not(#inp_allRe1)").click(function (event) {
	$("#inp_allRe1").prop("checked", $(":checkbox:not(#inp_allRe1):checked").length == $(":checkbox:not(#inp_allRe1)").length ? "checked" : ""); 
});

// 전체주문 클릭시 요청URL에 따라 전송
$(".btnOrange").click(function () {
	$("#cartForm").submit();
	alert("주문결제 페이지로 이동합니다.");
});

// 전체주문 클릭시 체크박스 모두 체크되도록
$(".btnOrange").on("click", function () {
	$("#inp_allRe1").prop("checked", true);
	$(".tbl_cont_area :checkbox").prop("checked", true);
});


// 바로구매 버튼 클릭시 주문/결제 창으로 이동시키기(구현해야함)
$(".btnSmall .wGreen").on("click", function () {
	
});

//선택주문
$("checkOrder").on("click", function () {
	$("#cart").submit(function () {
		$("#cart :checked").val().submit();
	});
});
</script>

<script>
// 수량이 바뀌면 해당 상품의 구매가와 총 판매가, 총 할인금액, 배송비, 총 결제예상금액 바꾸는 작업(구현해야함)
$(".amount").on("change", function () {
	// alert($(this).find("option:selected").val());
	// var prPrice = $(this).parent().parent().prev().find("span.cur_price").val(); // 129000
	// var prPrice = $(this).parent().parent().prev().children().text(); // 129000
	var prPrice = $(this).parent().parent().prev().find("span.cur_price").val(); // 129000
	// alert(prPrice);
	var realPrice = $(this).find("option:selected") // pur_price
	var count = $(this).find("option:selected").val(); 
	
	// cur_price : 1개 판매가
	// org_price : 수량 * 판매가
	// pur_price : 수량 * 구매가
	
	/*
	var prPrice = $(this).prev().prev().prev().prev().val(); // 판매가
	var realPrice = $(this).next().next().val(); // 구매가
	var count =	$(this).val();
	$(this).next().next().next().val(realPrice * count);
	$(this).prev().prev().val(prPrice * count);
	*/
});
</script>	
</body>
</html>