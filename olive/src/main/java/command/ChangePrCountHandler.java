
package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.Cart;

public class ChangePrCountHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String pr_code = request.getParameter("pr_code");
		int numberOfProduct = Integer.parseInt(request.getParameter("numberOfProduct")) ; 
		
		HttpSession session = request.getSession(); 
		
		List<Cart> cartPrList = (List<Cart>)session.getAttribute("addCartList");
		
		for (int i = 0; i < cartPrList.size(); i++) {
			
			  if( cartPrList.get(i).getPr_code().equals(pr_code)) {
				  
				  cartPrList.get(i).setPr_count(numberOfProduct);
				  
			}
				
			 
			  
			  
			  
			  
		}//for
			
			session.setAttribute("addCartList", cartPrList);
			return null; 
	
	
	}

}
