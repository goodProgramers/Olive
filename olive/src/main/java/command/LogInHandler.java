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
		/* if( request.getMethod() == "POST" ) { */
			 if( id != null ) {
			 
			 LoginAuth loginAuth = new LoginAuth(); // 세션에 회원 정보를 담을 auth 객체 생성
			 
			 
			 LogInService logInservice = LogInService.getInstance();
			 
			 loginAuth = logInservice.LogInCheck( id, passwd );
			 
	         if( loginAuth.getMe_code() != null ) {
	        	 // 세션 생성
				   session.setAttribute("loginAuth", loginAuth);
				   // 형 근데 이렇게 세션에 저장하는게 맞아..??
				   
				   // request.setAttribute("loginCheck", "loginCheck");
				   
				   response.getWriter().write("true"); 
				   return null;
				   //여긴 어차피 에이작스 요청인데, 리다이렉트가 가능할까?
				   //그냥 에이작스와는 별개로 로그인이 된 상태에서 로그인창을 요청시 메인으로 보내버리는 코딩이라면 납득
	         }
	         response.getWriter().write("false");
	         return null;
		 }
		 
		 return "/olive/login.jsp";
		
	} // process

}
