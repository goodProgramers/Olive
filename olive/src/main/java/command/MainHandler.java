package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ExhibitionDTO;
import domain.MainOnlyoneDTO;
import service.ExhibitionService;
import service.MainOnlyoneService;

public class MainHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ExhibitionService exhibitionService = ExhibitionService.getInstance();
		List<ExhibitionDTO> onlyoneList = exhibitionService.select();
		request.setAttribute("onlyoneList", onlyoneList);
		
		MainOnlyoneService mainOnlyoneService = MainOnlyoneService.getInstance();
		List<MainOnlyoneDTO> mainOnlyoneList = mainOnlyoneService.onlyoneSelect();
		request.setAttribute("mainOnlyoneList", mainOnlyoneList);
				
		return "/olive/main.jsp";
	}

}
