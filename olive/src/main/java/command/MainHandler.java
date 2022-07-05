package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ExhibitionDTO;
import domain.MainOnlyoneDTO;
import domain.ProductBrandPriceDTO;
import service.ExhibitionService;
import service.MainOnlyoneService;
import service.SearchTOP3ProductService;

public class MainHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//ExhibitionService exhibitionService = ExhibitionService.getInstance();
		//List<ExhibitionDTO> onlyoneList = exhibitionService.select();
		//request.setAttribute("onlyoneList", onlyoneList);
		
		// 오직 올리브영에서만
		MainOnlyoneService mainOnlyoneService = MainOnlyoneService.getInstance();
		List<MainOnlyoneDTO> mainOnlyoneList = mainOnlyoneService.onlyoneSelect();
		request.setAttribute("mainOnlyoneList", mainOnlyoneList);
		
		// 검색창 할인 TOP3 제품
		SearchTOP3ProductService searchTop3ProductService = SearchTOP3ProductService.getInstance();
		List<ProductBrandPriceDTO> searchTop3List = searchTop3ProductService.serachTop3ProductSelect();
		request.setAttribute("searchTop3List", searchTop3List);
				
		return "/olive_yelin/main.jsp";
	}

}
