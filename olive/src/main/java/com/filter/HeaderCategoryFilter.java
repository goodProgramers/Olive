package com.filter;

import domain.CategoryDTO;
import service.CategoryMainService;

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
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}

