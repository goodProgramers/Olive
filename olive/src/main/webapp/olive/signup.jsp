<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 7. 7. - 오후 5:51:53</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/module.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
@font-face {
	font-family: Montserrat;
	font-style: normal;
	font-weight: 400;
	src: local(Montserrat-Light),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Light.woff2")
		format("woff2"),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Light.woff")
		format("woff")
}

@font-face {
	font-family: Montserrat;
	font-style: normal;
	font-weight: 500;
	src: local(Montserrat),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Regular.woff2")
		format("woff2"),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Regular.woff")
		format("woff")
}

@font-face {
	font-family: Montserrat;
	font-style: normal;
	font-weight: 700;
	src: local(Montserrat-SemiBold),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-SemiBold.woff2")
		format("woff2"),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-SemiBold.woff")
		format("woff")
}

@font-face {
	font-family: NotoSansCJKkr;
	font-style: normal;
	font-weight: 400;
	src: local(NotoSansCJKkr),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff2")
		format("woff2"),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff")
		format("woff")
}

@font-face {
	font-family: NotoSansCJKkr;
	font-style: normal;
	font-weight: 500;
	src: local(NotoSansCJKkr),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Medium.woff2")
		format("woff2"),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Medium.woff")
		format("woff")
}

@font-face {
	font-family: NotoSansCJKkr;
	font-style: normal;
	font-weight: 700;
	src: local(NotoSansCJKkr),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Bold.woff2")
		format("woff2"),
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Bold.woff")
		format("woff")
}

@font-face {
	font-family: Dovemayo-Medium;
	src:
		url("https://www.oliveyoung.co.kr/pc-static-root/fonts/dovemayo/Dovemayo-Medium.woff")
		format('woff');
	font-weight: 400;
	font-style: normal
}

table {
	display: table;
	border-collapse: separate;
	box-sizing: border-box;
	text-indent: initial;
	border-spacing: 2px;
	border-color: grey;
}

body, input, textarea, select, button, table {
	color: #555;
	font-size: 14px;
	font-family: Arial, nbgr, '나눔바른고딕', '돋음';
	*font-family: nbgr;
	line-height: 24px;
}

body {
	margin: 0;
	padding: 0;
	color: #555;
	font-size: 14px;
	line-height: 24px;
	-webkit-text-size-adjust: none;
}

div {
	display: block;
}

button {
	display: inline-block;
	padding: 0;
	border: 0 none;
	background: transparent;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	overflow: visible;
	white-space: nowrap;
}

#contents .cont_header {
	padding-top: 75px;
	text-align: center;
}

.h1_tit, .h2_tit, .h3_tit, .h4_tit, .h5_tit {
	margin: 0;
	color: #222;
	font-weight: normal;
}

.h1_tit {
	font-size: 48px;
	font-family: 'cj_onlyone_new_medium';
	*font-family: 'cj_onlyone_new_medium';
	line-height: 48px;
	*line-height: 1.5;
}

h1, h2, h3, h4, h5, h6 {
	font-weight: normal;
}

h1, h2, h3, h4, p {
	margin: 0;
	padding: 0;
}

h1 {
	display: block;
	font-size: 2em;
	margin-block-start: 0.67em;
	margin-block-end: 0.67em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

#contents .cont_header .h_desc {
	padding-top: 30px;
	color: #555;
	font-size: 16px;
}

h1, h2, h3, h4, p {
	margin: 0;
	padding: 0;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

#contents .cont_area {
	padding-top: 60px;
}

.member_join {
	margin-top: -10px;
}

.member_data {
	margin-top: 60px;
}

form {
	display: block;
	margin-top: 0em;
}

input {
	writing-mode: horizontal-tb !important;
	font-style:;
	font-variant-ligatures:;
	font-variant-caps:;
	font-variant-numeric:;
	font-variant-east-asian:;
	font-weight:;
	font-stretch:;
	font-size:;
	font-family:;
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
	border-color: -internal-light-dark(rgb(118, 118, 118),
		rgb(133, 133, 133));
	border-image: initial;
}

input {
	vertical-align: middle;
}

input[type="hidden" i] {
	appearance: none;
	background-color: initial;
	cursor: default;
	display: none !important;
	padding: initial;
	border: initial;
}

.table_header {
	position: relative;
	padding-bottom: 20px;
}

.h3_tit {
	font-size: 22px;
}

.table_header .info {
	position: absolute;
	bottom: 20px;
	right: 0;
}

.msg_mandatory {
	padding-left: 20px;
}

.table_header .msg_mandatory {
	background-position: 0 6px;
	font-size: 12px;
}

.haze {
	position: absolute;
	top: -99999px;
}

.table_col {
	border-top: 1px solid #222;
}

.table_row table, .table_col table, .board_list table {
	width: 100%;
	border: 0 none;
	border-collapse: collapse;
}

caption {
	display: table-caption;
	text-align: -webkit-center;
}

caption, legend {
	font-size: 0;
	line-height: 0;
	text-indent: -9999px;
}

colgroup {
	display: table-column-group;
}

col {
	display: table-column;
}

.member_info col.title {
	width: 23%;
}

.member_info col.body {
	width: 77%;
}

tbody {
	display: table-row-group;
	vertical-align: middle;
	border-color: inherit;
}

tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
}

th {
	display: table-cell;
	vertical-align: inherit;
	font-weight: bold;
	text-align: -internal-center;
}

table th {
	color: #222;
	font-weight: normal;
}

.table_row th, .table_row td, .table_col th, .table_col td, .board_list th,
	.board_list td {
	vertical-align: top;
}

.table_col th, .table_col td {
	padding: 23px 20px 21px 20px;
	border-bottom: 1px solid #ddd;
}

.table_col th {
	padding-left: 40px;
	background-color: #f8f8f8;
	color: #222;
	vertical-align: middle;
}

.table_row .input th, .table_col .input th {
	padding-top: 22px;
}

.table_col td {
	background-color: #fff;
}

.table_row .input td, .table_col .input td {
	padding-top: 15px;
	padding-bottom: 15px;
}

.member_info .table_col td {
	padding: 15px 20px;
}

label {
	cursor: default;
}

label {
	vertical-align: middle;
}

.input_txt {
	display: inline-block;
	height: 34px;
	padding-right: 32px;
	vertical-align: middle;
	zoom: 1;
}

.member_info .input_txt {
	padding-right: 3px;
}

input[type='text'], input[type='password'], input[type='text'], input[type='tel']
	{
	-webkit-border-radius: 0;
	-webkit-appearance: none;
}

.input_txt input {
	display: block;
	width: 100%;
	height: 32px;
	padding: 0 15px;
	border: 1px solid #ddd;
	color: #888;
	font-size: 14px;
	line-height: 32px;
}

.member_info .member_name {
	padding-left: 0;
	border: 0 none;
	color: #222;
}

.member_info .input_txt input {
	vertical-align: top;
}

.member_info .input_txt input {
	width: 218px;
}

.btn {
	display: inline-block;
	min-width: 128px;
	height: 38px;
	margin: 0 3px;
	*margin: 0 5px;
	padding: 0 15px;
	border: 1px solid #333;
	border-radius: 3px;
	background-color: #fff;
	color: #333;
	text-align: center;
	line-height: 38px;
	vertical-align: middle;
	cursor: pointer;
	transition: border .5s, background .5s, color .5s;
}

button.btn {
	min-width: 160px;
	height: 40px;
	*line-height: 36px;
}

.btn.btn_search {
	min-width: 48px;
	height: 32px;
	background-color: #333;
	color: #fff;
	line-height: 32px;
}

button.btn.btn_search {
	min-width: 78px;
	height: 34px;
	line-height: 30px;
}

.select_wrap {
	display: inline-block;
	position: relative;
	border: 1px solid #ddd;
	background: #fff;
	zoom: 1;
	z-index: 100;
	vertical-align: middle;
	word-break: break-all;
	*display: inline;
}

.birthday_select .select_wrap.w120 {
	width: 88px;
}

.select_wrap.w120 {
	width: 108px;
}

.select_wrap .item_seleced {
	padding: 0 10px;
}

a:-webkit-any-link {
	color: -webkit-link;
	cursor: pointer;
	text-decoration: underline;
}

a {
	text-decoration: none;
	color: #555;
}

.select_wrap a {
	display: block;
	color: #555;
	font-size: 14px;
}

.select_wrap .item_seleced a {
	height: 32px;
	padding-right: 20px;
	line-height: 32px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	word-wrap: normal;
}

.birthday_select .symbol {
	display: inline-block;
	padding: 0 18px 0 4px;
	line-height: 34px;
}

.select_wrap a span {
	display: block;
}

.select_wrap .item_list_wrap {
	display: none;
	position: absolute;
	top: 32px;
	right: -1px;
	left: -1px;
	background-color: #fff;
	overflow: hidden;
}

.select_wrap .item_list_wrap .item_list {
	max-height: 150px;
	border: 1px solid #ddd;
	overflow: hidden;
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

ul, ol, dl {
	margin: 0;
	padding: 0;
	list-style: none;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

dt, dd, li {
	margin: 0;
	padding: 0;
}

.select_wrap .item_list_wrap .item_list a {
	padding: 0 10px;
}

.select_wrap .item_list_wrap .scroll {
	position: absolute;
	top: 2px;
	right: 2px;
	bottom: 2px;
	width: 2px;
	background-color: #ddd;
	overflow: hidden;
}

.select_wrap .item_list_wrap .scroll .bg_top, .select_wrap .item_list_wrap .scroll .bg_mid,
	.select_wrap .item_list_wrap .scroll .bg_btm {
	position: relative;
	background-color: #888;
}

.select_wrap .item_list_wrap .scroll .bg {
	display: block;
	background-color: #888;
	cursor: pointer;
}

.btn_sec {
	margin-top: 40px;
	text-align: center;
}

dl {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

.box_gray {
	min-height: 1%;
	padding: 30px;
	background-color: #f8f8f8;
	overflow: hidden;
}

.box_gray.box_btm {
	margin-top: 60px;
}

.box_info dt {
	color: #222;
	font-size: 18px;
}

dd {
	display: block;
	margin-inline-start: 40px;
}

.box_info dd {
	padding: 12px 0 0 0;
}

.box_info .bul_list {
	padding-left: 5px;
}

.bul_list .dot_arr {
	display: block;
	margin-bottom: 6px;
	padding-left: 10px;
	color: #555;
	line-height: 1.5;
}

.btn.btn_em {
	background-color: #333;
	color: #fff;
}

select {
	writing-mode: horizontal-tb !important;
	font-style:;
	font-variant-ligatures:;
	font-variant-caps:;
	font-variant-numeric:;
	font-variant-east-asian:;
	font-weight:;
	font-stretch:;
	font-size:;
	font-family:;
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
	box-sizing: border-box;
	align-items: center;
	white-space: pre;
	-webkit-rtl-ordering: logical;
	background-color: field;
	cursor: default;
	margin: 0em;
	border-width: 1px;
	border-style: solid;
	border-color: -internal-light-dark(rgb(118, 118, 118),
		rgb(133, 133, 133));
	border-image: initial;
	border-radius: 0px;
}

select:not(:-internal-list-box) {
	overflow: visible !important;
}

option {
	font-weight: normal;
	display: block;
	white-space: nowrap;
	min-height: 1.2em;
	padding: 0px 2px 1px;
}

.hide {
	display: none;
}

select {
    border: 1px solid #ddd;
    height: 32px;
	margin: 0;
	-webkit-border-radius: 0;
	font-family: 'nbgr';
}

.birthday_select option {
	padding: 0 10px;
	display: inline-block;
	border: 1px solid #ddd;
	background: #fff;
	zoom: 1;
	z-index: 100;
	vertical-align: middle;
	word-break: break-all;
	display: inline;
}

.member_info .msg_info {
	padding-top: 7px;
	color: #ee6900;
	font-size: 12px;
	line-height: 20px;
}

.address input{
   border : 1px solid #ddd;
   height: 30px;
}
.radio_group{
   vertical-align: middle;	
}

.radio_group input{
   margin: 0 10px 0 10px;
}

</style>


</head>
<body>

<jsp:include page="layout/header.jsp"></jsp:include>

	<div id="contentsWrap">
		<div id="contents">
			<div class="location_wrap">

				<div class="location">
					<a href="https://www.cjone.com/cjmweb/main.do" class="home"><span
						class="haze">홈</span></a><a
						href="https://www.cjone.com/cjmweb/join.do" class="now hide"><span>회원가입</span></a>
				</div>


			</div>
			<div class="cont_header">
				<h1 class="h1_tit">회원가입</h1>
				<p class="h_desc">라이프스타일 멤버십 CJ ONE! 외식, 쇼핑, 엔터테인먼트 서비스를 한 장의
					카드로 즐기세요~</p>
			</div>

			<div class="cont_area">
				<div class="member_join uni">
					<!--step-->
					<div class="member_data">
						<h2 class="haze">회원정보 입력</h2>
						<!-- <p class="msg_emph">
							CJ ONE 회원가입을 위해 <em>회원정보를 입력</em>해주세요.
						</p> -->

						<div class="member_info">
							<form id="form1" method="post" action="">
								<input type="hidden" id="coopco_cd" name="coopco_cd"
									value="7030"> <input type="hidden" id="brnd_cd"
									name="brnd_cd" value="3000">


								<div class="table_header">
									<h3 class="h3_tit">기본정보</h3>
								</div>
								<div class="table_col">
									<table>
										<caption>회원기본정보 입력 표로 회원정보 이름, 아이디, 비밀번호, 비밀번호 확인,
											생년월일, 휴대전화, 이메일을 나타냅니다.</caption>
										<colgroup>
											<col class="title">
											<col class="body">
										</colgroup>
										<tbody>
											<tr class="input">
												<th scope="row" class="mandatory"><label
													for="input_member_name"><span class="haze">"필수"</span>
														이름</label></th>
												<td><span class="input_txt"><input type="text"
														value="" class="text readonly member_name"
														id="input_member_name" name="input_member_name" placeholder="이름을 입력해주세요."></span>
													<!-- 에러시 .error 클래스 추가 --></td>
											</tr>
											<tr class="input">
												<th scope="row" class="mandatory"><label for="mbr_id"><span
														class="haze">"필수"</span> 아이디</label></th>
												<td>
													<div class="input_group">
														<span class="input_txt w250"><input type="text"
															class="text" title="사용 할 영문 아이디 명 입력"
															placeholder="아이디를 입력해주세요." name="mbr_id" id="mbr_id"
															maxlength="12" value=""> <!-- 에러시 .error 클래스 추가 --></span>

														<button type="button" class="btn btn_search"
															onclick="idCheck();">중복확인</button>
														<p class="msg_info em hide" id="alert_mbr_id"></p>
													</div>
													<p class="msg_desc">
														CGV,CJ온스타일 등 기존의 CJ ONE 제휴 브랜드 회원님의 경우는 기존에 사용하고 계신 아이디가
														새롭게 생성하신 <br>통합 아이디로 변경됩니다.
													</p>
												</td>
											</tr>
											<tr class="input">
												<th scope="row" class="mandatory"><label for="pwd"><span
														class="haze">"필수"</span> 비밀번호</label></th>
												<td>
													<div class="input_group">
														<span class="input_txt w250"><input type="password"
															class="text" placeholder="비밀번호를 입력해주세요." name="pwd"
															id="pwd" maxlength="50"></span> <span class="pwd_lv"
															id="alert_pwd_strength">강도 : 매우 약함</span>
														<p class="msg_info em hide" id="msg_pwd">비밀번호는 영문자,
															숫자, 특수문자 모두 최소 1가지 이상 조합한 8~12자리이어야 합니다.</p>
													</div>
													<p class="msg_desc">
														영문자, 숫자,특수문자 조합하여 8~12자리, 아이디와 4자리이상 동일,반복 문자숫자 불가<br>사용
														가능 특수 문자 : !"#$%&amp;'()*+,-./:;&lt;=&gt;?@[]^_`{|}~
													</p> <!-- 사용 가능 특수문자 -->
												</td>
											</tr>
											<tr class="input">
												<th scope="row" class="mandatory"><label
													for="pwd_check"><span class="haze">"필수"</span> 비밀번호
														확인</label></th>
												<td>
													<div class="input_group">
														<span class="input_txt"><input type="password"
															class="text" placeholder="비밀번호를 재입력해주세요."
															name="pwd_check" id="pwd_check" maxlength="50"></span>
														<p class="msg_info em" id="msg_pwd_check">비밀번호와 비밀번호
															확인이 일치하지 않습니다.</p>
													</div>
												</td>
											</tr>
											<tr class="input">
											    <th scope="row" class="mandatory"><label
													for="pwd_check"><span class="haze">"필수"</span>성별</label></th>
											    <td>
											        <div class="input_group">
														<span class="radio_group">
														   <input type="radio" name="genderchk" value="0" checked="checked">상관없음
														   <input type="radio" name="genderchk" value="1">남
														   <input type="radio" name="genderchk" value="2">여
														</span>
													</div>
											    </td>
											</tr>
											<tr class="input">
												<th scope="row" class="mandatory"><label for="address">
														<span class="haze">"필수"</span> 주소
												</label></th>
												<td>
													<div class="address">
														<span class="select addr" data-skin="form"> <input
															type="text" id="sample4_postcode" name="sample4_postcode" placeholder="우편번호">
															<input type="button" onclick="sample4_execDaumPostcode()"
															value="우편번호 찾기"><br> <input type="text"
															id="sample4_roadAddress" name="sample4_roadAddress" placeholder="도로명주소"> <input
															type="text" id="sample4_jibunAddress" placeholder="지번주소">
															<span id="guide" style="color: #999; display: none"></span>
															<input type="text" id="sample4_detailAddress" name="sample4_detailAddress"
															placeholder="상세주소"> <input type="text"
															id="sample4_extraAddress" placeholder="참고항목">
														</span>
													</div>
												</td>
											</tr>

											<tr class="input">
												<th scope="row" class="mandatory"><label for="birth_yy">
														<span class="haze">"필수"</span> 생년월일
												</label></th>
												<td>
													<div class="birthday_select">
														<span class="select w120" data-skin="form"> <select
															title="생년월일 중 년 선택" id="birth_yy" name="birth_yy">
																<c:forEach var="birth_yy" begin="1900" end="2022"
																	step="1">
																	<option value="${ 3922 - birth_yy }">${ 3922 - birth_yy }</option>
																</c:forEach>
														</select>
														</span> <span class="symbol">년</span> <span class="select w70"
															data-skin="form"> <select title="생년월일 중 월 선택"
															class="narrow" id="birth_mm" name="birth_mm">
																<option value="01">01</option>
																<option value="02">02</option>
																<option value="03">03</option>
																<option value="04">04</option>
																<option value="05">05</option>
																<option value="06">06</option>
																<option value="07">07</option>
																<option value="08">08</option>
																<option value="09">09</option>
																<option value="10">10</option>
																<option value="11">11</option>
																<option value="12">12</option>
														</select>
														</span> <span class="symbol">월</span> <span class="select"
															data-skin="form"> <select title="생년월일 중 월 선택"
															class="narrow" id="birth_dd" name="birth_dd">
																<c:forEach var="birth_dd" begin="1" end="" step="1">
																	<option value="${ birth_dd }">${ birth_dd }</option>
																</c:forEach>
														</select>
														</span> <span class="symbol">일</span>
													</div>
													<p class="msg_desc">
														설정하신 생일을 기준으로 <em>15일 전</em> 생일쿠폰이 발행됩니다.
													</p>
												</td>
											</tr>
											<!-- 핸드폰 번호 -->
											<tr class="input">
												<th scope="row" class="mandatory"><label for="mob_no_1"><span
														class="haze">"필수"</span> 휴대전화번호</label></th>
												<td>
													<div class="phon_write">
														<span class="select w100" data-skin="form"> <select
															title="휴대전화 앞자리 선택" id="mob_no_1" name="mob_no_1">

																<option value="010" selected="selected">010</option>

																<option value="011">011</option>

																<option value="016">016</option>

																<option value="017">017</option>

																<option value="018">018</option>

																<option value="019">019</option>

																<option value="070">070</option>

																<option value="0130">0130</option>

																<option value="0303">0303</option>

																<option value="0502">0502</option>

																<option value="0504">0504</option>

																<option value="0505">0505</option>

																<option value="0506">0506</option>

														</select>
														</span> <span class="symbol">-</span> <span
															class="input_txt w100"> <input type="text"
															class="text narrow" title="휴대전화 중간자리 입력"
															data-format="num" id="mob_no_2" name="mob_no_2"
															maxlength="4" value="" autocomplete="off">
														</span> <span class="symbol">-</span> <span
															class="input_txt w100"> <input type="text"
															class="text narrow" title="휴대전화 끝자리 입력" data-format="num"
															id="mob_no_3" name="mob_no_3" maxlength="4" value=""
															autocomplete="off">
														</span>
														<p class="msg_info em hide" id="alert_mob_no"></p>
													</div>
													<p class="msg_desc">주문 및 배송, 쿠폰, 이벤트 정보 등을 제공 받으실 수
														있습니다.</p>
												</td>
											</tr>
											<!-- 이메일 -->
											<tr class="input">
												<th scope="row" class="mandatory"><label
													for="email_addr1"><span class="haze">"필수"</span>
														이메일</label></th>
												<td>
													<div class="email_write">
														<span class="input_txt w110" data-skin="form"> <input
															type="text" class="text small" title="이메일 아이디 입력"
															name="email_addr1" id="email_addr1" value=""
															placeholder="이메일 아이디" data-format="email"
															autocomplete="off">
														</span> <span class="symbol">@</span> <span
															class="input_txt w110"> <input type="text"
															class="text small" title="이메일 도메인 입력" name="email_addr2"
															id="email_addr2" value="" placeholder="이메일 도메인"
															data-format="email" autocomplete="off">
														</span> <span class="select w100" data-skin="form"> <select
															title="이메일 도메인 선택" name="email_addr_opt"
															id="email_addr_opt" data-control="emailSelector">

																<option value="0">직접입력</option>
																<option value="naver.com">naver.com</option>
																<option value="hanmail.net">hanmail.net</option>
																<option value="sist.co.kr">sist.co.kr</option>
																<option value="nate.com">nate.com</option>
																<option value="gmail.com">gmail.com</option>

														</select>
														</span>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>

								<div class="btn_sec">
									<button type="button" class="btn" onclick="goCancel();">취소</button>
									<button type="button" class="btn btn_em" onclick="goSubmit();">등록</button>
								</div>
								<div class="box_gray box_btm">
									<dl class="box_info">
										<dt>이용안내</dt>
										<dd>
											<ul class="bul_list">
												<li class="dot_arr">CJ ONE 회원가입 후에도 각 제휴 브랜드 웹사이트에서 통합
													아이디를 사용하여 로그인 하시려면, 각 브랜드 웹사이트의 이용약관에 대한 동의를 거친 후에 이용
													가능합니다.</li>
												<li class="dot_arr">개인정보 수집 및 활용 동의 (선택)에 거부한 회원님은 마케팅
													정보 수신을 받으실 수 없습니다.</li>
											</ul>
										</dd>
									</dl>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<jsp:include page="layout/footer.jsp"></jsp:include>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                // $("#sample4_postcode").val(data.zonecode)
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

	<script>
  
  /* 아이디 중복체크 */
  function idCheck(){ 
	  let userId = $("#mbr_id").val()
	  let failMsg = "6~12자리의 영문 소문자 또는 영문 소문자+숫자 아이디를 입력해 주세요.";
	  
	  if( userId == "" || userId.length > $("#mbr_id").attr("maxlength") ){
		  alert(failMsg);
		  $("#alert_mbr_id").html(failMsg)
		                    .css("display","block")
		                    .css("color","#ee6900");
		  return ;
	  } else{
		  $.ajax({
			url: "idcheck.do",
			type: "post",
		    data: {userId: userId},
		    cache: false,
		    success: function(result){
		    	if( result == 1 ){
		    	  $("#alert_mbr_id").html("사용할 수 없는 아이디 입니다.")
		  		                    .css("display","block")
		  		                    .css("color","#ee6900");
		    	}else{
		    	  $("#alert_mbr_id").html("사용할 수 있는 아이디 입니다.")
			                        .css("display","block")
			                        .css("color","green");			      
		    	}
		    	
		    }
		  })
		  
	  } // else
	   
  } // idCheck()
  
  
  /* 비밀번호 암호 강도 체크 */
  $("#pwd, #pwd_check").on("keyup",function(){

        if($('#pwd').val() == '' && $('#pwd_check').val() == '')
        {
            $('#alert_pwd_strength').html('강도 : 매우 약함');

            return false;
        }

     if($('#pwd').val() != '' && $('#pwd_check').val() != '' && $('#pwd').val() == $('#pwd_check').val() ){
            $('#msg_pwd_check').html('비밀번호가 일치합니다.')
                               .css("color","green");
            return false;
        } else if($('#pwd').val() != '' && $('#pwd_check').val() != '' && $('#pwd').val() != $('#pwd_check').val() ){
        	$('#msg_pwd_check').html('비밀번호와 비밀번호 확인이 일치하지 않습니다.')
        	                   .css("color","#ee6900");
        	return false;
        }

        
    });
  
  $("#pwd").on("keyup",function(){
	// Must have capital letter, numbers and lowercase letters
      var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");

      // Must have either capitals and lowercase letters or lowercase and numbers
      var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");

      // Must be at least 6 characters long
      var okRegex = new RegExp("(?=.{6,}).*", "g");

      if ( !okRegex.test($("#pwd").val())) {
          $('#alert_pwd_strength').html('강도 : 도성한(약함)');
      } else if (mediumRegex.test($("#pwd").val())) {
          $('#alert_pwd_strength').html('강도 : 민윤기(강함)');
      } else if (strongRegex.test($("#pwd").val())) {
          $('#alert_pwd_strength').html('강도 : 왜 안나와(매우 강함)');
      } else {
          $('#alert_pwd_strength').html('강도 : 매우 약함');
      }

      return true;
  });
  
  
  /* 이메일 선택 (직접입력, 네이버, 다음..등등) */
  $("#email_addr_opt").on("change",function(){
	  if( $(this).val() != 0 ){
		  $("#email_addr2").val( $(this).val() );
		  $("#email_addr2").attr("readonly","readonly");
	  }else{
		  $("#email_addr2").val("");
		  $("#email_addr2").removeAttr("readonly");
	  }
  })
  
  // 월을 선택했을때 해당 달의 마지막날까지 보여지는 함수
  $("#birth_mm").on("change",function(){
	  
	  var year = parseInt( $("#birth_yy option:selected").val() );
	  var month = parseInt( $("#birth_mm option:selected").val() );
	  
	  var lastDate = new Date( new Date(year, month, 0)).getDate(); // 해당 달의 마지막 일 반환
	  var html = "";
	  for (var i = 1; i <= lastDate; i++) {
		  html += "<option value="+i+">"+i+"</option>";
	  }
    	  $("#birth_dd").html(html);
  })
  
   
  // 등록 버튼 눌렀을 때 
  function goSubmit(){
	  /* 
	  alert($("#input_member_name").val()); // 이름
	  alert($("#mbr_id").val()); // 아이디
	  alert($("#alert_mbr_id").css("color") != "#ee6900" ); // 사용할 수 있을때 true
	  alert($("#pwd").val()); // 비밀번호
	  alert($("#birth_yy option:selected").val()); // 선택된 년도 값
	  alert($("#birth_mm option:selected").val()); // 선택된 월 값
	  alert($("#birth_dd").val()); // 선택된 일 값
	   */
	  var nameRegex = new RegExp("[가-힣]{2,6}","g");
	  if( !nameRegex.test($("#input_member_name").val()) || !($("#input_member_name").val().length < 7) ){ // 이름 확인
		  alert("이름은 2~6글자 한글로 입력되어야합니다.");
		  return;
	  }	
	  
	  if( $("#alert_mbr_id").css("color") != "rgb(0, 128, 0)" ){ // 경고 색깔과 동일하면 경고(아이디 확인)
		  alert("아이디를 확인해주세요.");
	      return;
	  }
	  
	  if( $("#msg_pwd_check").css("color") != "rgb(0, 128, 0)" ){ // 경고 색깔과 동일하면 경고(비밀번호 확인)
		  alert("비밀번호를 확인해주세요.");
	      return;
	  }
	  
	  
	  if( $(".radio_group input:checked").length < 1
			  || $("#sample4_roadAddress").val() == ""
			  || $("#sample4_detailAddress").val() == ""
			  || $("#birth_yy option").prop("selected")
			  || $("#birth_mm option").prop("selected") 
			  || $("#birth_dd option").prop("selected")
			  || $("#mob_no_2").val() == ""	
			  || $("#mob_no_3").val() == ""
			  || $("#email_addr1").val() == ""
			  || $("#email_addr2").val() == "" ){
				  alert("입력하지 않은 사항이 있습니다");
				  return;
			  }
	  
	  
	  
	  var form = $("#form1");
	  
	  form.attr("action","signup.do");
	  form.attr("method","post");
	  form.submit();
	  
	  
	  
	  
  } // goSubmit()
  
  /* 회원가입 취소 버튼 함수 */
  function goCancel(){
	  if( confirm("회원가입을 취소하시겠습니까?") == true){
		  location.href = "main.do"; // 회원가입 취소 알림창 -> 확인 선택 -> 메인페이지로 이동
	  }else{
		  return false; // 회원가입 취소 알림창 -> 취소 선택 -> 현재 페이지 유지
	  }
  }
  
  

</script>



</body>
</html>