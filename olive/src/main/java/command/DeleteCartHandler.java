
package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.Cart;

public class DeleteCartHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String pr_code = request.getParameter("pr_code");
		
		//int numberOfProduct = Integer.parseInt(request.getParameter("numberOfProduct"));

		HttpSession session = request.getSession();
		
		List<Cart> checkCartList = (List<Cart>)session.getAttribute("addCartList");
		
		List<Cart> newCartList = new ArrayList<Cart>();
		
		for (int i = 0; i < checkCartList.size(); i++) {
			
		  if( !checkCartList.get(i).getPr_code().equals(pr_code)) {
			  
			 
			  newCartList.add(checkCartList.get(i));
		}
			
		}//for
		
		session.setAttribute("addCartList", newCartList);
		return null; 
		
	}

}
