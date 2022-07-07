package command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.*;
import service.*;

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



		MainFullBannerService mainFullBannerService = MainFullBannerService.getInstance();
		List<MainFullBannerDTO> mainFullBannerDTOList = mainFullBannerService.selectMainFullBanner();
		request.setAttribute("mainFullBannerDTOList", mainFullBannerDTOList);

		CategoryMidService categoryMidService = CategoryMidService.getInstance();
		Map<CategoryDTO, ProductBrandPriceDTO> midCaPrMap = categoryMidService.selectBannerCaPr();
		request.setAttribute("midCaPrMap", midCaPrMap);


		return "/olive/main.jsp";
	}

}
