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
</style>
<style>
/* 주문완료 컨텐트 스타일 */
.order_end_box .order_title {
    margin: 0;
    padding: 40px 0;
    border-bottom: 1px solid #ddd;
}
.order_title {
    margin: 22px 0 0;
    text-align: center;
    color: #222;
}
.order_title>p {
    font-size: 36px;
    line-height: 1;
}
.order_title>p>span {
    color: #9bce26;
}
.order_title .tx_sub_cont {
    margin: 15px 0 0;
    font-size: 16px;
    color: #888;
}
.order_end_box .order_title .tx_order_info {
    margin: 27px 0 0;
}
.order_end_box .order_title .tx_order_info {
    display: inline-block;
    height: 40px;
    padding: 6px 20px 0;
    border-radius: 20px;
    background-color: #555;
    color: #fff;
    font-size: 16px;
}
.order_title .tx_order_info {
    display: block;
    margin: 10px 0 0;
    color: #666;
    font-size: 21px;
    line-height: 28px;
}
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.order_end_box .inner_box {
    padding: 0 120px;
    background: #fff;
}
.sub-title2 {
    width: 1020px;
    margin: 40px auto 10px;
    color: #333;
    font-size: 20px;
    font-weight: 400;
}
.order_end_box .sub-title2 {
    width: 100%;
    max-width: 1020px;
    margin: 55px 0 15px;
}
.tbl_data_view {
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
.tbl_data_view tbody tr:first-child td, .tbl_data_view tbody tr:first-child th {
    border-top: 2px solid #666;
}
.tbl_data_view tbody th {
    padding: 15px 0 15px 20px;
    text-align: left;
    color: #222;
    border-bottom: 1px solid #e6e6e6;
}
.tbl_data_view tbody td {
    padding: 15px 20px;
    border-bottom: 1px solid #e6e6e6;
    font-size: 14px;
    color: #222;
    text-align: right;
    font-weight: 700;
}
.tbl_data_view tbody td .tx_num {
    font-size: 16px;
    margin-right: 1px;
    vertical-align: -1px;
}
.tbl_data_view tbody td .tx_price {
    color: #f27370;
}
.tbl_data_view tbody .last_tot_price th {
    padding: 30px 0 30px 20px;
    font-size: 24px;
}
.tbl_data_view tbody .last_tot_price td {
    padding: 20px;
}
.tbl_data_view tbody .last_tot_price td .tx_price {
    color: #ff2828;
}
.tbl_data_view tbody .last_tot_price td .tx_price .tx_num {
    font-size: 24px;
    margin-right: 2px;
    vertical-align: -2px;
}
.tbl_data_view tbody .last_tot_price td>p {
    margin-top: 8px;
}
.order_end_box .inner_box~.inner_box {
    padding-bottom: 60px;
    border-bottom: 1px solid #ddd;
}
.tbl_data_view.type2 tbody th {
    background-color: #f6f6f6;
}
.tbl_data_view.type2 tbody td {
    text-align: left;
    font-weight: 400;
}

.mgL100 {
    margin-left: 100px!important;
}
.mgT20 {
    margin-top: 20px!important;
}
.info_dot_list.type2 dd, .info_dot_list.type2>li {
    color: #666;
    line-height: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_dot2x2_999.gif) no-repeat 2px 7px;
}
.info_dot_list dd, .info_dot_list>li {
    padding: 0 0 0 7px;
    font-size: 12px;
    color: #999;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_dot2x2.gif) no-repeat 0 8px;
}
.order_end_box .order_btn_area {
    margin-top: 60px;
}
.order_btn_area {
    margin: 30px 0 0;
    text-align: center;
}
.order_btn_area button {
    width: 130px;
    font-size: 16px;
}
.btnGreenW, a.btnGreenW {
    width: 100%;
    height: 50px;
    background-color: #fff;
    border: 1px solid #9bce26;
    padding: 11px 0 9px;
    font-size: 16px;
    line-height: 28px;
    color: #9bce26;
    border-radius: 5px;
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
.order_btn_area button+button {
    margin-left: 7px;
}
.btnGreen, a.btnGreen {
    width: 100%;
    height: 50px;
    background-color: #9bce26;
    padding: 11px 0 9px;
    font-size: 18px;
    line-height: 30px;
    border-radius: 5px;
}
.order_end_box .order_btn_area+.cura_pord {
    margin-top: 65px;
}
</style>
</head>
<body>
<div id="Wrapper">
<jsp:include page="layout/header.jsp"></jsp:include>

<div id="Container">
	<!-- #Contents -->
	<div id="Contents">
		<!-- title_box -->
		<div class="title_box">
			<h1>주문/결제</h1>
			<ul class="step_list">
				<li><span class="step_num tx_num">1</span> 장바구니</li>
				<li><span class="step_num tx_num">2</span> 주문/결제</li><!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
				<li class="on"><span class="hide">현재단계</span><span class="step_num tx_num">3 </span> 주문완료</li>
			</ul>
		</div>
		<!--// title_box -->

		<div class="order_end_box"><!-- 2017-01-20 수정 : div 추가 -->
				<div class="order_title">
					<p>주문접수가 <span>완료</span>되었습니다.</p>
					<p class="tx_sub_cont">올리브영을 이용해주셔서 감사합니다.</p>
					<span class="tx_order_info">주문번호 : <strong class="tx_num">Y2207096944055</strong></span>
				</div>		
		
				<div class="inner_box"><!-- 2017-01-20 수정 : div 추가 -->
					<!-- 결제정보 -->
					<h2 class="sub-title2">결제정보</h2>
					<table class="tbl_data_view">
						<caption>결제정보 안내</caption>
						<colgroup>
							<col style="width:170px">
							<col style="width:*">
						</colgroup>
						<tbody>
						<tr>
							<th scope="row">총상품금액</th><!-- 2017-01-20 수정 : 총상품금액, 총배송비, 총 할인금액 추가 -->
							<td><span class="tx_num">114,600</span>원</td>
						</tr>
						<tr>
							<th scope="row">총할인금액</th>
							<td>
								<span class="tx_price">-<span class="tx_num">2,000</span>원</span>
							</td>
						</tr>
						<tr>
							<th scope="row">총배송비</th>
							<td><span class="tx_num">0</span>원</td>
						</tr>
						
						<!-- 2017-01-20 수정 : 최종 결제금액 영역 추가  -->
						<tr class="last_tot_price">
							<th scope="row">최종 결제금액</th>
							<td>
								<span class="tx_price"><span class="tx_num">112,600</span>원</span>
							</td>
						</tr>
						<!--// 2017-01-20 수정 : 최종 결제금액 영역 추가 -->
						</tbody>
					</table>
					<!--// 결제정보 -->
				</div>
				
				<div class="inner_box"><!-- 배송정보 -->
					<h2 class="sub-title2">배송정보</h2>
					<table class="tbl_data_view type2"><!-- 2017-01-20 수정 : type2 클래스 추가 -->
						<caption>배송정보 안내</caption>
						<colgroup>
							<col style="width:170px">
							<col style="width:*">
						</colgroup>
						<tbody>
						<tr>
							<th scope="row">받는분</th>
							<td>박예린</td>
						</tr>
						<tr>
							<th scope="row">연락처1</th>
							<td>010-6777-7428</td>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<td>
								<p>도로명 주소 : 경기 수원시 권선구 금곡로140번길 29 (금곡동, 수원호매실휴먼시아8단지아파트) 806-2005</p>
								<p class="colorGrey">지번주소 : 경기 수원시 권선구 금곡동 1095 806-2005</p>
							</td>
						</tr>
						<tr>
							<th scope="row">배송 메시지</th>
							<td colspan="3">부재시 문앞에 놓아주세요.</td>
						</tr>
						</tbody>
					</table>
				</div><!--// 배송정보 -->
		
				<ul class="info_dot_list type2 mgT20 mgL100"><!--  2019-12-13 class 변경 -->
					<li>주문취소는 [결제완료] 상태까지 가능합니다. [상품준비중], [배송중]에는 상품 수령 후 반품요청 부탁드립니다.</li><!--  2019-12-13 취소문구 추가 -->
				</ul>

				<div class="order_btn_area">
					<button class="btnGreenW">쇼핑계속</button>
					<button class="btnGreen">주문내역조회</button>
				</div>
			</div>
	</div><!-- //#Contents -->
</div><!-- Container -->

<jsp:include page="layout/footer.jsp"></jsp:include>

</div><!-- Wrapper -->

<!-- script 코딩 부분 -->
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