package command;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.CartProductDTO;
import domain.OrderDetailPaymentDTO;
import domain.OrderMemberInfoDTO;
import service.OrderInsertService;
import service.OrderPaymentService;

public class OrderFormHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String memberCode = request.getParameter("memberCode") == null ? "me000004" : request.getParameter("memberCode"); // pyl1234
		System.out.println(memberCode);
		request.setAttribute("memberCode", memberCode);
		
		System.out.println("주문완료~~~!");
		
		return "/olive/orderform.jsp";
		
	} // process

} // class
