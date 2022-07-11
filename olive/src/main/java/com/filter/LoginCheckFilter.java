package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.LoginAuth;

// @WebFilter("/olive/cart.do")
public class LoginCheckFilter implements Filter {

	// 디폴트 생성자
    public LoginCheckFilter() {
    	
    } // LoginCheckFilter

    // 웹 컨테이너 소멸될 때 호출
	public void destroy() {
		
	} // destroy

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("> LoginCheckFilter.doFilter() 호출");
		
		
		// session - member(세션이름) : logonID(세션값)
		// 이 안에서 session 객체를 바로 얻어올 수 없음
		// 서블릿에서 세션을 사용하는 방법
		
		// 여기서 사용하는 서블릿은 HttpServletRequest가 아니라 해당 서블릿의 부모인 ServletRequest 이기 때문에 다운 캐스팅 필요
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpServletResponse httpResponse = (HttpServletResponse)response;
		
		LoginAuth logonID = new LoginAuth(); // 로그인 세션에 저장되는 객체
		
		boolean isLogon = false; // 로그인 여부를 판단하는 변수
		
		HttpSession session = httpRequest.getSession();
		
		session.removeAttribute("referer");
		
		if(session != null) {
			logonID = (LoginAuth)session.getAttribute("loginAuth"); 
			
			if(logonID != null) {
				isLogon = true; // 로그인을 했다.
			} // if
		} // if
		
		
		
		if( isLogon ) {
			System.out.println("로그인 됨" + ((LoginAuth)session.getAttribute("loginAuth")).getMe_code() );
			
			chain.doFilter(request, response); 
		} else {
			String referer = httpRequest.getRequestURI();
			
			session.setAttribute("referer", referer);
			
			String location = ((HttpServletRequest) request).getContextPath() + "/olive/login.do";
			httpResponse.sendRedirect(location);
		} // if		
	
	} // doFilter

	public void init(FilterConfig fConfig) throws ServletException {
		
	} // init

}
