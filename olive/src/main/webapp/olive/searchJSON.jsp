<%@ page import="net.sf.json.JSONObject" %>
<%@ page import="net.sf.json.JSONArray" %>
<%@ page import="domain.ProductBrandPriceDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    JSONObject jsonData = new JSONObject();
    JSONArray jsonArray = new JSONArray();

    List<ProductBrandPriceDTO> list = (List<ProductBrandPriceDTO>) request.getAttribute("searchProductList");

    Iterator<ProductBrandPriceDTO> ir = list.iterator();
    while (ir.hasNext()){
        JSONObject jsonProduct = new JSONObject();
        ProductBrandPriceDTO dto = ir.next();

        jsonProduct.put("pr_code",dto.getPr_code());
        jsonProduct.put("pr_name",dto.getPr_name());
        jsonProduct.put("prpri_price",dto.getPrpri_price());
        jsonProduct.put("sa_rate",dto.getSa_rate());
        jsonProduct.put("realPrice",dto.getRealPrice());
        jsonProduct.put("br_name",dto.getBr_name());
        jsonProduct.put("prm_url",dto.getPrm_url());

        jsonArray.add(jsonProduct);
    }

    jsonData.put("productList",jsonArray);
%>
<%=jsonData%>