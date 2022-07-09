
package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.Cart;
import domain.ProductBrandPriceDTO;
import service.CartService;

public class CartHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		List<Cart> getsessionCartList = (List<Cart>) session.getAttribute("addCartList"); /* 세션에 있는 리스트 가져옴 */


		List<ProductBrandPriceDTO> cartList = null;

		CartService cs = CartService.getInstance();
		cartList = cs.showCart(getsessionCartList);
		request.setAttribute("cartList", cartList);

		String id = request.getParameter("id");
		String pr_code = request.getParameter("pr_code");
		String numberOfProduct =request.getParameter("numberOfProduct");

		
		session.setAttribute("pr_code", pr_code);
		session.setAttribute("numberOfProduct", numberOfProduct);

		return "/olive/cart.jsp";
	}

}
