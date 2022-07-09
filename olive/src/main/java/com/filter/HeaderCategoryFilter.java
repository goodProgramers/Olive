package com.filter;

import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;
import service.CategoryMainService;
import service.SearchTOP3ProductService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebFilter(urlPatterns = { "/*" })
public class HeaderCategoryFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        CategoryMainService categoryMainService = CategoryMainService.getInstance();
        Map<CategoryDTO, Map<CategoryDTO, List<CategoryDTO>>> totMap = categoryMainService.selectTopCate();
        servletRequest.setAttribute("totMap", totMap);
        
		// 검색창 할인 TOP3 제품
		SearchTOP3ProductService searchTop3ProductService = SearchTOP3ProductService.getInstance();
		List<ProductBrandPriceDTO> searchTop3List = searchTop3ProductService.serachTop3ProductSelect();
		servletRequest.setAttribute("searchTop3List", searchTop3List);
		
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}

