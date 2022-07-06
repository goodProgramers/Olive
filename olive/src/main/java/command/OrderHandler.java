package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.OrderMemberInfoDTO;
import service.OrderPaymentService;

public class OrderHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String memberID = "pyl1234";
		// String mem = request.getParameter("memberID");
		
		// 회원 배송지 정보
		OrderPaymentService orderPaymentService = OrderPaymentService.getInstance();
		List<OrderMemberInfoDTO> addrInfoList = orderPaymentService.selectOrderMemInfo(memberID);
		request.setAttribute("addrInfoList", addrInfoList);
		
		return "/olive/order.jsp";
	}

}
