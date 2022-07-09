package command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.*;
import service.*;
import domain.MainOnlyoneDTO;
import domain.ProductBrandPriceDTO;
import service.MainOnlyoneService;
import service.SearchTOP3ProductService;

public class MainHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 오직 올리브영에서만
		MainOnlyoneService mainOnlyoneService = MainOnlyoneService.getInstance();
		List<MainOnlyoneDTO> mainOnlyoneList = mainOnlyoneService.onlyoneSelect();
		request.setAttribute("mainOnlyoneList", mainOnlyoneList);
		


		MainFullBannerService mainFullBannerService = MainFullBannerService.getInstance();
		List<MainFullBannerDTO> mainFullBannerDTOList = mainFullBannerService.selectMainFullBanner();
		request.setAttribute("mainFullBannerDTOList", mainFullBannerDTOList);

		CategoryMidService categoryMidService = CategoryMidService.getInstance();
		Map<CategoryDTO, ProductBrandPriceDTO> midCaPrMap = categoryMidService.selectBannerCaPr();
		request.setAttribute("midCaPrMap", midCaPrMap);

		return "/olive/main.jsp";
	}

}
