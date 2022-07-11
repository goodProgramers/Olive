<%@page import="domain.ProductDetailDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/module.css">


    <!-- 상단 카테고리 왼쪽  -->
    <style>
        .prd_detail_box {
            padding: 35px 0 0;
        }

        .prd_detail_box.renew .left_area {
            width: 510px;
        }

        .prd_detail_box .left_area {
            float: left;
            width: 550px;
            margin-top: 5px;
        }

        .prd_detail_box.renew .prd_img {
            width: 510px;
            height: 510px;
        }

        .prd_detail_box .prd_img {
            position: relative;
            width: 550px;
            height: 550px;
            text-align: center;
        }

        .prd_detail_box .prd_img .thumb_flag {
            position: absolute;
            top: 10px;
            left: 10px;
        }

        .thumb_flag.best {
            color: #f05a5e;
            line-height: 44px;
            border-color: #f05a5e;
        }

        .thumb_flag {
            display: inline-block;
            width: 48px;
            height: 48px;
            font-size: 14px;
            background: #fff;
            border-radius: 24px;
            border-width: 2px;
            border-style: solid;
            text-align: center;
            font-weight: 700;
        }

        .prd_detail_box.renew .prd_img img {
            max-width: 510px;
            max-height: 510px;
        }

        .prd_detail_box .prd_img img {
            width: auto !important;
            max-width: 550px;
            height: auto !important;
            max-height: 550px;
        }

        button, img, input, select, textarea {
            border: 0;
            vertical-align: top;
            color: #666;
        }

        .renew input {
            letter-spacing: 0;
            word-spacing: 0;
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

        .prd-option-name {
            opacity: 0;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            position: absolute;
            width: 100%;
            bottom: 32px;
            left: 0;
            height: 32px;
            text-align: center;
        }

        .prd-option-name .txt {
            display: inline-block;
            padding: 0 12px;
            color: #555;
            height: 32px;
            line-height: 32px;
            font-size: 12px;
            font-weight: 700;
            border-radius: 19px;
            background: rgba(250, 250, 250, .7);
            letter-spacing: 0;
        }

        .prd_detail_box.renew .prd_thumb_list {
            text-align: center;
        }

        .prd_detail_box.renew .prd_thumb_list {
            margin-top: 20px;
        }

        .prd_detail_box .prd_thumb_list {
            overflow: hidden;
            position: relative;
            left: 50%;
            transform: translateX(-50%);
            -webkit-transform: translateX(-50%);
            -ms-transform: translateX(-50%);
            display: inline-block;
            margin: 10px 0 0;
        }

        ol, ul {
            list-style: none;
        }

        .prd_detail_box.renew .prd_thumb_list > li {
            float: none;
            display: inline-block;
            width: 80px;
            height: 80px;
            margin: 0 3px 5px;
        }

        .prd_detail_box .prd_thumb_list > li.sel {
            border: 1px solid #000;
        }

        .prd_detail_box .prd_thumb_list > li {
            float: left;
            width: 60px;
            height: 60px;
            overflow: hidden;
            margin-bottom: 4px;
        }

        .prd_detail_box .prd_thumb_list > li a {
            display: block;
            text-align: center;
        }

        a {
            color: #666;
            text-decoration: none;
        }

        .prd_detail_box.renew .prd_social_info {
            width: 480px;
            padding: 0;
            border: 0;
            margin: 30px auto 0;
            text-align: left;
        }

        .prd_social_info {
            margin: 50px 0 0;
            padding: 15px 0;
            border-top: 1px solid #e5e5e5;
            border-bottom: 1px solid #e5e5e5;
            text-align: center;
        }

        .prd_detail_box.renew .prd_social_info > p {
            padding: 0;
            background: 0 0;
        }

        .prd_social_info > p {
            display: inline-block;
            padding: 0 50px;
            color: #777;
            line-height: 32px;
            vertical-align: top;
        }

        .prd_detail_box.renew .prd_social_info > p > strong {
            position: relative;
            top: 1px;
            font-size: 16px;
            color: #000;
        }

        .prd_detail_box.renew .prd_social_info > p * {
            display: inline-block;
            vertical-align: middle;
        }

        .prd_social_info > p > strong {
            margin-right: 10px;
        }

        .prd_detail_box.renew .prd_social_info .review_point {
            width: 112px;
            height: 20px;
            margin-bottom: 0;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_new_off.png) no-repeat 0 0;
            background-size: 112px auto;
        }

        .prd_detail_box.renew .prd_social_info > p * {
            display: inline-block;
            vertical-align: middle;
        }

        .prd_detail_box.renew .prd_social_info .review_point .point {
            height: 20px;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_review_point_new_on.png) no-repeat 0 0;
            background-size: 112px auto;
        }

        .prd_detail_box.renew .prd_social_info > p * {
            display: inline-block;
            vertical-align: middle;
        }

        .prd_detail_box.renew .prd_social_info > p > b {
            color: #555;
            font-size: 20px;
            margin-left: 8px;
        }

        .prd_detail_box.renew .prd_social_info > p * {
            display: inline-block;
            vertical-align: middle;
        }

        .prd_detail_box.renew .prd_social_info > p {
            padding: 0;
            background: 0 0;
        }

        .prd_social_info > p + p {
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x18.gif) no-repeat 0 50%;
        }

        .prd_social_info > p {
            display: inline-block;
            padding: 0 50px;
            color: #777;
            line-height: 32px;
            vertical-align: top;
        }

        .prd_social_info > p .link_social.kakao {
            background-position: 0 0;
        }

        .prd_social_info > p .link_social {
            display: inline-block;
            width: 32px;
            height: 32px;
            margin-left: 3px;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_social.png) no-repeat 0 50%;
            background-position: -100px 0;
            text-indent: -9999px;
            overflow: hidden;
            vertical-align: top;
        }

        .prd_social_info > p .link_social.facebook {
            background-position: -39px 0;
        }

        .prd_social_info > p .link_social.url {
            background-position: -77px 0;
        }

    </style>

    <style>
        /* 오른쪽 파트 */
        .prd_detail_box .right_area {
            float: right;
            width: 425px;
        }

        .prd_detail_box .prd_info {
            position: relative;
            width: 100%;
        }

        .prd_detail_box.renew .prd_brand {
            font-size: 16px;
            line-height: 24px;
            color: #000;
        }

        .prd_detail_box.renew .pd_arrow_link {
            display: inline-block;
            color: #000;
            line-height: 24px;
            padding-right: 13px;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_link_arrow_black.png) no-repeat right 9px;
            background-size: 5px auto;
        }

        .prd_detail_box.renew .prd_name {
            margin-top: 10px;
            font-size: 26px;
            line-height: 34px;
            color: #000;
        }

        .prd_detail_box.renew .price {
            position: relative;
            margin-top: 15px;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }

        .prd_detail_box.renew .price-1 {
            position: relative;
            top: 4px;
            margin-right: 12px;
            font-size: 16px;
            color: #aaa;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }

        .prd_detail_box.renew .price * {
            letter-spacing: 0;
        }

        .prd_detail_box.renew .price-2 {
            font-size: 28px;
            color: #e02020;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
            font-weight: 700;
        }

        .prd_detail_box.renew .price .btn_more {
            position: relative;
            top: 2px;
            color: #888;
            font-size: 14px;
            background: 0 0;
            padding-right: 17px;
            margin-left: 13px;
        }

        .prd_detail_box.renew .sale_list {
            position: absolute;
            top: 36px;
            left: 0;
            width: 100%;
            padding: 18px 20px 0;
            border: 1px solid #0b060a;
            background: #fff;
            z-index: 1;
        }

        .prd_detail_box.renew .sale_list .tit {
            font-size: 16px;
            color: #333;
            padding-bottom: 15px;
            border-bottom: 1px solid #333;
            font-weight: 700;
        }

        .prd_detail_box.renew .sale_list .detail {
            font-size: 16px;
        }

        .prd_detail_box.renew .sale_list .list {
            padding: 17px 0;
        }

        .prd_detail_box.renew .prd_flag {
            margin-top: 17px;
        }

        .prd_detail_box .prd_flag {
            margin-top: 11px;
        }

        .prd_flag {
            overflow: hidden;
        }

        .prd_detail_box.renew .prd_flag .icon_flag {
            border-radius: 13px;
            width: 60px;
            height: 24px;
            line-height: 22px !important;
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
            line-height: 17px !important;
            color: #fff !important;
            font-size: 12px !important;
            text-align: center;
            vertical-align: middle;
            text-decoration: none !important;
            margin: 0 !important;
        }

        .icon_flag.coupon {
            background-color: #9bce26;
        }

        .icon_flag.gift {
            background-color: #6fcff7;
        }

        .icon_flag.delivery {
            width: 60px;
            background-color: #f374b7;
        }

        .viewArea {
            margin-top: 4px;
        }

        .viewArea > span {
            padding-left: 25px;
            display: inline-block;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/curation/ico_viewEye.png) no-repeat center left 4px;
            background-size: 18px auto;
            font-size: 13px;
            color: #f27370;
            letter-spacing: 0;
            line-height: 15px;
        }

        .viewArea span .viewNum {
            font-weight: 700;
            display: inline-block;
            vertical-align: initial;
        }

        .prd_more_info {
            background: #fff;
            border-bottom: 1px solid #e5e5e5;
        }

        .prd_more_info .row {
            padding: 15px 0 20px;
            border-top: 1px solid #e5e5e5;
        }

        .prd_more_info .tit {
            position: relative;
            font-size: 16px;
            line-height: 30px;
            margin-bottom: 5px;
            color: #000;
            font-weight: 700;
        }

        .prd_more_info .bl_list li:not(.liQuickAI) {
            display: table;
            table-layout: fixed;
            font-size: 15px;
            color: #555;
        }

        .prd_more_info .bl_list li:not(.liQuickAI) span {
            position: relative;
            width: 66px;
            display: table-cell;
            font-weight: 700;
        }

        .prd_more_info .bl_list li:not(.liQuickAI) div {
            display: table-cell;
            padding-left: 10px;
        }

        .prd_more_info .bl_list li:not(.liQuickAI) b + em, .prd_more_info .bl_list li:not(.liQuickAI) em + em {
            padding-left: 8px;
            margin-left: 4px;
        }

        .prd_more_info .bl_list li:not(.liQuickAI) em {
            display: inline-block;
            position: relative;
            font-style: normal;
            vertical-align: top;
        }

        .prd_more_info .row {
            padding: 15px 0 20px;
            border-top: 1px solid #e5e5e5;
        }

        .prd_more_info .tit {
            position: relative;
            font-size: 16px;
            line-height: 30px;
            margin-bottom: 5px;
            color: #000;
            font-weight: 700;
        }

        .prd_more_info .txt_list {
            font-size: 15px;
            color: #555;
        }

        .prd_detail_box.renew .prd_cnt_box {
            border-radius: 5px;
        }

        .prd_cnt_box {
            position: relative;
            margin: 10px 0 0;
            min-height: 60px;
            padding: 14px 20px;
            border: 1px solid #e9e9e9;
            background: #f9f9f9;
        }

        .prd_cnt_box .tit_area {
            color: #333;
            line-height: 30px;
        }

        .prd_cnt_box .tit_area > span {
            display: block;
            font-weight: 700;
        }

        .prd_cnt_box .cont_area {
            position: absolute;
            bottom: 20px;
            right: 22px;
            max-width: 50%;
        }

        .prd_detail_box.renew .prd_cnt_box .option_cnt_box {
            border-radius: 5px;
        }

        .prd_cnt_box .cont_area .option_cnt_box {
            margin-bottom: -6px;
        }

        .prd_cnt_box .option_cnt_box {
            display: block;
            max-width: 121px;
            margin-top: 5px;
            border: 1px solid #ddd;
            overflow: hidden;
        }

        .prd_detail_box.renew .prd_cnt_box .option_cnt_box .btnCalc.minus {
            background: #f5f5f5 url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_calculator_minus.png) no-repeat center center;
            background-size: 10px auto;
        }

        .prd_cnt_box .option_cnt_box .btnCalc.minus {
            background-position: 1px 50%;
            border-right: 1px solid #ddd;
        }

        .prd_cnt_box .option_cnt_box .btnCalc.plus {
            background-position: -32px 50%;
            border-left: 1px solid #ddd;
        }

        .prd_cnt_box .option_cnt_box .btnCalc {
            float: left;
            width: 29px;
            height: 28px;
            text-indent: -9999px;
            background: #f5f5f5 url(https://www.oliveyoung.co.kr/pc-static-root/image/product/ico_calculator.png) no-repeat 0 50%;
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
            font-family: Montserrat, -apple-system, NotoSansCJKkr, AppleSDGothicNeo, Roboto, sans-serif;
            font-weight: 700;
        }

        button, input.button, input.image, input.submit, label {
            cursor: pointer;
        }

        button, img, input, select, textarea {
            width: 100%;
            border: 0;
            vertical-align: top;
            color: #666;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        user agent stylesheet
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

        .prd_cnt_box .option_cnt_box input[type=text] {
            float: left;
            font-weight: 700;
            width: 60px;
            height: 28px;
            padding: 0 10px;
            border: 0;
            text-align: center;
            color: #222;
        }

        .prd_detail_box.renew .prd_cnt_box .option_cnt_box .btnCalc.plus {
            background: #f5f5f5 url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_calculator_plus.png) no-repeat center center;
            background-size: 10px auto;
        }

        .prd_total_price {
            overflow: hidden;
            height: 60px;
            margin: 10px 0 0;
            padding: 18px 0 0;
            border-bottom: 2px solid #f27370;
            color: #e02020;
            font-weight: 700;
        }

        .prd_total_price .tx_tit {
            float: left;
            font-size: 18px;
        }

        .prd_total_price .tx_cont {
            float: right;
        }

        .prd_total_price .tx_cont .tx_num {
            font-size: 22px;
            margin-right: 2px;
            vertical-align: -2px;
            letter-spacing: -.04em !important;
        }

        .prd_btn_area {
            overflow: hidden;
            margin: 10px 0 0;
        }

        .prd_detail_box.renew .prd_btn_area button.btnBasket {
            width: 177px;
        }

        .prd_btn_area button.btnBasket {
            width: 167px;
            border: 1px solid #f27370;
            background: #fff;
            color: #f27370;
        }

        .prd_btn_area button {
            float: left;
            height: 70px;
            font-size: 20px;
            color: #fff;
        }

        .prd_detail_box.renew .prd_btn_area button.btnBuy {
            width: 177px;
            margin-left: 10px;
        }

        .prd_btn_area button.btnBuy {
            width: 167px;
            margin-left: 5px;
            background: #f27370;
        }

        .prd_btn_area button.btnSoldout {
            width: 167px;
            background: #bbb;
        }

        .prd_btn_area button {
            float: left;
            height: 70px;
            font-size: 20px;
            color: #fff;
        }

        .prd_btn_area button.btnReStock {
            width: 167px;
            margin-left: 5px;
            border: 1px solid #f27370;
            background: #fff;
            color: #f27370;
            font-size: 16px;
        }

        .prd_btn_area button {
            float: left;
            height: 70px;
            font-size: 20px;
            color: #fff;
        }

        .prd_detail_box.renew .prd_btn_area button.btnZzim {
            width: 76px;
            margin-left: 10px;
        }

        .prd_detail_box.renew .prd_btn_area button.btnZzim {
            background-image: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim_new.png);
            background-size: 34px auto;
        }

        .prd_btn_area button.btnZzim {
            width: 81px;
            margin-left: 5px;
            border: 1px solid #ebebeb;
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/ico_zzim.png) no-repeat 50% 50%;
            text-indent: -9999px;
        }

        .prd_btn_area button {
            float: left;
            height: 70px;
            font-size: 20px;
            color: #fff;
        }
    </style>
    <!-- 리뷰 모달부분 -->
    <style>
        .tabConts.show {
            display: block;
        }

        .prd_detail_cont {
            padding: 40px 0 0;
        }

        .product_rating_area {
            margin-top: 20px;
            border-top: 2px solid #333;
        }

        .product_rating_area .inner {
            height: 231px;
            border-bottom: 1px solid #ddd;
        }

        .product_rating_area .grade_img {
            float: left;
            width: 170px;
            height: 231px;
            border-right: 1px solid #ddd;
        }

        .product_rating_area .grade_img .img_face {
            margin: 54px 0 0 0;
            font-size: 16px;
            color: #000;
            font-weight: 700;
            text-align: center;
        }

        .product_rating_area .grade_img .img_face > span.grade.grade5 {
            background-position: 0 0;
        }

        .product_rating_area .grade_img .img_face > span.grade {
            background: url(https://www.oliveyoung.co.kr/pc-static-root/image/product/face_grade_1.png) no-repeat 0 0;
        }

        .product_rating_area .grade_img .img_face > span.grade {
            display: block;
            width: 100px;
            height: 100px;
            margin: 0 auto;
            margin-bottom: 8px;
        }

        .product_rating_area .grade_img .img_face > em {
            display: block;
            text-align: center;
            font-style: normal;
        }

        .product_rating_area .star_area {
            float: left;
            width: 254px;
            padding: 43px 0 0 0;
        }

        .product_rating_area .star_area .total {
            margin-bottom: 30px;
            text-align: center;
            font-size: 16px;
            color: #000;
            font-weight: 700;
        }

        .product_rating_area .star_area .num {
            margin-bottom: 24px;
            line-height: 40px;
            color: #000;
            font-weight: 700;
            text-align: center;
        }

        .product_rating_area .star_area .num > strong {
            font-size: 40px;
        }

        .product_rating_area .star_area .num > strong + span {
            font-size: 24px;
            padding-left: 6px;
        }

        .product_rating_area .star_area .star_list {
            text-align: center;
        }

        .product_rating_area .star_area .star_list li:first-child {
            margin-left: 0;
        }

        .product_rating_area .star_area .star_list li {
            position: relative;
            display: inline-block;
            width: 26px;
            height: 25px;
            margin-left: 3px;
        }

        .product_rating_area .graph_area {
            float: left;
            width: 255px;
            height: 231px;
            padding-top: 38px;
            border-right: 1px solid #ddd;
        }

        .product_rating_area .graph_area .graph_list {
            text-align: center;
        }

        .product_rating_area .graph_area .graph_list li {
            position: relative;
            display: inline-block;
            width: 38px;
            padding: 27px 0 0 0;
            text-align: center;
        }

        .product_rating_area .write_info {
            float: left;
            width: 339px;
        }

        .renew .product_rating_area .write_info dl {
            padding-top: 85px;
        }

        .product_rating_area .write_info dl {
            padding: 58px 0 0 0;
        }

        .product_rating_area .write_info dt {
            margin-bottom: 13px;
            font-size: 20px;
            font-weight: 700;
            color: #000;
            text-align: center;
        }

        .alignCenter {
            text-align: center !important;
        }

        .product_rating_area .write_info .btnInquiry {
            height: 34px;
            padding: 0 18px 0 44px;
            font-size: 16px;
            background: #00c8b5 url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_write.png) no-repeat 20px 6px;
            line-height: 34px;
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
            font-family: Montserrat, -apple-system, NotoSansCJKkr, AppleSDGothicNeo, Roboto, sans-serif;
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

        user agent stylesheet
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

        .clrfix:after {
            content: '';
            display: block;
            clear: both;
        }
    </style>


    <style>
        .modal{

            display:none;
        }
    </style>

</head>
<body>

<%-- ${ prd_price.prpri_price } --%>
<div class="Wrapper">
<jsp:include page="layout/header.jsp"></jsp:include>
    <div id="Container">
        <div id="Contents">
            <!-- <div id="Wrapper"> -->
            <!-- 상단 카테고리 -->


            <div class="prd_detail_box renew">
                <div class="left_area">

                    <div class="prd_img">

                        <span class="thumb_flag best">베스트</span> <img id="mainImg"
                                                                      src="${img_Name.prm_url}"
                                                                      alt="상품명 이미지" onerror="common.errorImg(this);">
                        <input
                                type="hidden" id="mainImgSize" value="550">

                        <div class="prd-option-name">
                            <span class="txt" id="goodstxt">03. 얼모스트 핑크</span>
                        </div>
                    </div>


                    <ul class="prd_thumb_list" id="prd_thumb_list">


                        <!-- <input type="hidden" id="snsImgUrl"
                            value="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015231406ko.jpg?l=ko">
         -->
                        <li class="sel"><a href="javascript:;"
                                           data-img="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015231406ko.jpg?l=ko"><img
                                src="${img_Name.prm_url}"
                                alt="썸네일이미지" onerror="common.errorImg(this);"></a></li>

                    </ul>


                    <!-- 202005 상품개선 : 위치 변경 및 마크업 변경 -->
                    <!-- 고객 만족도 및 공유, 재고확인 -->
                    <div class="prd_social_info">
                        <!-- 평점 및 리뷰 건수 추가 -->
                        <p id="repReview">
                            <strong>고객 리뷰</strong> <span class="review_point"> <span
                                class="point" style="width: 0.0%"> </span>
					</span> <b> 0.0 </b> <em>(0건)</em>
                        </p>
                        <!-- 위치 변경 <p><a href="#" class="btn_off_store" data-rel="layer" data-target="offlineStore">올리브영 오프라인 매장 재고확인</a></p>-->
                        <p>
                            <!-- 							<strong>공유하기</strong> -->
                            <a href="javascript:common.sns.doShare('kakaostory');"
                               class="link_social kakao goods_share_kakao">카카오톡 공유하기(새창)</a> <a
                                href="javascript:common.sns.doShare('facebook');"
                                class="link_social facebook goods_share_facebook">페이스북
                            공유하기(새창)</a> <a href="javascript:common.sns.doShare('url');"
                                            class="link_social url goods_share_url">URL공유하기</a>
                        </p>
                    </div>
                    <!--// 고객 만족도 및 공유, 재고확인 -->

                </div>
                <div class="right_area">
                    <div class="prd_info">


                        <p class="prd_brand">

                            <a href="#" id="moveBrandShop" class="pd_arrow_link">${img_Name.br_name }</a>
                        </p>

                        <p class="prd_name">${ img_Name.pr_name }</p>


                        <!-- 202005 상품개선 : 추가 -->
                        <!-- 					<p class="prd-txt1">1회 최대 구매수량 5개 입니다.</p> -->

                        <div class="price">

					<span class="price-1"> <strike>${ prd_price.prpri_price }</strike> <span>원</span>



					</span> <span class="price-2"> <strong>${ prd_price.price }</strong> <span>원</span>
					</span>


                            <button type="button" id="btnSaleOpen" class="btn_more">혜택
                                정보
                            </button>
                            <div id="saleLayer" class="sale_list" style="display: none">
                                <p class="tit">혜택 정보</p>
                                <div class="detail">
                                    <div class="list">
                                        <div class="flex-item">
                                            <span class="label">판매가</span> <span class="price">20,000<em>원</em></span>
                                        </div>

                                        <div class="price_child">


                                            <div class="flex-item">
                                                <span class="label">세일 (22.07.01 ~ 22.08.31)</span> <span
                                                    class="price">- 4,000<em>원</em></span>
                                            </div>


                                            <div class="flex-item">


                                                <span class="label">15% 쿠폰 (22.07.05 ~ 22.07.05)</span> <span
                                                    class="price">- 2,400<em>원</em></span>
                                            </div>


                                        </div>
                                    </div>

                                    <div class="list">
                                        <div class="flex-item">
                                            <span class="label"><b>최적가</b></span> <span
                                                class="price total">13,600<em>원</em></span>
                                        </div>
                                    </div>
                                </div>
                                <button type="button" id="btnSaleClose" class="btn_close">레이어
                                    닫기
                                </button>
                            </div>
                        </div>
                        <p class="prd_flag">
                            <span class="icon_flag sale">세일</span> <span
                                class="icon_flag coupon">쿠폰</span>
                            <span class="icon_flag gift">증정</span> <span
                                class="icon_flag delivery">오늘드림</span>
                        </p>
                        <div class="viewArea" id="div_goodsViewNumArea" style="">
					<span><span class="viewNum" id="goodsViewNum">51</span>명이
						보고있어요</span>
                        </div>

                        <div class="prd_more_info">

                            <div class="row">
                                <p class="tit">
                                    배송정보<a href="javascript:goods.detail.openDlexFullPop('20','1');"
                                           class="ico_info" style="margin: 5px 0 0 7px">배송정보 레이어 열기</a>
                                </p>
                                <p></p>
                                <ul class="bl_list">
                                    <li><span>일반배송</span>
                                        <div>
                                            2,500원 ( 20,000 원 이상 무료배송 ) <br>
                                            <em>올리브영 배송 </em> <em>평균 3일 이내 배송</em>
                                        </div>
                                    </li>


                                    <li><span>오늘드림</span>
                                        <div>
                                            2,500원 또는 5,000원 <a
                                                href="javascript:goods.detail.todayDelivery.openQuickPopMidle('question');"
                                                class="ico_info">배송정보 안내 레이어열기</a>
                                        </div>
                                    </li>

                                    <!-- 202005 상품개선 : 오늘드림 빠름배송 -->
                                    <li class="liQuickAI" style="display: none;"><span
                                            class="tx_tit"> 오늘드림 빠름 배송 AI 예측 <!-- 202005 상품개선 : 자세히 보기 위치 변경 -->
									<a
                                            href="javascript:goods.detail.todayDelivery.openQuickDeliAI();"
                                            class="ico_infoMore">자세히 보기</a>
							</span>

                                        <p class="tx_addre">
                                            <span>┖ </span><span class="quickUsrAddr">서울특별시 도봉구
										도봉로112길</span> 기준
                                            <!-- 202005 상품개선 : tx_cont 위치 변경 -->
                                            <span class="tx_cont"> <span class="span_dlvTitlNm">1시간
											내</span> <span class="span_maxDeliPer">63%</span>
									</span>
                                        </p></li>

                                </ul>
                            </div>


                            <div class="row">
                                <p class="tit">결제혜택</p>
                                <div class="txt_list">

                                    <p>
                                        THE CJ 카드 추가 10%할인 <a
                                            href="javascript:goods.detail.openCardFullPop();"
                                            class="ico_info">카드혜택가 안내 레이어 열기</a>
                                    </p>


                                    <p>
                                        CJ ONE 포인트 <span class=""></span> 최대 2% 적립 예상 <a
                                            href="javascript:goods.detail.openCjonepntPop();"
                                            class="ico_info">CJ ONE 포인트 예상적립 레이어 열기</a>
                                    </p>


                                </div>
                            </div>


                        </div>


                        <div class="option_add_area">


                            <div class="prd_cnt_box">


                                <div class="tit_area">
                                    <span>구매수량</span>
                                </div>
                                <div class="cont_area">

                                    <!-- 바로구매 시 보낼 값들. -->
                                    <form id="order_hidden_value" method="get" action="<%=request.getContextPath()%>/olive/order.do">
                                        <input type="hidden" name="prImg" value="${img_Name.prm_url}"/> <!-- 이미지 -->
                                        <input type="hidden" name="brand" value="${img_Name.br_name }"/> <!-- 브랜드 -->
                                        <input type="hidden" name="product" value="${img_Name.pr_name}"/> <!-- 제품명 -->
                                        <input type="hidden" name="prPrice" value=""/> <!-- 1개 원가 -->
                                        <input type="hidden" name="prPriceCnt" value=""/> <!-- 수량 * 원가 -->
                                        <input type="hidden" name="realPrice" value="${ prd_price.price }"/>
                                        <!-- 1개 구매가 -->
                                        <input type="hidden" name="realPricehidden" value=""> <!-- 수량 * 구매가 -->
                                        <input type="hidden" name="prCount" value=""> <!-- 수량 -->
                                        <input type="hidden" name="priceCode" value=""><!-- 단가코드 -->
                                        <input type="hidden" name="saleCode" value=""><!-- 할인코드 -->
                                        <input type="hidden" name="prCode" value="${param.pr_code}">
                                    </form>

                                    <span class="option_cnt_box">
								<button class="btnCalc minus" id="minusbutton">수량1감소</button> 
									<input type="text" id="cartCnt_A000000152314001"
                                           name="cartCnt_A000000152314001" value="1" class="tx_num"
                                           title="구매수량"> <!-- 수량 --> <!-- id,name값이 상품코드랑 수량으로 날라가 ? -->
								<button class="btnCalc plus"
                                        onclick="plus();">수량
									1증가</button>
							</span>

                                </div>
                            </div>


                        </div>


                        <div class="prd_total_price">
                            <span class="tx_tit">상품금액 합계</span> <input type="hidden"
                                                                       id="totalCnt" value="1" name="totalCnt"> <input
                                type="hidden" id="totalPrc" value="13600" name="totalPrc">


                            <span class="tx_cont"><span class="tx_num" id="totalPrcTxt">${prd_price.price}</span>원</span>

                        </div>


                        <div class="today_dv">

                            <div class="prd_btn_area">
                                <button class="btnBasket  goods_cart"
                                        onclick="cartAjax()">장바구니
                                </button>
                                <!-- <button class="btnBuy goods_buy" id="cartBtn" onClick="javascript:goods.detail.bindBtnBuy();">구매하기</button> -->

                                <button class="btnBuy goods_buy" id="cartBtn"
                                        data-attr="상품상세^주문유형^바로구매">바로구매
                                </button>
                                <button class="btnSoldout dupItem goods_cart"
                                        style="display: none;" onclick="javascript:;">일시품절
                                </button>
                                <button class="goods_buy btnReStock" style="display: none;"
                                        onclick="javascript:;"
                                        data-attr="상품상세^재입고알림신청^[1+1]SNP UV 퍼펙트 에어쿨 선크림 더블 기획 (50ml+50ml)_클릭"
                                        data-trk="/Home_Planshop3">재입고 알림신청
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <jsp:include page="layout/footer.jsp"></jsp:include>

    <div class="modal">

        <div class="popup-contents" id="pop_cont" style="top:50%;width:650px;margin:-258px 0 0 -325px; display:none; z-index:999">
        </div>

        <div class="layer_pop_wrap w490" type="hidden" id="basketOption" style="z-index: 999; display: block; left: 50%; margin-left: -245px; top: 200px; " data-quick-yn="N">
            <div class="popup-contents" style="top:50%;width:534px;margin:-365px 0 0 -268px;">

                <div class="pop-conts">
                    <h1 class="ptit">선택완료</h1>
                    <!-- style="height:0;" -->
                    <div class="popCont contPd01" >
                        <p class="txt_onbag">
                        <p class="txt_onbag">장바구니에 추가되었습니다.</p>
                        </p>
                    </div><!-- popCont -->

                    <div class="area2sButton pdTz">
                        <button class="btnlG01 pdzero w130" onclick="fnLayerSet('basketOption', 'close');common.wlog('goods_cart_curation_popup_continue');"><span>쇼핑계속하기</span></button>
                        <button class="btnG01 pdzero w130" onclick="location.href='cart.do'"><span>장바구니 확인</span></button>
                    </div>
                    <button type="button" class="ButtonClose" onclick="fnLayerSet('basketOption', 'close');common.wlog('goods_cart_curation_popup_close');">팝업창 닫기</button>
                </div>
            </div>
        </div>


    </div>


</div>


<script> /* 원가 세일가 뿌리는 스크립트 */
var sale_price = ${ prd_price.price };
$(".price-2 strong").text(sale_price);
var price = ${ prd_price.prpri_price };
$(".price-1 strike").text(price);
$("#totalPrcTxt").text(sale_price); /* 첫 토탈 가격 */

/* input 태그에 하나원가 , 하나 실구매가 세팅 */
var num = 1;

$("input[name=realPricehidden]").val(sale_price);
$("input[name=prPriceCnt]").val(price);
//alert(sale_price.toLocaleString());
$("input[name=prCount]").val( num);
$("input[name=prPrice]").val(price);

var sale_code1 = '${prd_price.prpri_code}';
var price_code1 = '${prd_price.sale_code}';
$("input[name=priceCode]").val(price_code1);
$("input[name=saleCode]").val(sale_code1);

function plus() {
    //alert("+클릭");
    //id =  cartCnt_A000000152314001 의 value의값 증가
    num = Number($("#cartCnt_A000000152314001").val());
    num = num + 1;
    sale_price = Number('${prd_price.price}');
    price = Number('${prd_price.prpri_price}')
    document.getElementById("cartCnt_A000000152314001").setAttribute("value", num);
    /* +버튼 클릭시 총 구매 가격 */
    $("#totalPrcTxt").text(sale_price * num);

    /* 바로구매시 총구매가 넘겨줄 input태그의 value값 셋해주는 부분. */
    var realPrice = sale_price * num
    $("input[name=realPricehidden]").val(realPrice);
    //alert(realPrice); 성공
    /* 총구매량 원가 */
    var prPriceCnt = price * num;
    $("input[name=prPriceCnt]").val(prPriceCnt);
    //alert(prPriceCnt);
}

$('#minusbutton').on("click", function () {
    num = Number($("#cartCnt_A000000152314001").val());
    num = num - 1;
    if (num <= 0) {
        alert('1개 이상부터 구매할 수 있는 상품입니다.')
        num = 1;
    } else {
        $("#cartCnt_A000000152314001").val(num);
        $("#totalPrcTxt").text(sale_price * num);

        /* 바로구매시 총구매가 넘겨줄 input태그의 value값 셋해주는 부분. */
        var realPrice = (sale_price * num);
        $("input[name=realPricehidden]").val(realPrice);
        //alert(realPrice);
        /*  총구매량 원가  */
        var prPriceCnt = (price * num).toLocaleString();
        $("input[name=prPriceCnt]").val(prPriceCnt);
        //alert(prPriceCnt);
    }
});

</script>
<script> /* 바로구매 버튼을 클릭하면 히든된 input값들을 담은 form태그 서브밋 하는 곳. */

$("#cartBtn").on("click", function () {
    $("#order_hidden_value").submit();
});
</script>
<script>
    function cartAjax(){

        var pr_code="";
        var numberOfProduct="";

        pr_code = '${param.pr_code}';
        alert(pr_code)
        numberOfProduct = $("#cartCnt_A000000152314001").val();

        var cartData = { "pr_code":pr_code,"numberOfProduct":numberOfProduct };

        $.ajax({
            url:"/olive/cartAjax.do",
            type:"GET",
            data:cartData,
            cache:false,
            success:function(data){
                $(".modal").fadeIn();  /*모달창 보이게 하기*/
            },
            error:function (){
                alert("에러~~");
            }
        });

    }; // ready
</script>

<script>
    /* x 누르면 모달창 닫기 */
    $(function () {
        $(".ButtonClose").click(function () {
            $(".modal").fadeOut();
        })
    });
    $(function () {
        $(".btnlG01").click(function () {
            $(".modal").fadeOut();
        })
    });

</script>

</body>
</html>