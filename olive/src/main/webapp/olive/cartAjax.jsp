<%-- <%@page import="jdk.internal.misc.FileSystemOption"%> --%>
<%@page import="java.net.http.HttpRequest"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="../images/Sist.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<h3>장바구니담기 버튼 누르면 세션에 정보 담는 처리하는 페이지</h3>

<%
	String id = request.getParameter("id");
	String pr_code = request.getParameter("pr_code");
	String numberOfProduct = request.getParameter("numberOfProduct"); 
	
	session.setAttribute("id", id);
	session.setAttribute("pr_code", pr_code);
	session.setAttribute("numberOfProduct", numberOfProduct);

	
	//System.out.println(session.getAttribute("id"));
%>


</body>
</html>