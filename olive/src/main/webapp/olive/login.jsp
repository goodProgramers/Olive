<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 7. 4. - 오후 9:33:15</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/module.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
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

body, html {
	word-spacing: -1px;
	color: #666;
	font-size: 14px;
	line-height: 20px;
	font-family: Montserrat, -apple-system, NotoSansCJKkr, AppleSDGothicNeo,
		Roboto, dotum, '돋움', sans-serif;
	letter-spacing: -.04em;
	-moz-osx-font-smoothing: grayscale;
	-webkit-font-smoothing: antialiased;
}

div {
	display: block;
}

p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

a, address, blockquote, body, dd, div, dl, dt, em, fieldset, form, h1,
	h2, h3, h4, h5, h6, img, input, label, li, ol, p, pre, select, span,
	strong, textarea, ul {
	margin: 0;
	padding: 0;
	border: 0;
}

h2 {
	display: block;
	font-size: 1.5em;
	margin-block-start: 0.83em;
	margin-block-end: 0.83em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

ol, ul {
	list-style: none;
}

button, img, input, select, textarea {
	border: 0;
	vertical-align: top;
	color: #666;
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

#Container, #Footer, #Header, #Wrapper {
/* 	width: 100%; */
	min-width: 1020px;
}

#Container {
	overflow: hidden;
}

#Container.bgf6 {
	background-color: #f6f6f6;
}

#Contents {
	width: 1020px;
	height: 100%;
	margin: 0 auto;
}

.ir {
	overflow: hidden;
	display: block;
	position: absolute;
	width: 0;
	height: 0;
	font-size: 0;
	line-height: 0;
	color: transparent;
	text-indent: -99999px;
}

form {
	display: block;
	margin-top: 0em;
}

.loginArea.new.login {
	padding: 92px 0 145px 0;
}

.loginArea.new {
	width: 850px;
	padding-bottom: 51px;
	margin: 0 auto;
	margin-top: 40px;
	margin-bottom: 40px;
	border-top: 0;
	background-color: #fff;
}

.loginArea .loginTit {
	width: 400px;
	margin: 0 auto;
	padding-top: 60px;
	text-align: center;
}

.loginArea.new .loginTit {
	width: 510px;
	margin: 0 auto;
	padding-top: 44px;
	text-align: center;
}

.loginArea .loginTit h2 {
	font-size: 30px;
	line-height: 40px;
	color: #000;
}

.loginArea .loginTit p {
	margin-top: 10px;
	font-size: 18px;
	line-height: 20px;
	color: #888;
}

.loginArea.new .loginTit p {
	margin-top: 6px;
	font-size: 18px;
	line-height: 20px;
	color: #888;
}

input:disabled, input:read-only, select:disabled {
	background-color: #f8f8f8;
	color: #888;
}

.loginArea .loginForm {
	width: 400px;
	margin: 0 auto;
}

.loginArea.new .loginForm {
	width: 510px;
	margin: 0 auto;
}

.loginArea .loginForm>ul {
	margin-top: 30px;
}

.loginArea.new .loginForm>ul {
	margin-top: 18px;
}

.loginArea .loginForm>ul>li {
	overflow: hidden;
	margin-top: 10px;
}

.loginArea .loginForm>ul>li:first-child {
	margin-top: 0;
}

.loginArea.new .loginForm>ul>li {
	overflow: hidden;
	margin-top: 0;
}

.loginArea .loginForm>ul>li label {
	position: absolute;
	top: 15px;
	left: 10px;
}

input[type=password], input[type=tel], input[type=text] {
	padding: 0 10px;
	background-color: #fff;
	font-size: 14px;
	line-height: 20px;
	color: #888;
}

.loginArea .loginForm>ul>li input {
	padding: 14px 10px;
	width: 400px;
	height: 50px;
	vertical-align: middle;
}

.loginArea.new .loginForm>ul>li input {
	padding: 0 20px;
	width: 510px;
	height: 60px;
	line-height: 60px;
	vertical-align: middle;
	border-radius: 0 0 5px 5px;
}

.loginArea.new .loginForm>ul>li:first-child input {
	border-bottom: 0;
	border-radius: 5px 5px 0 0;
}

.loginArea .loginForm .linkChk {
	overflow: hidden;
	margin-top: 20px;
}

.loginArea .loginForm .linkChk .save {
	float: left;
	width: 200px;
	height: 20px;
}

button, input[type=submit] {
    font-family: Montserrat,-apple-system,NotoSansCJKkr,AppleSDGothicNeo,Roboto,sans-serif;
    font-weight: 700;
}

button, input[type=submit] {
    border: 0;
    padding: 0;
    box-shadow: none;
    cursor: pointer;
}

input[type=checkbox], input[type=radio] {
	width: 20px;
	height: 20px;
	border: 0 !important;
	padding: 0;
	font-size: 0;
	line-height: 0;
	margin-right: 8px;
	vertical-align: top;
	cursor: pointer;
	appearance: none;
	-webkit-appearance: none;
}

input[type=checkbox]:checked:read-only {
	background:
		url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png)
		no-repeat 0 -20px;
}

input[type=checkbox]:disabled, input[type=checkbox]:read-only {
	background:
		url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png)
		no-repeat -20px -20px;
}

input[type=checkbox]:checked {
	background:
		url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png)
		no-repeat -20px 0;
}

input[type=checkbox] {
	background:
		url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/icon_chk_radio.png)
		no-repeat 0 0;
}

input[type=checkbox]:checked+label {
	color: #333;
}

input:disabled, input:read-only, select:disabled {
	background-color: #f8f8f8;
	color: #888;
}

a {
	color: #666;
	text-decoration: none;
}

.loginArea .loginForm .linkChk .link {
	float: right;
	width: 200px;
	text-align: right;
}

.loginArea .loginForm .linkChk .link a {
	display: inline-block;
	margin-left: 10px;
	padding-left: 10px;
	background:
		url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/bar_1x14.png)
		no-repeat 0 50%;
	font-size: 14px;
	line-height: 20px;
	color: #999;
	vertical-align: top;
}

.loginArea .loginForm .linkChk .link a:first-child {
	background: 0 0;
	margin: 0;
	padding: 0;
}

.loginArea .loginForm .btnArea {
	margin-top: 20px;
}

button {
	text-align: center;
	color: #fff;
}

.loginArea .loginForm .btnGreen {
	font-size: 24px;
}

.loginArea .loginForm .btnArea .btnGreen {
	height: 60px;
}

.loginArea.new .loginForm .btnArea .btnGreen {
	height: 60px;
	border-radius: 0;
	font-weight: 400;
}

.loginArea.new .loginForm .fast_login {
	position: relative;
	margin-top: 20px;
}

.loginArea.new .loginForm .fast_login .txt {
	float: left;
	padding: 2px 0 0 0;
	font-size: 13px;
	line-height: 18px;
	color: #999;
}

.loginArea.new .loginForm .fast_login .area {
	position: absolute;
	top: 0;
	right: 0;
}

.loginArea.new .loginForm .fast_login .area .btnlogin {
	display: block;
	width: 170px;
	height: 40px;
	line-height: 40px;
	text-align: center;
}

.loginArea.new .loginForm .fast_login .area .btnlogin.kakao {
	background-color: #f9e003;
	border-radius: 5px;
}

.loginArea.new .loginForm .fast_login .area .btnlogin .icon {
	font-size: 14px;
	line-height: 18px;
	color: #333;
	font-weight: 700;
}

.loginArea.new .loginForm .fast_login .area .btnlogin.kakao .icon {
	padding: 0 0 0 26px;
	background:
		url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/logo_kakao_40.png)
		no-repeat 0 0;
	background-size: 20px auto;
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

.loginArea .loginForm .info {
	overflow: hidden;
	margin-top: 26px;
	padding: 26px 0;
	border-top: 1px solid #e6e6e6;
	border-bottom: 1px solid #e6e6e6;
}

.loginArea.new .loginForm .info {
	overflow: hidden;
	margin-top: 40px;
	padding: 22px 0 0 0;
	border-top: 1px solid #ddd;
	border-bottom: 0;
}

.loginArea .loginForm .info p {
	width: 260px;
	float: left;
	padding-left: 60px;
	font-size: 13px;
	line-height: 18px;
	color: #666;
	background:
		url(https://www.oliveyoung.co.kr/pc-static-root/image/login/ico_cjone.png)
		no-repeat 0 0;
	word-break: keep-all;
}

.loginArea.new .loginForm .info p {
	float: left;
	padding: 41px 0 0 0;
	font-size: 13px;
	line-height: 18px;
	color: #777;
	font-weight: 700;
	background:
		url(https://www.oliveyoung.co.kr/pc-static-root/image/login/ico_cjone_190822.png)
		no-repeat 0 0;
	word-break: keep-all;
}

.loginArea.new .loginForm .info .btnCjone {
	float: right;
	display: block;
	width: 170px;
	height: 40px;
	margin-top: 37px;
	padding: 0;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fff;
	font-weight: 700;
	font-size: 14px;
	line-height: 40px;
	color: #333;
	text-align: center;
}

.clrfix:after {
    content: '';
    display: block;
    clear: both;
}


</style>
<body>

<div class="Wrapper">
<jsp:include page="layout/header.jsp"></jsp:include>

	<div id="Container" class="bgf6">
		<div id="Contents">
			<div class="loginArea new login">
				<div class="loginTit">
					<h2>로그인</h2>
					<p>올리브영의 다양한 서비스와 혜택을 누리세요.</p>
				</div>

				<form id="formLogin" name="formLogin">
					<input type="hidden" id="bSId" name="bSId" value=""> 
					<input type="hidden" id="captchaYn" name="captchaYn" value="N">

					<div class="loginForm">
						<ul>
							<li>
							  <label for="loginId" class="ir">아이디를 입력해 주세요.</label> 
						      <input type="text" id="loginId" placeholder="CJ ONE 통합회원 아이디 입력"
							    	 name="loginId" width="100" value="" autocomplete="off"
								     title="아이디를 입력해 주세요.">
							</li>
							<li>
							  <label for="password" class="ir">비밀번호를 입력해 주세요.</label>
						      <input type="password" value="" id="password"
								       placeholder="비밀번호 (8-12자 영문자+숫자+특수문자)" name="password"
								       width="100" onkeyup=""
								       autocomplete="off" title="비밀번호를 입력해 주세요.">
						    </li>
						</ul>
						<div class="loginError" style="display:none;">
							<p>정보보호를 위해 아이디, 비밀번호와 함께 자동입력 방지문자를 입력하셔야 합니다.</p>
							<div class="errorBox">
								<!-- <div id="catpcha"></div> -->
								<div id="audiocatpch" style="display:none;"></div>
								<span class="imgArea" id="captcha">
							</span>
								<button type="button" id="reLoad" class="btnRefresh">새로고침</button>
								<button type="button" id="soundOnHna" class="btnSound">음성듣기</button>
							</div>
							<div class="placeholder_area middle">
							  <label for="autoBlockText">자동 입력 방지 문자</label>
							  <input type="text" id="autoBlockText" name="answer" autocomplete="off" 
						   	  value="" title="자동 입력 방지 문자를 입력해 주세요." class="inp_placeholder inp_mid"
							   data-placeholder="자동 입력 방지 문자">
							 </div>
						</div>
						<div class="linkChk">
							<div class="save">
								<input type="checkbox" id="chk01" name="saveLoginIdYn"
									title="아이디 저장 선택" value="Y" checked="checked">
								<label for="chk01">아이디 저장</label>
								<input type="hidden" name="loginFormYn" value="Y">
							</div>
							<div class="link">
								<a href="javascript:;" onclick="">아이디
									찾기</a> <a href="javascript:;"
									onclick="">비밀번호 찾기</a>
							</div>
						</div>
						<div class="btnArea">
							<button type="button" class="btnGreen"
								onclick="doLogin()" data-attr="로그인^로그인^로그인">로그인</button>
						</div>
						<div class="fast_login clrfix">
							<p class="txt">카카오로 올리브영 간편하게 시작하기</p>
							<div class="area">
								<a href="javascript:loginWithKakao();" class="btnlogin kakao"
									data-attr="로그인^카카오로그인^카카오 로그인"><span class="icon">카카오로
										시작하기</span></a>
							</div>
						</div>
						<div class="info">
							<p>CJ ONE 통합회원으로 가입하시면 올리브영의 다양한 서비스를 이용하실 수 있습니다.</p>
							<a href="javascript:login.memberJoin('Y', '00000000008129');"
								class="btnCjone" id="memberJoin"
								data-attr="로그인^회원가입^cjone통합회원가입">CJ ONE 통합 가입</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>


<jsp:include page="layout/footer.jsp"></jsp:include>
</div>
<script>
/* 
if( session.getAttribute("me_code") != null ){
	location.href = "main.do";
}
if( )
 */

function doLogin() {
  	
	
    var formLogin = $("#formLogin");
    
    var login_id = $("#loginId").val();
    var password = $("#password").val();
    
    /* var validated1 = common.validateFieldNotEmpty("#loginId", "아이디를 입력해주세요."); */
    if( $("#loginId").val() == "" ){
    	alert("아이디를 입력해주세요.")
        $("#loginId").focus();
        return;
    }
    
    if ( $("#password").val() == "" ) {
    	alert("비밀번호를 입력해주세요.")    
    	$("#password").focus();
        return;
    }
    
    var url = "login.do"; // 파일주소
    $.ajax({
        url: url,
        type: 'POST',
        // {키:값, 키:값} 객체로 넘기기
        // "키=값&키=값" 텍스트로 넘기기
        data   : $("#formLogin").serialize(),
        success: function(result) {
        	
	        // alert( result ); // result = "true" <- 로그인 핸들러에서 getwriter().write("true");
        	if( result != "false" ) {
        		location.href= "<%= request.getContextPath() %>/olive/main.do";
        	} else {
        		alert("아이디 혹은 비밀번호가 잘못되었습니다.");
        		$("#password").val("");
        		$("#loginId").val("");
        		$("#loginId").focus();
        		return;	
    	    }
         }
    });
    
	  <%-- 
	<%
    if (session.getAttribute("id") == null) {
%>
    var idCheck = null;
<%
    } else {
%>
    var idCheck = <%=(String) session.getAttribute("id")%>
<%
    }
%>
    	/* if( request.text()  == 'loginSuccess' )  */
    	alert( idCheck ); // null
    	if( idCheck != null ) {
    		alert("성공")
    		location.href="/OliveM/olive_M/main.do";
    	} else {
    		alert("로그인 실패");
	
	}
    	 --%>
    
        	// location.href="/OliveM/olive_M/main.do";
        	/* response.text(); */
        	
        	
        	
        	
        		/* 인풋태그 비우는 js 코딩 */
        	
        	/* 
        	formLogin.attr('action', "login.do");
            formLogin.attr('method', "POST");
            formLogin.submit();
             */
    
    
}
 
</script>

</body>
</html>