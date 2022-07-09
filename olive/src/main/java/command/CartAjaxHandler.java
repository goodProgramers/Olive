
package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.Cart;

public class CartAjaxHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pr_code = request.getParameter("pr_code");
		int numberOfProduct = Integer.parseInt(request.getParameter("numberOfProduct")) ; 
		
		HttpSession session = request.getSession(); /*세션 객체 선언*/
		
		List<Cart> addCartList;
		
		
		
		if(session.getAttribute("addCartList") !=null) {
			
			addCartList = (List<Cart>)session.getAttribute("addCartList");  /*선언 -> 있는 거랑 연결*/
			
			
			for (int i = 0; i < addCartList.size(); i++) {
				if(addCartList.get(i).getPr_code().equals(pr_code)) {
					numberOfProduct += addCartList.get(i).getPr_count(); 
					addCartList.get(i).setPr_count(numberOfProduct); /*카트에 있는 수량 바꿈*/
					
					System.out.println("if진입함");
					
					session.setAttribute("addCartList", addCartList); 
					return null;
				}
			}
			    Cart crt = new Cart();
				crt.setPr_code(pr_code);
				crt.setPr_count(numberOfProduct);
					
				addCartList.add(crt);
			
		}else {
		   addCartList = new ArrayList<Cart>(); /*생성*/	
		   
			Cart crt = new Cart();
			crt.setPr_code(pr_code);
			crt.setPr_count(numberOfProduct);
			
			addCartList.add(crt);
		 }
		
		
		session.setAttribute("addCartList", addCartList); 
		/*가져온 값 세션에 저장*/
		
		return null; /* 둘중에 하나 */
		//return "/mainpage/cart.jsp";
	}

}
