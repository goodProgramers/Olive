package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.OrderMemberInfoDTO;
import service.OrderMemInfoJsonService;

public class OrderMemInfoJsonHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// String memberID = "pyl1234"; // 아이디값은 나중에 받아오기
		// String memberCode = "me000004";

		String memberCode = request.getParameter("memberCode");
		String addrName = request.getParameter("selAddrName");
		
		// 회원 배송지 정보
		OrderMemInfoJsonService orderMemInfoJsonService = OrderMemInfoJsonService.getInstance();
		List<OrderMemberInfoDTO> addrInfoList = orderMemInfoJsonService.selectMemAddrInfo(memberCode, addrName);		
		request.setAttribute("addrInfoList", addrInfoList);
		
		return "/olive/memaddrinfojson.jsp";	
		
	}

}
