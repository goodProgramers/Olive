package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.OrderFormDTO;
import service.OrderFormService;

public class OrderFormHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		if( request.getMethod().equals("GET") ) {
			// 파라미터로 넘어오는 주문번호
			String or_code = request.getParameter("or_code");
			System.out.println("OrderForm : "+or_code);
			request.setAttribute("or_code", or_code);
			
			OrderFormService orderFormService = OrderFormService.getInstance();
			List<OrderFormDTO> orderFormList = orderFormService.selectOrderForm(or_code);
			request.setAttribute("orderFormList", orderFormList);
			
			System.out.println("주문완료~~~!");
			
			return "/olive/orderform.jsp";
		} else if( request.getMethod().equals("POST")) {
			System.out.println("POST로 왔다는데?");
		} else {
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
		}
		
		return null;
		
	} // process

} // class
