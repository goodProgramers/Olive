<%@page import="java.util.Iterator"%>
<%@page import="domain.OrderMemberInfoDTO"%>
<%@page import="java.util.List"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>
<%@ page trimDirectiveWhitespaces="true"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
	// JSON 객체 생성
	JSONObject jsonData = new JSONObject();
	JSONArray jsonMemAddrInfoArray = new JSONArray();

	List<OrderMemberInfoDTO> list = (List<OrderMemberInfoDTO>) request.getAttribute("addrInfoList");
	Iterator<OrderMemberInfoDTO> ir = list.iterator();
	
	while (ir.hasNext()) {
		OrderMemberInfoDTO dto = ir.next();
		int ad_main = dto.getAd_main();
		String ad_code = dto.getAd_code();
		String ad_name = dto.getAd_name();
		String ad_member = dto.getAd_member();
		String ad_tel = dto.getAd_tel();
		String midtel = dto.getMidtel();
		String endtel = dto.getEndtel();
		String ad_address = dto.getAd_address();
		
	    JSONObject jsonMemberInfo = new JSONObject();

	    jsonMemberInfo.put("ad_main", ad_main);
	    jsonMemberInfo.put("ad_code", ad_code);
	    jsonMemberInfo.put("ad_name", ad_name);
	    jsonMemberInfo.put("ad_member", ad_member);
	    jsonMemberInfo.put("ad_tel", ad_tel);
	    jsonMemberInfo.put("midtel", midtel);
	    jsonMemberInfo.put("endtel", endtel);
	    jsonMemberInfo.put("ad_address", ad_address);
	    
	    jsonMemAddrInfoArray.add(jsonMemberInfo);
	} 

   jsonData.put("memberAddrInfo", jsonMemAddrInfoArray);
%>
<%= jsonData  %>