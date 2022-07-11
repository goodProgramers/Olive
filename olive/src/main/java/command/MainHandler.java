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

		WeeklyService  weeklyservice = WeeklyService.getInstance();
		List<WeeklyDTO> weeklylist = weeklyservice.thumbnail();
		request.setAttribute("weekly", weeklylist); // 위클리를 위해서 썸네일 가장 최근 기획전 2개만 가져옴.

		MonthService monthservice = MonthService.getInstance();
		Map<WeeklyDTO, List<ProductMonthDTO>> monthMap = monthservice.thumbProduct();
		request.setAttribute("monthPrMap", monthMap); // 기획전에 따라서 상품 2개를 가져오는 부분
		
		ListService listService = ListService.getInstance();
		Map<String, List<HotProductDTO>> brProduct = listService.brandProductSelect();
		request.setAttribute("brProduct", brProduct);

		List<HLifeDTO> hLifeList = null;
		HLifeService hls = HLifeService.getInstance();
		hLifeList = hls.healthyLife();
		request.setAttribute("hLifeList", hLifeList);


		List<ProductBrandPriceDTO> recomProductlist = null;

		RecomProductService rps = RecomProductService.getInstance();
		recomProductlist = rps.recomProduct();
		System.out.println(recomProductlist);
		request.setAttribute("recomProductlist", recomProductlist);


		return "/olive/main.jsp";
	}

}
