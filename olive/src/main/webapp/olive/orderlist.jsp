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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/module.css">

</head>
<body>

<div id="Wrapper">
    <jsp:include page="layout/header.jsp"></jsp:include>
    <div id="Container">
        <div id="Contents">
            <div class="mypage-head rate_05">
                <h1 class="tit"><a href="https://www.oliveyoung.co.kr/store/mypage/myPageMain.do">마이페이지</a></h1>
                <div class="grd-box">
                    <div class="info_user clrfix">
                        <div class="thum">
                            <span class="bg"></span>
                            <img src="https://image.oliveyoung.co.kr/pc-static-root/image/comm/my_picture_base.jpg"
                                 alt="" onerror="common.errorImg(this);">
                        </div>
                        <p class="txt">
                            ${ loginAuth.mbs_grade } <strong class="name">${ loginAuth.me_name } </strong>님 반갑습니다.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="layout/footer.jsp"></jsp:include>
</div>


</body>
</html>