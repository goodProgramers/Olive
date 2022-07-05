package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ProductBrandPriceDTO;
import service.SearchTOP3ProductService;

public class OrderHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 검색창 할인 TOP3 제품
		SearchTOP3ProductService searchTop3ProductService = SearchTOP3ProductService.getInstance();
		List<ProductBrandPriceDTO> searchTop3List = searchTop3ProductService.serachTop3ProductSelect();
		request.setAttribute("searchTop3List", searchTop3List);
		
		return "/olive/order.jsp";
	}

}
