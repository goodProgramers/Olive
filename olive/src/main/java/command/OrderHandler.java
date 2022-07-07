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
		// String mem = request.getParameter("memberID");
		
		// 회원 배송지 + 포인트 + 적립율 등 정보
		OrderPaymentService orderPaymentService = OrderPaymentService.getInstance();
		List<OrderMemberInfoDTO> memberAddrList = orderPaymentService.selectMemberAddr(memberID);
		request.setAttribute("memberAddrList", memberAddrList);
		
		
		// 제품상세보기페이지에서 주문시 뿌려지는 상품 정보 파라미터
		if(request.getParameter("prImg") != null) {
			String prImg = request.getParameter("prImg"); // 이미지
			String brand = request.getParameter("brand"); // 브랜드
			String product = request.getParameter("product"); // 상품명
			String prPrice = request.getParameter("prPrice"); // 1개 판매가
			String prPriceCnt = request.getParameter("prPriceCnt"); // 수량 * 판매가
			String prCount = request.getParameter("prCount"); // 수량
			String realPrice = request.getParameter("realPrice"); // 1개 구매가
			String realPricehidden = request.getParameter("realPricehidden"); // 수량 * 구매가
			request.setAttribute("prImg", prImg);
			request.setAttribute("brand", brand);
			request.setAttribute("product", product);
			request.setAttribute("prPrice", prPrice);
			request.setAttribute("prPriceCnt", prPriceCnt);
			request.setAttribute("prCount", prCount);
			request.setAttribute("realPrice", realPrice);
			request.setAttribute("realPricehidden", realPricehidden);
		} // if
		
		// 장바구니 페이지에서 주문시 뿌려지는 상품정보
		if(request.getParameterValues("cart_prImg") != null) {
			List<CartProductDTO> cartProductList = null;
			CartProductDTO dto = null;
			
			String[] cart_prImgs = request.getParameterValues("cart_prImg");
			String[] cart_brands = request.getParameterValues("cart_brand");
			String[] cart_products = request.getParameterValues("cart_product");
			String[] cart_prPrices = request.getParameterValues("cart_prPrice");
			String[] cart_prPriceCnts = request.getParameterValues("cart_prPriceCnt");
			String[] cart_prCounts = request.getParameterValues("cart_prCount");
			String[] cart_realPrices = request.getParameterValues("cart_realPrice");
			String[] cart_realPricehiddens = request.getParameterValues("cart_realPricehidden");
			
			if(cart_prImgs.length > 0) { // 넘어 왔을 경우에만 for문 돌리겠다.
				cartProductList = new ArrayList<CartProductDTO>();
				for (int i = 0; i < cart_prImgs.length; i++) {
					dto = new CartProductDTO();
					
					dto.setCart_prImgs(cart_prImgs[i]);
					dto.setCart_brands(cart_brands[i]);
					dto.setCart_products(cart_products[i]);
					dto.setCart_prPrices(Integer.parseInt(cart_prPrices[i]));
					dto.setCart_prPriceCnts(Integer.parseInt(cart_prPriceCnts[i]));
					dto.setCart_prCounts(Integer.parseInt(cart_prCounts[i]));
					dto.setCart_realPrices(Integer.parseInt(cart_realPrices[i]));
					dto.setCart_realPricehiddens(Integer.parseInt(cart_realPricehiddens[i]));
					
					cartProductList.add(dto);
				} // for
			} // if
			
			request.setAttribute("cartProductList", cartProductList);
			
			// System.out.println(cartProductList.get(0));
			// System.out.println(cartProductList.get(1));
		} // if
		
		return "/olive/order.jsp";
		
	} // process

} // class
