package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.HLifeDTO;
import service.HLifeService;

public class HLifeHandler implements CommandHandler {

	//매장불러오기
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		List<HLifeDTO> hLifeList = null;
		
		HLifeService hls = HLifeService.getInstance();
		hLifeList = hls.healthyLife();
		
		//System.out.println("handler"+list);
		request.setAttribute("hLifeList", hLifeList);
		
		System.out.println("핸들러"+hLifeList);
		return "/mainpage/main.jsp";
	}
	
	//
	
	

}
