package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.CartProductDTO;
import domain.OrderMemberInfoDTO;
import service.OrderPaymentService;

public class OrderHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String memberID = request.getParameter("memberID") == null ? "pyl1234" : request.getParameter("memberID"); // pyl1234
		System.out.println(memberID);
		request.setAttribute("memberID", memberID);
		
		// 회원 배송지 + 포인트 + 적립율 등 정보
		OrderPaymentService orderPaymentService = OrderPaymentService.getInstance();
		List<OrderMemberInfoDTO> memberAddrList = orderPaymentService.selectMemberAddr(memberID);
		request.setAttribute("memberAddrList", memberAddrList);
		
		// 제품상세보기페이지 & 장바구니 페이지에서 주문시 뿌려지는 상품정보
		if(request.getParameterValues("prImg") != null) {
			List<CartProductDTO> cartProductList = null;
			CartProductDTO dto = null;
			
			String[] prCodes = request.getParameterValues("prCode"); // 상품코드
			String[] prImgs = request.getParameterValues("prImg"); // 상품이미지
			String[] brands = request.getParameterValues("brand"); // 브랜드
			String[] products = request.getParameterValues("product"); // 상품명
			String[] prPrices = request.getParameterValues("prPrice"); // 상품판매가
			String[] prPriceCnts = request.getParameterValues("prPriceCnt"); // 판매가 * 수량
			String[] prCounts = request.getParameterValues("prCount"); // 상품 수량
			String[] realPrices = request.getParameterValues("realPrice"); // 상품구매가
			String[] realPricehiddens = request.getParameterValues("realPricehidden"); // 구매가 * 수량
			
			if(prImgs.length > 0) { // 넘어 왔을 경우에만 for문 돌리겠다.
				cartProductList = new ArrayList<CartProductDTO>();
				for (int i = 0; i < prImgs.length; i++) {
					dto = new CartProductDTO();
					
					dto.setCart_prImgs(prImgs[i]);
					dto.setCart_brands(brands[i]);
					dto.setCart_products(products[i]);
					dto.setCart_prPrices(Integer.parseInt(prPrices[i]));
					dto.setCart_prPriceCnts(Integer.parseInt(prPriceCnts[i]));
					dto.setCart_prCounts(Integer.parseInt(prCounts[i]));
					dto.setCart_realPrices(Integer.parseInt(realPrices[i]));
					dto.setCart_realPricehiddens(Integer.parseInt(realPricehiddens[i]));
					
					cartProductList.add(dto);
				} // for
			} // if
			
			request.setAttribute("cartProductList", cartProductList);

		} // if
		
		
		return "/olive/order.jsp";
		
	} // process

} // class
