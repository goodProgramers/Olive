package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.CartProductDTO;
import domain.LoginAuth;
import domain.OrderDetailPaymentDTO;
import domain.OrderMemberInfoDTO;
import service.OrderInsertService;
import service.OrderPaymentService;

public class OrderHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		if( request.getMethod().equals("GET") ) {
			/*
			HttpSession session = request.getSession();
			LoginAuth loginAuth = null;
			loginAuth = (LoginAuth) session.getAttribute("loginAuth");
			String memberCode = loginAuth.getMe_code();
			
			System.out.println(memberCode);
			*/
			String memberCode = "me000004";
			request.setAttribute("memberCode", memberCode);

			// 회원 배송지 + 포인트 + 적립율 등 정보
			OrderPaymentService orderPaymentService = OrderPaymentService.getInstance();
			List<OrderMemberInfoDTO> memberAddrList = orderPaymentService.selectMemberAddr(memberCode);
			request.setAttribute("memberAddrList", memberAddrList);

			// 제품상세보기페이지 & 장바구니 페이지에서 주문시 뿌려지는 상품정보(order.jsp로 가져감)
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
				String[] priceCodes = request.getParameterValues("priceCode"); // 단가코드
				String[] saleCodes = request.getParameterValues("saleCode"); // 할인코드

				cartProductList = new ArrayList<CartProductDTO>();

				for (int i = 0; i < prImgs.length; i++) {
					dto = new CartProductDTO();

					dto.setCart_prCodes(prCodes[i]);
					dto.setCart_prImgs(prImgs[i]);
					dto.setCart_brands(brands[i]);
					dto.setCart_products(products[i]);
					dto.setCart_prPrices(Integer.parseInt(prPrices[i]));
					dto.setCart_prPriceCnts(Integer.parseInt(prPriceCnts[i]));
					dto.setCart_prCounts(Integer.parseInt(prCounts[i]));
					dto.setCart_realPrices(Integer.parseInt(realPrices[i]));
					dto.setCart_realPricehiddens(Integer.parseInt(realPricehiddens[i]));
					dto.setPriceCode(priceCodes[i]);
					dto.setSaleCode(saleCodes[i]);

					cartProductList.add(dto);
				} // for

				request.setAttribute("cartProductList", cartProductList);

			} // if

			return "/olive/order.jsp";

		} else if(request.getMethod().equals("POST") ) {

			// String memberCode = request.getParameter("memberCode") == null ? "me000004" : request.getParameter("memberCode"); // 회원코드
			String memberCode = request.getParameter("memberCode") == null ? "me000001" : request.getParameter("memberCode"); // 회원코드
			System.out.println(memberCode);
			request.setAttribute("memberCode", memberCode);	

			// [ 주문 테이블 ]
			String me_code = request.getParameter("memberCode"); // 회원코드
			String or_price = request.getParameter("totalProductAmt"); // 총구매가(결제예상금액)
			String or_shippay = request.getParameter("deliveryCharge"); // 배송비
			String or_pay = request.getParameter("orderPayAmt"); // 총결제금액(포린트 사용금액 제외 후) - 결제 테이블에도 사용
			String or_todaygive = request.getParameter("todayGift"); // 오늘드림 여부
			String or_addresrequest = request.getParameter("orderMemo"); // 배송요청사항
			String ad_code = request.getParameter("member_ad_code"); // 배송지번호
			
			// [ 주문 상세 테이블 ]
			String[] pr_code = request.getParameterValues("prCode"); // 상품코드
			String[] ord_count = request.getParameterValues("prCount"); // 상품수량
			String[] ord_price = request.getParameterValues("realPricehidden"); // 할인적용된 1개 단가 
			String[] prpri_code = request.getParameterValues("priceCode"); // 단가코드
			String[] sa_code = request.getParameterValues("saleCode"); // 할인코드

			// [ 결제 테이블 ]
			String pa_way = request.getParameter("payMethod"); // 결제수단
			String pa_amount = request.getParameter("orderPayAmt"); // 총결제금액(포인트 사용금액 제외 후) - 결제 테이블에도 사용
			
			// [ 포인트 관련 ]
			String myp_amount = request.getParameter("pointAmt").replace(",", ""); // 사용한 포인트 금액
			
			OrderDetailPaymentDTO dto = null;
			OrderInsertService orderInsertService = OrderInsertService.getInstance();
			int result = 0;
			String or_code = null;

			dto = new OrderDetailPaymentDTO();

			dto.setMe_code(me_code);
			dto.setOr_shippay(Integer.parseInt(or_shippay));
			dto.setOr_price(Integer.parseInt(or_price));
			dto.setOr_pay(Integer.parseInt(or_pay));
			dto.setOr_todaygive(Integer.parseInt(or_todaygive));
			dto.setOr_addresrequest(or_addresrequest);
			dto.setAd_code(ad_code);

			// 주문 테이블 + 주문상세 테이블 + 결제 테이블 + 포인트 테이블 인서트
			or_code = orderInsertService.insertOrder(dto, pr_code, ord_count, ord_price, prpri_code, sa_code, pa_way, pa_amount, me_code, myp_amount);
			
			if (or_code != null) {
				String location = request.getContextPath()+"/olive/orderform.do?"+"or_code="+or_code;
				response.sendRedirect(location);  // 포워딩 X,  리다이렉트 O
			} else {
				System.out.println("주문 실패");
			} // if

		} else {
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
		} // if

		return null;

	} // process

} // class
