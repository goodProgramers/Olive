
package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ProductBrandPriceDTO;
import service.RecomProductService;

public class ProductBrandPriceHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		List<ProductBrandPriceDTO> recomProductlist = null;

		RecomProductService rps = RecomProductService.getInstance();
		recomProductlist = rps.recomProduct();
		request.setAttribute("recomProductlist", recomProductlist);

		
		System.out.println("핸들러"+recomProductlist);
		return "/mainpage/recommmProduct.jsp";
	}

}
