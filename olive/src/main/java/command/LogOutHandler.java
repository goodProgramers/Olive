package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.LoginAuth;

public class LogOutHandler  implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("loginAuth");
		
		response.sendRedirect(request.getContextPath() + "/olive/main.do");
		
		return null;
	}
}
