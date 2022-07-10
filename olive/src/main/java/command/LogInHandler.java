package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.LoginAuth;
import domain.MemberDTO;
import service.LogInService;

public class LogInHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		
		String id = request.getParameter("loginId");
		String passwd = request.getParameter("password");
    	
    	// session.invalidate();
			 if( id != null ) {
			 
			 LoginAuth loginAuth = new LoginAuth(); // 세션에 회원 정보를 담을 auth 객체 생성
			 
			 
			 LogInService logInservice = LogInService.getInstance();
			 
			 loginAuth = logInservice.LogInCheck( id, passwd );
			 
	         if( loginAuth.getMe_code() != null ) {
	        	 // 세션 생성
				   session.setAttribute("loginAuth", loginAuth);
				   
				   response.getWriter().write("true"); 
				   
				   return null;
	         }
	         response.getWriter().write("false");
	         return null;
		 }
		 
		 return "/olive/login.jsp";
		
	} // process

}
