<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="../images/Sist.ico">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/module.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
/* 공통 적용 */
@font-face{
	font-family:Montserrat;
	font-style:normal;
	font-weight:400;
	src:local(Montserrat-Light),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Light.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Light.woff") format("woff")
}

@font-face{
	font-family:Montserrat;
	font-style:normal;
	font-weight:500;
	src:local(Montserrat),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Regular.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-Regular.woff") format("woff")
	}

@font-face{
	font-family:Montserrat;
	font-style:normal;
	font-weight:700;
	src:local(Montserrat-SemiBold),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-SemiBold.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/Montserrat-SemiBold.woff") format("woff")}@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:400;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff") format("woff")
}

@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:400;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Regular.woff") format("woff")}

@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:500;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Medium.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Medium.woff") format("woff")}

@font-face{font-family:NotoSansCJKkr;font-style:normal;font-weight:700;src:local(NotoSansCJKkr),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Bold.woff2") format("woff2"),url("https://www.oliveyoung.co.kr/pc-static-root/fonts/NotoSansCJKkr-Bold.woff") format("woff")}

@font-face{font-family:Dovemayo-Medium;src:url("https://www.oliveyoung.co.kr/pc-static-root/fonts/dovemayo/Dovemayo-Medium.woff") format('woff');font-weight:400;font-style:normal}

body,html{-webkit-font-smoothing:antialiased;-webkit-font-smoothing:antialiased}

a,address,blockquote,body,dd,div,dl,dt,em,fieldset,form,h1,h2,h3,h4,h5,h6,img,input,label,li,ol,p,pre,select,span,strong,textarea,ul{margin:0;padding:0;border:0}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body, html {
    word-spacing: -1px;
    color: #666;
    font-size: 14px;
    line-height: 20px;
    font-family: Montserrat,-apple-system,NotoSansCJKkr,AppleSDGothicNeo,Roboto,dotum,'돋움',sans-serif;
    letter-spacing: -.04em;
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
}

#Container, #Footer, #Header, #Wrapper {
    width: 100%;
    min-width: 1020px;
}

#Container {
    overflow: hidden;
}

#Contents {
    width: 1020px;
    height: 100%;
    margin: 0 auto;
}
</style>
<style>
div {
/* 	border: 1px solid gray; */
	width: 300px;
	height: 100px;
	padding: 20px;
}
</style>

<!-- 모달창 스타일 -->
<!-- 
<style>
.popup-contents {
    z-index: 11;
    position: absolute;
    top: 20%;
    left: 50%;
    width: 758px;
    margin: 0 0 0 -379px;
    border-radius: 5px;
    background: #fff;
}
.layer_pop_wrap.w490 {
    width: 490px;
    margin-left: -245px;
}
.layer_pop_wrap {
    display: none;
    position: absolute;
    top: 50%;
    left: 50%;
    background: #fff;
    border-radius: 5px;
    z-index: 100;
}
.layer_pop_wrap .popup-contents {
    top: 0!important;
    margin-top: 0!important;
}
.popup-contents {
    z-index: 11;
    position: absolute;
    top: 20%;
    left: 50%;
    width: 758px;
    margin: 0 0 0 -379px;
    border-radius: 5px;
    background: #fff;
}
.pop-conts {
    padding: 0 30px 30px;
}
.pop-conts .ptit {
    padding: 30px 0 15px;
    border-bottom: 2px solid #000;
    color: #000;
    font-size: 24px;
    line-height: 30px;
}
.popCont.contPd01 {
    padding: 35px 25px 20px;
}
.txt_onbag {
    padding: 10px 0 20px;
    text-align: center;
    font-size: 16px;
    color: #999;
    font-weight: 700;
}
.txt_onbag {
    padding: 10px 0 20px;
    text-align: center;
    font-size: 16px;
    color: #999;
    font-weight: 700;
}
.area2sButton {
    padding: 20px 0 0;
    text-align: center;
}
.pdTz {
    padding-top: 0!important;
}
.area2sButton .btnG01, .area2sButton .btnlG01 {
    padding: 0!important;
}
.area1sButton button, .area2sButton button, .area3sButton button {
    margin: 0 2px;
    padding: 2px 0 0!important;
}
.btnG01 {
    display: inline-block;
    height: 40px;
    line-height: 40px;
    margin: 0;
    font-size: 12px;
    color: #fff;
    font-weight: 700;
    border-radius: 2px;
    background-color: #9bce26;
}
.area2sButton .btnG01, .area2sButton .btnlG01 {
    padding: 0!important;
}
.area1sButton button, .area2sButton button, .area3sButton button {
    margin: 0 2px;
    padding: 2px 0 0!important;
}
.btnlG01 {
    display: inline-block;
    height: 40px;
    line-height: 38px;
    margin: 0;
    font-size: 12px;
    color: #9bce26;
    font-weight: 700;
    border-radius: 2px;
    border: solid 1px #9bce26;
    background-color: #fff;
}
.w130 {
    width: 130px!important;
}
.pdzero {
    padding: 0!important;
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
.pop-conts .ButtonClose {
    position: absolute;
    top: 30px;
    right: 30px;
    width: 16px;
    height: 16px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/btn_pop_close_small.png) no-repeat 0 0;
    background-size: 16px 16px;
    font-size: 0;
    text-indent: -99999px;
    line-height: 0;
}


</style>

 -->

<style>
.popup-contents {
    z-index: 11;
    position: absolute;
    top: 20%;
    left: 50%;
    width: 758px;
    margin: 0 0 0 -379px;
    border-radius: 5px;
    background: #fff;
}
.layer_pop_wrap.w490 {
    width: 490px;
    margin-left: -245px;
}
.layer_pop_wrap {
    display: none;
    position: absolute;
    top: 50%;
    left: 50%;
    background: #fff;
    border-radius: 5px;
    z-index: 100;
}
.layer_pop_wrap .popup-contents {
    top: 0!important;
    margin-top: 0!important;
}
.popup-contents {
    z-index: 11;
    position: absolute;
    top: 20%;
    left: 50%;
    width: 758px;
    margin: 0 0 0 -379px;
    border-radius: 5px;
    background: #fff;
}
.pop-conts {
    padding: 0 30px 30px;
}
.pop-conts .ptit {
    padding: 30px 0 15px;
    border-bottom: 2px solid #000;
    color: #000;
    font-size: 24px;
    line-height: 30px;
}
.popCont.contPd01 {
    padding: 35px 25px 20px;
}
.txt_onbag {
    padding: 1px 0 20px;
    text-align: center;
    font-size: 16px;
    color: #999;
    font-weight: 700;
}
.txt_onbag {
    padding: 10px 0 20px;
    text-align: center;
    font-size: 16px;
    color: #999;
    font-weight: 700;
}
.area2sButton {
    padding: 20px 0 0;
    text-align: center;
}
.pdTz {
    padding-top: 0!important;
}
.area2sButton .btnG01, .area2sButton .btnlG01 {
    padding: 0!important;
}
.area1sButton button, .area2sButton button, .area3sButton button {
    margin: 0 2px;
    padding: 2px 0 0!important;
}
.btnG01 {
    display: inline-block;
    height: 40px;
    line-height: 40px;
    margin: 0;
    font-size: 12px;
    color: #fff;
    font-weight: 700;
    border-radius: 2px;
    background-color: #9bce26;
}
.area2sButton .btnG01, .area2sButton .btnlG01 {
    padding: 0!important;
}
.area1sButton button, .area2sButton button, .area3sButton button {
    margin: 0 2px;
    padding: 2px 0 0!important;
}
.btnlG01 {
    display: inline-block;
    height: 40px;
    line-height: 38px;
    margin: 0;
    font-size: 12px;
    color: #9bce26;
    font-weight: 700;
    border-radius: 2px;
    border: solid 1px #9bce26;
    background-color: #fff;
}
.w130 {
    width: 130px!important;
}
.pdzero {
    padding: 0!important;
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
.pop-conts .ButtonClose {
    position: absolute;
    top: 30px;
    right: 30px;
    width: 16px;
    height: 16px;
    background: url(https://www.oliveyoung.co.kr/pc-static-root/image/comm/btn_pop_close_small.png) no-repeat 0 0;
    background-size: 16px 16px;
    font-size: 0;
    text-indent: -99999px;
    line-height: 0;
}
.modal{
 
 display:none;
}


</style>

</head>
<body>
<div>
<form action="cart.do" >
<!-- <form action="cartSession.jsp" > -->
회원id :  <input type="text" name="id" id="id" value="chaeyeong"><br>
상품코드: <input type="text" name="pr_code" id="pr_code" value="pr001001" /><br>
상품 개수: <input type="text" name="numberOfProduct" id="numberOfProduct" value="1"/> 
<br><br>
<input type="button" id="addToCart" value="장바구니(담기)" onclick="cartAjax();" >

<!-- <input type="submit" value="장바구니 이동하기"> -->
</form>
</div>

<!-- 모달창 -->
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


 <script>
    function cartAjax(){
       
        	
        	var id="";
        	var pr_code="";
        	var numberOfProduct=""; 
        	
        	id = $("#id").val();
        	 pr_code = $("#pr_code").val();
        	numberOfProduct = $("#numberOfProduct").val();      	
        	
        	var cartData = { "id":id, "pr_code":pr_code,"numberOfProduct":numberOfProduct };
        	
           $.ajax({
                /*  url:"cartAjax.jsp?id="+id+"&pr_code="+pr_code+"&numberOfProduct="+numberOfProduct,  */
                 url:"cartAjax.do", 
                /*  dataType:"jsp",  */      // text, html, xml, script, 등등
                  type:"GET",
                  
                  //data:"id="+id,
                  data:cartData,
                  cache:false,                     // 꼭 기억
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


</script>




</body>
</html>