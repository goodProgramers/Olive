<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/module.css">
<script>history.replaceState({}, null, location.pathname);</script>
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

/* from 태그 쪽 스타일 */
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

.sub-title2 {
    width: 1020px;
    margin: 40px auto 10px;
    color: #333;
    font-size: 20px;
    font-weight: 400;
}

.mgT20 {
    margin-top: 20px!important;
}

.tbl_inp_form {
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

.tbl_inp_form tbody tr:first-child td, .tbl_inp_form tbody tr:first-child th {
    border-top: 2px solid #d6d6d6;
}

.tbl_inp_form tbody th {
    background: #f4f4f4;
    padding: 15px 0 15px 18px;
    text-align: left;
    color: #222;
    border-bottom: 1px solid #e6e6e6;
}

.tbl_inp_form tbody td {
    padding: 15px 20px;
    border-bottom: 1px solid #e6e6e6;
    font-size: 14px;
    color: #222;
    line-height: 28px;
}
input.inpH28 {
    height: 28px;
    padding: 0 10px;
    font-size: 12px;
    border-color: #ccc;
    color: #333;
}
.tbl_inp_form select {
    background: #fff;
}
select.selH28 {
    height: 28px;
    padding: 0 0 0 5px;
    font-size: 12px;
    border-color: #ccc;
}
select {
    width: 100%;
    height: 38px;
    padding: 0 0 0 8px;
    border: 1px solid #d0d0d0;
    border-radius: 5px;
    font-size: 14px;
    line-height: 18px;
    color: #333;
}
.tbl_inp_form input:disabled, .tbl_inp_form input:read-only, .tbl_inp_form select:disabled {
    background-color: #f8f8f8;
    color: #888;
}

/* 배송지 정보 title_wrap */
.title_wrap {
    position: relative;
    width: 100%;
}

.title_wrap .sub_area {
    position: absolute;
    top: 0;
    right: 0;
    font-size: 12px;
    color: #888;
    white-space: nowrap;
}

.title_wrap .sub_area input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin-right: 5px;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}

.title_wrap .sub_area label {
    color: #333;
    white-space: nowrap;
}
</style>
<style>
/* 받는분 */
.tbl_inp_form.important tbody td.imp_data {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_star6x5.png) no-repeat 20px 25px;
}
.tbl_inp_form tbody td .chk_area {
    display: inline-block;
    line-height: 20px;
    margin-left: 20px;
    font-size: 12px;
    white-space: nowrap;
}
.imp_data .chk_area {
    position: relative;
}
.tbl_inp_form tbody td input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin: -2px 5px 0 0;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}

.tbl_inp_form tbody .info_security {
    margin-top: 10px;
}
.tbl_inp_form tbody .info_security>button {
    color: #777;
    font-size: 12px;
    font-weight: 400;
    background: 0 0;
}
.tbl_inp_form tbody td .chk_area {
    display: inline-block;
    line-height: 20px;
    margin-left: 20px;
    font-size: 12px;
    white-space: nowrap;
}
.imp_data .chk_area {
    position: relative;
}
.tbl_inp_form tbody .info_security>button:before {
    width: 18px;
    height: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/project/icon_01.png) no-repeat;
    margin: 0 5px 3px 0;
}
.tbl_inp_form tbody .info_security>button:after, .tbl_inp_form tbody .info_security>button:before {
    display: inline-block;
    content: '';
    vertical-align: middle;
}
.tbl_inp_form tbody .info_security>button:after {
    width: 4px;
    height: 5px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/project/icon_02.png) no-repeat;
    margin: 0 0 3px 5px;
}
.tbl_inp_form tbody .info_security>button:after, .tbl_inp_form tbody .info_security>button:before {
    display: inline-block;
    content: '';
    vertical-align: middle;
}
.tbl_inp_form tbody .sumtr2 th {
    padding: 5px 20px 10px;
}

.tbl_inp_form tbody .sumtr2 td {
    padding: 5px 20px 10px;
}
.btnSmall.w100 {
    width: 100px!important;
}
.btnMedium.wGreen, .btnSmall.wGreen {
    border: 1px solid #9bce26;
    color: #9bce26;
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
.tbl_inp_form tbody td .addr_box {
    width: 500px;
    min-height: 28px;
    margin: 6px 0;
    padding: 5px 10px;
    border: 1px solid #ccc;
    background: #f8f8f8;
    border-radius: 5px;
    font-size: 12px;
    line-height: 20px;
}

.tbl_inp_form {
    width: 100%;
}

.sub-title2>span {
    color: #f47330;
}

.onedayChk input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin-right: 5px;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}

.onedayChk input[type=checkbox]:disabled+label {
    color: #888;
}
.onedayChk label .topTxt {
    font-size: 14px;
    font-weight: 500;
}
.onedayChk label .sbTxt {
    font-size: 12px;
}
.orderConBanner {
    width: 100%;
    margin-top: 30px;
    overflow: hidden;
}
.orderConBanner img {
    width: 1020px;
    height: auto;
}
</style>
<style>
/* 주문상품정보 */
.sub-title2 em.gift {
    color: #f27370;
    font-size: 12px;
    font-weight: 700;
    font-style: normal;
    padding-left: 10px;
}

.tbl_prd_list {
    width: 100%;
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
.tbl_prd_list .tbl_cont_area .tbl_cell.w700 {
    width: 700px;
}
.tbl_prd_list .tbl_cont_area .tbl_cell {
    display: table-cell;
    vertical-align: middle;
}
.tbl_prd_list .tbl_cont_area .tbl_cell.w100 {
    width: 100px;
    border-left: 1px solid #e6e6e6;
}
.tbl_prd_list .tbl_cont_area .tbl_cell {
    display: table-cell;
    vertical-align: middle;
}
.tbl_prd_list tbody td .w700 .prd_info {
    padding-left: 165px;
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
.tbl_prd_list tbody td .w700 .prd_info .prd_img {
    width: 165px;
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
.tbl_prd_list tbody td .prd_info .prd_opt .tit {
    font-style: normal;
}
.tbl_prd_list tbody td .prd_info .prd_opt .tit:after {
    content: '';
    display: inline-block;
    margin: 0 5px 1px;
    width: 1px;
    height: 11px;
    background: #aaa;
    vertical-align: middle;
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
.icon_flag.delivery {
    width: 60px;
    background-color: #f374b7;
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
.tx_num {
    letter-spacing: -.02em!important;
    font-weight: 500;
}
.tbl_prd_list tbody td .cur_price {
    display: block;
    color: #222;
    font-weight: 500;
}
</style>
<style>
/* 결제수단, 결제정보 order_payment_box */
.info_dot_list_area>ul li {
    padding: 0 0 0 7px;
    font-size: 12px;
    line-height: 18px;
    color: #888;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_dot2x2_999.gif) no-repeat 0 9px;
}

.order_payment_box {
    overflow: hidden;
    width: 1020px;
}
.order_payment_box .left_area {
    float: left;
    width: 700px;
}
.order_payment_box .width-inline {
    display: inline-block;
    width: auto;
}
.order_payment_box .couponView {
    position: relative;
    margin-left: 10px;
    top: -2px;
    width: 96px;
    height: 28px;
    font-size: 14px;
    border-radius: 4px;
    color: #454c53;
    border: 0.5px solid #b2b8be;
    display: inline-block;
    text-align: center;
    line-height: 27px;
}
.tbl_inp_form.type2 tbody td>div {
    position: relative;
    width: 100%;
    padding: 15px 20px;
}
.order_payment_box .bg_area {
    background: #fcfcfc;
}
input[type=radio]:checked:disabled, input[type=radio]:checked:read-only {
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png) no-repeat 0 -60px;
}
.tbl_inp_form tbody td input[type=radio] {
    width: 12px;
    height: 12px;
    margin: -2px 7px 0 0;
    background: 0 0;
    appearance: radio;
    -webkit-appearance: radio;
    vertical-align: middle;
}
.tbl_inp_form.type2 tbody td>div>label {
    margin-right: 40px;
}
input[type=radio]:checked+label {
    color: #333;
}
.tbl_inp_form.type2 tbody td .tx_discount {
    color: #f27370;
    font-size: 16px;
}
.tbl_inp_form.type2 tbody td .tx_right {
    position: absolute;
    top: 50%;
    right: 20px;
    margin-top: -10px;
    height: 20px;
    line-height: 20px;
}
.tbl_inp_form.type2 tbody td .tx_num {
    margin-right: 1px;
    margin-left: 3px;
}
.tbl_inp_form.type2 tbody td .tx_point_info {
    margin: 3px 0 0;
    font-size: 12px;
    color: #888;
    line-height: 18px;
}
.tbl_inp_form.type2 tbody td {
    padding: 0;
}
.btnGift {
    color: #222;
    font-size: 14px;
    background: 0 0;
}
.tbl_inp_form tbody td .inp_point_wrap {
    display: inline-block;
    width: 225px;
}
.colorOrange {
    color: #f27370!important;
    font-weight: 700;
}
.btnSmall.wGray2 {
    border: 1px solid #aaa;
    color: #fff;
    background: #aaa;
}
.btnGift {
    color: #222;
    font-size: 14px;
    background: 0 0;
}
.btnGift:after {
    content: '';
    display: inline-block;
    width: 18px;
    height: 18px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/project/icon_01.png) no-repeat;
    margin: 0 0 3px 4px;
    vertical-align: middle;
}
.tbl_inp_form tbody td .inp_point_wrap {
    display: inline-block;
    width: 225px;
}
.btnSmall.wGray3 {
    border: 1px solid #a4abb9;
    color: #fff;
    background: #a4abb9;
}

/* 결제수단 선택 */
.order_payment_box .payment_info_form {
    border-top: 2px solid #888;
}
.order_payment_box .payment_info_form>li:first-child {
    padding: 10px 0;
    border-top: 0;
}
.order_payment_box .payment_info_form>li {
    overflow: hidden;
    border-top: 1px solid #e6e6e6;
}
.order_payment_box .bg_area {
    background: #fcfcfc;
}
.order_payment_box .payment_info_form>li>span {
    float: left;
    width: 175px;
    padding: 0 20px;
    line-height: 35px;
    color: #222;
}
.order_payment_box .payment_info_form>li input[type=radio] {
    width: 12px;
    height: 12px;
    margin-right: 5px;
    background: 0 0;
    appearance: radio;
    -webkit-appearance: radio;
    vertical-align: middle;
}
.order_payment_box .payment_info_form>li>span label>span.flag.bn {
    background-color: #f27370;
}
.order_payment_box .payment_info_form>li>span label>span.flag {
    display: inline-block;
    margin: 0 0 0 4px;
    padding: 0 7px;
    font-size: 10px;
    line-height: 16px;
    color: #fff;
    border-radius: 8px;
}
</style>
<style>
/* 최종결제정보 */
.order_payment_box .total_payment_box>li .btnPayment {
    width: 100%;
    padding: 17px 0 15px;
    margin: 10px 0;
    border-radius: 5px;
    font-size: 18px;
    color: #fff;
    background: #f27370;
    line-height: 18px;
}

.order_payment_box.fixArea .right_area {
    position: fixed;
    left: 50%;
    top: 0;
    margin-left: 210px;
    overflow: hidden;
}
.order_payment_box .right_area {
    float: right;
    width: 300px;
}
.right_area .sub-title2 {
    color: #4c4c4c;
}
.order_payment_box .total_payment_box {
    padding: 10px 0;
    border: 2px solid #666;
}
.order_payment_box .total_payment_box>li {
    overflow: hidden;
    padding: 0 20px;
    line-height: 32px;
    color: #222;
}
.order_payment_box .total_payment_box>li .tx_tit {
    float: left;
    width: 140px;
}
.order_payment_box .total_payment_box>li .tx_cont {
    float: right;
    font-weight: 700;
}
.order_payment_box .total_payment_box>li .tx_cont .tx_num {
    margin-right: 1px;
}
.order_payment_box .total_payment_box>li.line_top2 {
    border-top: 1px solid #e6e6e6;
    border-bottom: 1px solid #e6e6e6;
    margin: 10px 0;
    padding: 10px 20px;
}
.add_chk_area {
    margin: 10px 0 -10px 0;
    padding: 0 10px 0 18px;
}
.add_chk_area .inchk input[type=checkbox] {
    float: left;
    width: 12px;
    height: 12px;
    margin: 3px 0 0 0;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: top;
}
input[type=checkbox]:checked+label {
    color: #333;
}
.add_chk_area .inchk label {
    display: block;
    margin-left: 17px;
    font-size: 14px;
    line-height: 20px;
    color: #333;
}
.clrfix:after {
    content: '';
    display: block;
    clear: both;
}
.agree_payment_box {
    margin: 20px 0 0;
    border: 1px solid #e6e6e6;
    background: #f6f6f6;
}
.agree_payment_box .all_agree_cont {
    position: relative;
    width: 100%;
    padding: 20px;
    font-size: 14px;
    color: #222;
}

element.style {
}
.agree_payment_box .all_agree_cont>p {
    margin-bottom: 15px;
}
.agree_payment_box .all_agree_cont input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin-right: 5px;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}
.agree_payment_box .all_agree_cont label {
    font-weight: 700;
}
.agree_payment_box .all_agree_cont .btnDetailAgree {
    position: absolute;
    right: 20px;
    bottom: 20px;
    width: 26px;
    height: 16px;
    text-indent: -9999px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_arrow26x16.png) no-repeat 0 0;
}

.agree_payment_box .other_agree_cont {
    display: none;
    padding: 0 0 5px;
    font-size: 12px;
    color: #666;
}
.agree_payment_box .other_agree_cont>li {
    padding: 15px 20px;
    border-top: 1px solid #e6e6e6;
}
.agree_payment_box .other_agree_cont>li .tx_tit {
    font-size: 14px;
    color: #222;
    font-weight: 700;
}
.agree_payment_box .other_agree_cont>li .tx_cont2 {
    margin: 8px 0 0;
}
.agree_payment_box .other_agree_cont>li .tx_cont2 input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin: 5px 5px 0 0;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
}
.agree_payment_box .other_agree_cont>li .tx_cont2 label {
    display: inline-block;
    width: 220px;
}
.agree_payment_box .other_agree_cont>li .tx_cont {
    line-height: 28px;
    margin: 8px 0 0;
}
.agree_payment_box .other_agree_cont>li .tx_cont input[type=checkbox] {
    width: 12px;
    height: 12px;
    margin-right: 5px;
    background: 0 0;
    appearance: checkbox;
    -webkit-appearance: checkbox;
    vertical-align: middle;
}
.agree_payment_box .other_agree_cont>li .tx_cont label {
    display: inline-block;
    width: 150px;
}
.order_payment_box .btnSmall {
    width: 70px;
}
.btnMedium.wGray, .btnSmall.wGray {
    border: 1px solid #aaa;
    color: #666;
    background: #fff;
}
.right_area .btnSmall>span {
    font-size: 12px;
    color: #888;
}
</style>
<style>
/* 픽업매장 */
.tbl_inp_form tbody td.pickup-area {
    padding: 0;
}

.pickup-store {
    padding: 23px 36px 20px;
    font-size: 0;
}

.pickup-store .store-tit {
    height: 18px;
}

.pickup-store .store-name {
    font-size: 14px;
    font-weight: 700;
    line-height: 16px;
    letter-spacing: normal;
    color: #222;
}

.pickup-store .store-distance {
    padding: 2px 0 0 8px;
    font-size: 12px;
    font-weight: 300;
    letter-spacing: normal;
    line-height: 14px;
    color: #8b8b8b;
}

.pickup-store .store-change {
    display: inline-block;
    padding: 0 6px;
    margin: -3px 0 0 18px;
    border: 1px solid #e5e5e5;
    border-radius: 5px;
    font-size: 12px;
    letter-spacing: normal;
    line-height: 22px;
    color: #555;
}

.pickup-store .store-info__addr {
    margin-top: 10px;
    font-size: 13px;
    line-height: 15px;
    letter-spacing: normal;
    color: #555;
}

.pickup-store .store-info__time {
    margin-top: 10px;
    font-size: 13px;
    line-height: 15px;
    font-weight: 500;
    letter-spacing: normal;
    color: #666;
}

.pickup-store .store-info__time strong {
    font-weight: 700;
}

.pickup-store .noti-covid19 {
    display: inline-block;
    margin: 10px 0 0;
    padding: 7px 10px;
    border-radius: 5px;
    font-size: 11px;
    font-weight: 500;
    line-height: 13px;
    letter-spacing: normal;
    color: #555;
    background: #f3f3f3;
}

.pickup-store-about {
    padding: 18px 36px;
    border-top: 1px solid #e6e6e6;
}

.pickup-store-about__list li {
    padding-left: 8px;
    position: relative;
    font-size: 12px;
    letter-spacing: normal;
    line-height: 18px;
    color: #888;
}

.pickup-store-about__list li span {
    color: #9bce26;
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
				<li class="on"><span class="hide">현재단계</span><span class="step_num tx_num">2</span> 주문/결제</li><!-- 현재단계 li에 클래스 on과 <span class="hide">현재단계</span> 넣어주세요 -->
				<li class="last"><span class="step_num tx_num">3 </span> 주문완료</li>
			</ul>
		</div>
		<!--// title_box -->

		<form name="orderForm" id="orderForm" action="order.do" method="post">
		<!-- <form name="orderForm" id="orderForm" action="orderform_test.jsp" method="post"> -->
			<input type="hidden" id="memberCode" name="memberCode" value="${param.memberCode }"><!-- 회원코드 -->
			<input type="hidden" id="memberID" name="memberID" value="${param.memberID }"><!-- 회원ID -->
			<input type="hidden" id="todayGift" name="todayGift" value="0"><!-- 일반배송(오늘드림X) -->
			
			<!-- 주문자 정보 : 삭제해도될듯 why? 회원코드로 주문자 정보 가져올수.. 잇... (예린)-->
			<h2 class="sub-title2 mgT20" style="display: none;">주문자정보</h2>
			<table class="tbl_inp_form" style="display: none;">
				<caption></caption>
				<colgroup>
					<col style="width:170px">
					<col style="width:*">
				</colgroup>
				<tbody>
				<tr>
					<th scope="row">주문자명</th>
					<td><input type="text" id="ordManNm" name="ordManNm" value="" class="inpH28" title="주문자명을 입력해주세요." this="주문자명은" style="width:200px"></td><!-- id와 label for를 맞춰주세요 (임시로 넣어둠) -->
				</tr>
				<tr>
					<th scope="row">휴대폰</th>
					<td>
						<select id="ordManCellSctNo" name="ordManCellSctNo" class="selH28" title="주문자 휴대폰 번호 앞자리를 선택해주세요." style="width:90px">
							<option value="">선택</option>
								<option value="010" selected="selected">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
								<option value="02">02</option>
								<option value="031">031</option>
								<option value="032">032</option>
								<option value="033">033</option>
								<option value="041">041</option>
								<option value="042">042</option>
								<option value="043">043</option>
								<option value="044">044</option>
								<option value="051">051</option>
								<option value="052">052</option>
								<option value="053">053</option>							
								<option value="054">054</option>							
								<option value="055">055</option>							
								<option value="061">061</option>							
								<option value="062">062</option>							
								<option value="063">063</option>							
								<option value="064">064</option>							
								<option value="070">070</option>							
								<option value="080">080</option>							
								<option value="0130">0130</option>							
								<option value="0303">0303</option>							
								<option value="0502">0502</option>							
								<option value="0503">0503</option>							
								<option value="0504">0504</option>							
								<option value="0505">0505</option>							
								<option value="0506">0506</option>							
								<option value="0507">0507</option>							
						</select>						
						- <input type="text" id="ordManCellTxnoNo" name="ordManCellTxnoNo" value="" class="inpH28" title="주문자 휴대폰 번호 가운데 자리를 입력해주세요." this="주문자 휴대폰 번호 가운데 자리는" style="width:90px">
						- <input type="text" id="ordManCellEndNo" name="ordManCellEndNo" value="" class="inpH28" title="주문자 휴대폰 번호 마지막 4자리를 입력해주세요." this="주문자 휴대폰 번호 마지막 자리는" style="width:90px">
					</td>
				</tr>				
				</tbody>
			</table>
			<!--// 주문자 정보 : 추가로 넣어야함(예린)-->

			<!-- 배송지 정보 -->
			<div class="title_wrap">
				<h2 class="sub-title2">배송지정보</h2>
			</div>
			<table class="tbl_inp_form important" id="dlvpInfo">
				<caption></caption>
				<colgroup>
					<col style="width:170px">
					<col style="width:*">
				</colgroup>
				<tbody>
				<tr>
					<th scope="row">배송지선택</th>
					<td>
						<div class="show" id="dlvpSelect_div">
							<input type="hidden" name="selectDlvSeq" value="">
							<select id="dlvpSelect" name="mbrDlvpSeq" class="selH28" title="배송지를 선택해주세요." style="width:200px">
							<c:forEach items="${memberAddrList}" var="memberAddrList">
								<option value="">${memberAddrList.ad_name }</option>
							</c:forEach>
							</select>
						</div>
					</td>
				</tr><!-- 배송지선택부분 -->
				<c:forEach items="${memberAddrList}" var="memberAddrList">
				<c:if test="${memberAddrList.ad_main == 1}">
				<tr type="exist" style="display: table-row;">
					<th scope="row">배송지명</th>
					<td id="dlvpNm_exist_span">${ memberAddrList.ad_name}</td>
					<input type="hidden" id="member_ad_code" name="member_ad_code" value="${ memberAddrList.ad_code}"><!-- 배송지코드 -->
					<input type="hidden" id="dlvpNm_exist" name="dlvpNm" value="${ memberAddrList.ad_name}" style="width:200px"><!-- 배송지명 -->
				</tr>
				<tr id="pickupHide1" type="exist" style="display: table-row;">
					<th scope="row">받는분</th>
					<td class="imp_data">
						<input type="text" id="rmitNm_exist" name="rmitNm" value="${ memberAddrList.ad_member}" class="inpH28" style="width:200px"><!-- 받는사람 -->
					</td>
				</tr>
				<tr class="sumtr1" id="pickupHide2" type="exist" style="display: table-row;">
					<th scope="row">연락처</th>
					<td class="imp_data">
						<select id="rmitCellSctNo_exist" name="rmitCellSctNo" class="selH28" title="연락처1 앞자리를 선택해주세요." style="width:90px" orgvalue="" data-attr="배송지정보^1_연락처1">
							<option value="">선택</option>							
							<option value="010" selected="selected">010</option>								
							<option value="011">011</option>								
							<option value="016">016</option>								
							<option value="017">017</option>								
							<option value="018">018</option>								
							<option value="019">019</option>								
							<option value="02">02</option>								
							<option value="031">031</option>								
							<option value="032">032</option>								
							<option value="033">033</option>								
							<option value="041">041</option>								
							<option value="042">042</option>								
							<option value="043">043</option>								
							<option value="044">044</option>								
							<option value="051">051</option>								
							<option value="052">052</option>								
							<option value="053">053</option>								
							<option value="054">054</option>								
							<option value="055">055</option>								
							<option value="061">061</option>								
							<option value="062">062</option>								
							<option value="063">063</option>								
							<option value="064">064</option>								
							<option value="070">070</option>								
							<option value="080">080</option>								
							<option value="0130">0130</option>								
							<option value="0303">0303</option>								
							<option value="0502">0502</option>								
							<option value="0503">0503</option>								
							<option value="0504">0504</option>								
							<option value="0505">0505</option>								
							<option value="0506">0506</option>								
							<option value="0507">0507</option>								
						</select>
						- <input type="text" id="rmitCellTxnoNo_exist" name="rmitCellTxnoNo" value="${ memberAddrList.midtel }" class="inpH28" title="연락처1 가운데 자리를 입력해주세요." this="연락처1 가운데 자리는" style="width:90px" data-attr="배송지정보^1_연락처1">
						- <input type="text" id="rmitCellEndNo_exist" name="rmitCellEndNo" value="${ memberAddrList.endtel }" class="inpH28" title="연락처1 마지막 4자리를 입력해주세요." this="연락처1 마지막 자리는" style="width:90px" data-attr="배송지정보^1_연락처1">
						<span class="info_security"><button type="button" data-rel="layer" data-target="securityInfo" class="chk_area">안심번호 서비스 안내</button></span>
					</td>
				</tr>
				<tr id="pickupHide4" type="exist" style="display: table-row;">
					<th scope="row">주소</th>
					<td class="imp_data"><!-- 2017-01-25 수정 : 클래스 추가 -->
						<input type="text" id="stnmRmitPostNo_exist" name="rmitPostNo" value="16387" class="inpH28" title="우편번호를 검색해주세요." style="width:90px" readonly="readonly">
						<input type="hidden" id="rmitPostNo_exist" name="stnmRmitPostNo" value="16387" title="우편번호를 검색해주세요.">
						
						<button type="button" class="btnSmall wGreen w100" id="search-zipcode-pop_exist" style="display:none;" data-attr="배송지정보^1_주소"><span>우편번호 찾기 (기존)</span></button>
						<button type="button" class="btnSmall wGreen w100" id="search-zipcode-pop_exist_r" data-attr="배송지정보^1_주소"><span>우편번호 찾기</span></button>
						
						<div class="addr_box">
							<p class="addr_new">
								<span class="tx_addr" id="stnmPostAddr_exist">${ memberAddrList.ad_address }</span><!--  도로명주소를 넣어주세요 -->
							</p>
							<!--// 주소 입력 시 보여지는 부분 -->
						</div>
						<input type="text" id="tempRmitDtlAddr_exist" value="${ memberAddrList.ad_address }" class="inpH28" title="상세주소를 입력해주세요." style="width:500px;" this="상세 주소는" maxlength="30">
						<input type="hidden" id="stnmRmitDtlAddr_exist" name="stnmRmitDtlAddr" value="${ memberAddrList.ad_address }" class="inpH28" title="상세주소를 입력해주세요." style="width:500px" this="상세 주소는">
						<input type="hidden" id="rmitDtlAddr_exist" name="rmitDtlAddr" value="" class="inpH28" title="상세주소를 입력해주세요." style="width:500px">
						<input type="hidden" id="emdNm_exist" name="emdNm" value="">
						<input type="hidden" id="admrNm_exist" name="admrNm" value="">
					</td>
				</tr>				
				</tbody>
				</c:if>
				</c:forEach>							
			</table>
			<!--// 배송지 정보 -->

			<!-- 배송 요청사항 -->
			<div id="pickupHide5">
				<div class="title_wrap">
					<h2 class="sub-title2">배송 요청사항</h2>
				</div>
				
				<table class="tbl_inp_form important">
					<caption></caption>
					<colgroup><col style="width:170px"><col style="width:*"></colgroup>
					<tbody>
					<tr>
						<th scope="row">배송 메시지</th>
						<td>
							<select id="mbrMemoCont" name="orderMemo" class="selH28" title="택배배송 메시지를 선택해주세요." style="width:350px" data-attr="배송요청사항^배송메세지">
								<option name="배송메시지를 선택해주세요." value="없음">배송메시지를 선택해주세요.</option>
								<option value="부재시 경비실에 맡겨주세요.">부재시 경비실에 맡겨주세요.</option>/n
								<option value="부재시 문앞에 놓아주세요.">부재시 문앞에 놓아주세요.</option>/n
								<option value="파손의 위험이 있는 상품이오니, 배송 시 주의해주세요.">파손의 위험이 있는 상품이오니,  배송 시 주의해주세요.</option>/n
								<option value="배송전에 연락주세요.">배송전에 연락주세요.</option>/n
								<option value="택배함에 넣어주세요.">택배함에 넣어주세요.</option>/n
							</select>
						</td>
					</tr>
					</tbody>
				</table>
			</div><!--// 배송 요청사항 -->
			
			<div class="orderConBanner" id="orderConBanner" style="display:none">
				<img src="https://image.oliveyoung.co.kr/uploads/images/editor/QuickUpload/SYS/image/20220216232240/qksa_20220216232240.jpg">
			</div>			
			<!-- 주문상품정보 -->
			<h2 class="sub-title2">올리브영 배송상품<em class="gift" id="giftNoti2" style="display: none;">* 증정품은 결제 시 확인하실 수 있습니다.</em></h2>
			<table class="tbl_prd_list">
				<caption>올리브영 배송상품 주문상품 목록</caption>
				<colgroup>
					<col style="width:*">
					<col style="width:110px">
					<col style="width:100px">
					<col style="width:110px">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">상품정보</th>
						<th scope="col">판매가</th>
						<th scope="col">수량</th>
						<th scope="col">구매가</th>
					</tr>
				</thead>
				<tbody>
	 				<c:if test="${ not empty cartProductList }">
					<c:forEach items="${cartProductList }" var="cartProductList">
					<tr>					
					<input type="hidden" name="cartNo" value=""><!-- 장바구니번호 필요??? -->
					<td colspan="5">
						<div class="tbl_cont_area">						
							<div class="tbl_cell w700">
								<div class="prd_info">
									<div class="prd_img">	
										<img src="${cartProductList.cart_prImgs }" alt="장바구니 상품 임시 이미지">
									</div>
									<div class="prd_name">
										<span>${cartProductList.cart_brands }</span>
										<p>${cartProductList.cart_products }</p>
									</div>
									<p class="prd_opt"></p>
									<p class="prd_flag">
										<span class="icon_flag sale">세일</span>
										<span class="icon_flag delivery">오늘드림</span>
									</p>
								</div>
							</div>

							<div class="tbl_cell w110">							
								<span class="cur_price"><span class="tx_num"><fmt:formatNumber value="${cartProductList.cart_prPrices }" pattern="###,###" /></span>원</span>
							</div>
							<div class="tbl_cell w100">${cartProductList.cart_prCounts }</div>

							<div class="tbl_cell w110">
								<span class="org_price"><span class="tx_num" id="normPrc_A000000116034/001"><fmt:formatNumber value="${cartProductList.cart_prPriceCnts }" pattern="###,###" /></span>원</span><!-- 2017-01-24 수정 : 추가 -->
								<span class="pur_price"><span class="tx_num" id="salePrc_A000000116034/001"><fmt:formatNumber value="${cartProductList.cart_realPrices }" pattern="###,###" /></span>원</span>
								<input type="hidden" id="prCount" name="prCount" value="${cartProductList.cart_prCounts }">
								<input type="hidden" id="realPricehidden" name="realPricehidden" value="${cartProductList.cart_realPricehiddens }">
								<input type="hidden" id="prCodes" name="prCode" value="${cartProductList.cart_prCodes }">
								<input type="hidden" id="priceCode" name="priceCode" value="${cartProductList.priceCode }">
								<input type="hidden" id="saleCode" name="saleCode" value="${cartProductList.saleCode }">
							</div>
						</div>							
					</td>
					</tr>
					</c:forEach>
					</c:if>										
				</tbody>
				</table>

<!--// 주문상품정보 -->
			
			<!-- 쿠폰 및 포인트, 결제수단, 결제정보 -->
			<div class="order_payment_box">
				<div class="left_area">
					<!-- 포인트사용 --><!-- 2017-01-18 수정 : 전액사용 버튼이 input 뒤로 위치 변경됨 -->
					<h2 class="sub-title2">포인트 사용</h2>
					<table class="tbl_inp_form type2">
						<caption>포인트사용 입력 폼</caption>
						<colgroup>
							<col style="width:170px">
							<col style="width:*">
						</colgroup>
						
						<input type="hidden" id="lastAplyPntInputName" value="">
						
						<tbody>				
						<tr>
							<th scope="row">포인트</th>
							<td>
								<div>
									<span class="inp_point_wrap">
										<input type="text" id="cjonePntAplyAmt" value="0" class="inpH28 cjonePoint" title="사용하실 포인트를 입력해주세요." style="width:100px" min="0"> 원 /
												<span id="cjonePnt_span" class="tx_num colorOrange">
													<%-- <c:set value="${memberAddrList[0].my_point }" var="myPoint"></c:set> --%>
													<span id="cjonePnt" value="${memberAddrList[0].my_point }"><fmt:formatNumber value="${memberAddrList[0].my_point }" pattern="###,###" /></span>P
													<%-- <span id="cjonePnt" value="${my_point }"><fmt:formatNumber value="${my_point }" pattern="###,###" /></span>P --%>
												</span>
										<input type="hidden" name="cjonePntAplyAmt" value="0">
										<input type="hidden" name="cjonePntNonPosCnt" value="0">
									</span>
									<button type="button" class="btnSmall wGray3" id="cjonePnt_btn" >전액사용</button>
									<p class="tx_point_info">포인트는 최소 1,000원 이상 보유 시 사용 가능합니다. </p>									
								</div>
							</td>
						</tr>
						<input type="hidden" id="vMbrStaffYn" value="N">				
						</tbody>
					</table>
					<!--// 포인트사용 -->

					<!-- 결제수단 선택 -->
					<div class="title_wrap" id="payMethod_div" style="display: block;">
						<h2 class="sub-title2">결제수단 선택</h2>
						<p class="sub_area" style="display: none;"></p>
					</div>
					<ul class="payment_info_form" id="payMethodList" style="display: block;">
						<li class="bg_area"><!-- 2017-01-18 수정 : 클래스 추가 -->
							<span><input type="radio" id="payMethod_11" name="payMethod" value="신용카드" checked="checked"><label id="payMethodLabel_11" for="payMethod_11">신용카드<span class="flag bn">혜택</span></label></span>
							<span><input type="radio" id="payMethod_61" name="payMethod" value="무통장입금"><label id="payMethodLabel_61" for="payMethod_61">무통장입금</label></span>
							<span><input type="radio" id="payMethod_25" name="payMethod" value="PAYCO"><label id="payMethodLabel_25" for="payMethod_25">PAYCO</label></span>
							<span><input type="radio" id="payMethod_26" name="payMethod" value="카카오페이"><label id="payMethodLabel_26" for="payMethod_26">카카오페이</label></span>
							<span><input type="radio" id="payMethod_29" name="payMethod" value="네이버페이"><label id="payMethodLabel_29" for="payMethod_29">네이버페이</label></span>
							<span><input type="radio" id="payMethod_22" name="payMethod" value="휴대폰결제"><label id="payMethodLabel_22" for="payMethod_22">휴대폰결제</label></span>
							<span><input type="radio" id="payMethod_21" name="payMethod" value="계좌이체"><label id="payMethodLabel_21" for="payMethod_21">계좌이체</label></span>
							<span><input type="radio" id="payMethod_24" name="payMethod" value="도서상품권"><label id="payMethodLabel_24" for="payMethod_24">도서상품권</label></span>
							<span><input type="radio" id="payMethod_23" name="payMethod" value="문화상품권"><label id="payMethodLabel_23" for="payMethod_23">문화상품권</label></span>
						</li>	
					</ul>
				</div>
				
				<div class="right_area">
					<!-- 최종 결제정보 -->
					<h2 class="sub-title2">최종 결제정보</h2>
					<!--// 최종 결제정보 -->
					<ul class="total_payment_box">
						<li>
							<span class="tx_tit">총 상품금액</span>
							<span class="tx_cont"><span class="tx_num">114,600</span>원</span>
							<input type="hidden" name="totalProductAmt" value="114600">
						</li>
						
						<li class="line_top2">
							<span class="tx_tit">총 배송비</span>
							<span class="tx_cont"><span class="tx_num" id="dlexPayAmt_span">0</span>원</span>
							<input type="hidden" name="deliveryCharge" value="0">
						</li>

						<li>
							<span class="tx_tit">포인트 사용 금액</span>
							<span class="tx_cont colorOrange"><span class="tx_num" id="cjonePntAplyAmt_span">0</span>원</span>
						</li>
						
						<li class="total">
							<span class="tx_tit">최종 결제금액</span>
							<span class="tx_cont"><span class="tx_num" id="totPayAmt_sum_span">112,600</span>원</span>
							<input type="hidden" name="pointAmt" value="0">
							<input type="hidden" name="orderPayAmt" value="112600">
						</li>
						
						<li>
							<button class="btnPayment" id="btnPay" name="btnPay" type="button" data-attr="최종결제정보^결제하기">결제하기<em id="giftNoti3" style="display: none;">(증정품은 결제 시 확인 가능합니다)</em> <em id="giftNotiQuick" style="display: none;">(오늘드림으로 주문 시 온라인 단독 <br>증정품이 제공되지 않습니다.)</em> <em id="giftNoti4" style="display: none;">(오늘드림 주문은 온라인 전용 증정품이<br>제공되지 않습니다.)</em></button>
							<input type="hidden" id="tempOrdNo" value="">
						</li>
					</ul>

					<div class="agree_payment_box" id="agreeList">
						<div class="all_agree_cont">
							<p>주문 상품정보 및 결제대행 서비스 이용약관에 모두 동의하십니까?</p><!-- 2017-01-18 수정 : 문구수정 -->
							<input type="checkbox" id="agree_all" name="TrrmsCheck1ed" value="" data-attr="최종결제정보^결제대행동의"> <label for="agree_all">모두 동의</label>
							<button type="button" class="btnDetailAgree" id="btnDetailAgree">주문상품 및 결제대행 서비스 이용약관 자세히 보기 열기/닫기</button>
						</div>
						<ul class="other_agree_cont">
							<li>
								<p class="tx_tit">주문 상품정보에 대한 동의</p>
								<p class="tx_cont2"><input type="checkbox" id="agree_1" name="agreeChk" value="" title="주문 상품정보 및 결제대행 서비스 이용약관에 동의해주세요." data-attr="최종결제정보^결제대행동의"> <label for="agree_1">주문하실 상품, 가격, 배송정보, 할인내역등을 최종 확인하였으며, 구매에 동의합니다. <br>(전상거래법 제8조 제2항)</label></p>
							</li>
							
							<li>
								<p class="tx_tit">결제대행 서비스 이용약관 동의</p>
								<p class="tx_cont">
									<input type="checkbox" id="agree_2_1" name="agreeChk" value="" title="전자금융거래 기본약관에 동의해주세요." data-attr="최종결제정보^6_결제대행동의"> <label for="agree_2_1">전자금융거래 기본약관</label>
									<button type="button" class="btnSmall wGray" onclick="javascript:forder.orderForm.openPopup('https://www.oliveyoung.co.kr/pc-static-root/html/etc/foot_agreement.html','agree',400,900);"><span>약관보기</span></button>
								</p>
								<p class="tx_cont">
									<input type="checkbox" id="agree_2_2" name="agreeChk" value="" title="개인정보 수집 및 이용약관에 동의해주세요." data-attr="최종결제정보^6_결제대행동의"> <label for="agree_2_2">개인정보 수집 및 이용 동의</label>
									<button type="button" class="btnSmall wGray" onclick="javascript:forder.orderForm.openPopup('https://www.oliveyoung.co.kr/pc-static-root/html/etc/foot_agreement_02.html','agree',400,900);"><span>약관보기</span></button>
								</p>
								<p class="tx_cont">
									<input type="checkbox" id="agree_2_3" name="agreeChk" value="" title="개인정보 제공 및 위탁약관에 동의해주세요." data-attr="최종결제정보^6_결제대행동의"> <label for="agree_2_3">개인정보 제공 및 위탁 동의</label>
									<button type="button" class="btnSmall wGray" onclick="javascript:forder.orderForm.openPopup('https://www.oliveyoung.co.kr/pc-static-root/html/etc/foot_agreement_03.html','agree',400,900);"><span>약관보기</span></button>
								</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--// 쿠폰 및 포인트, 결제수단, 결제정보 -->
		</form>
	</div><!-- //#Contents -->
</div><!-- Container -->

<jsp:include page="layout/footer.jsp"></jsp:include>

</div><!-- Wrapper -->

<!-- script 코딩 부분 -->
<script>
// 주문페이지 전송
$("#btnPay").on("click", function () {
	if($("#agree_all").is(":checked")){
		$("#orderForm").submit();
	} else{
		alert("주문 상품정보 및 결제대행 서비스 이용약관에 동의가 필요합니다.");
	}
});

// 포인트 전액사용 버튼 클릭시 cjonePnt_btn
$(function () {
	$("#cjonePnt_btn").on("click", function () {
	// $("#cjonePnt_btn").click(function () {
		var totalpoint = $("#cjonePnt").text();
		$("#cjonePntAplyAmt").val(totalpoint); // 인풋태그 변경
		$("#cjonePntAplyAmt_span").text(addComma(totalpoint)); // 최종 결제정보 변경
		$("input[name=pointAmt]").val(totalpoint);
	});
});

// 포인트 금액 직접 입력
$(function () {
	$("#cjonePntAplyAmt").on("keyup", function () {
		
		var totalpoint = $("#cjonePntAplyAmt").val();
		var maxpoint = ${ memberAddrList[0].my_point };
		if(totalpoint > ${ memberAddrList[0].my_point }) {
			alert("보유하신 포인트를 초과하였습니다.");
			$("#cjonePntAplyAmt").val(maxpoint);
			$("#cjonePntAplyAmt_span").text(addComma(maxpoint));
			$("input[name=pointAmt]").val(maxpoint);
		} else{
			$("#cjonePntAplyAmt").attr("value", totalpoint); // 인풋태그 변경
			$("#cjonePntAplyAmt").val(totalpoint);
			$("#cjonePntAplyAmt_span").text(addComma(totalpoint)); // 최종 결제정보 변경
			$("input[name=pointAmt]").val(totalpoint);
		} // if
		
	});
});

//천단위 콤마 펑션
function addComma(value){
     value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     return value; 
}
</script>
<script>
// 배송지명 옵션태그 선택시
$(function () {
	$("#dlvpSelect").change(function (event) {
		let selAddrName = $("#dlvpSelect option:selected").text();
        $.ajax({ 
            url:"<%= request.getContextPath() %>/olive/memberinfo.do", 
            dataType:"json", 
             type:"POST",
             data:{
            	 selAddrName
             },
             cache:false, // 꼭 기억
             success:function (data){ 
                $( data.memberAddrInfo ).each( function ( i , elem ){
				   $("#dlvpNm_exist_span").text(elem.ad_name); 
				   $("#rmitNm_exist").attr("value", elem.ad_name);
                   $("#stnmPostAddr_exist").text(elem.ad_address);
                   $("#rmitNm_exist").attr("value", elem.ad_member);
                   $("#rmitCellTxnoNo_exist").attr("value", elem.midtel);
                   $("#rmitCellEndNo_exist").attr("value", elem.endtel);
                   $("#tempRmitDtlAddr_exist").attr("value", elem.ad_address);
                   $("#member_ad_code").attr("value", elem.ad_code);
                   // $("#orderForm").append($('<input/>', {type: 'text', name: 'member_ad_code', value:elem.ad_code }));
                });
             }, 
             error:function (){
                alert("에러발생");
             }
         });
	}); // change
}); // ready

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
</body>
</html>