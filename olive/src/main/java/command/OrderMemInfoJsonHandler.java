package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.LoginAuth;
import domain.OrderMemberInfoDTO;
import service.OrderMemInfoJsonService;

public class OrderMemInfoJsonHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		/*
		HttpSession session = request.getSession();
		LoginAuth loginAuth = null;
		loginAuth = (LoginAuth) session.getAttribute("loginAuth");
		String memberCode = loginAuth.getMe_code();
		*/
		
		String memberCode = request.getParameter("memberCode");
		String addrName = request.getParameter("selAddrName");
		
		// 회원 배송지 정보
		OrderMemInfoJsonService orderMemInfoJsonService = OrderMemInfoJsonService.getInstance();
		List<OrderMemberInfoDTO> addrInfoList = orderMemInfoJsonService.selectMemAddrInfo(memberCode, addrName);		
		request.setAttribute("addrInfoList", addrInfoList);
		
		return "/olive/memaddrinfojson.jsp";	
		
	}

}
