package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ProductDetailDTO;
import service.ProductDetailService;

public class ProductDetailHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(request.getParameter("pr_code"));
		
		// pr_code 파라미터 받아옴 .
		String pr_code = request.getParameter("pr_code");
		
		//1. 서비스 연결
		 ProductDetailService prds= ProductDetailService.getInstance(); 
		 
		//2. 서비스 함수 선언 및 변수 선언
		 ProductDetailDTO dto = prds.prd_imgName(pr_code); // 상품명 , 대표이미지 , 브랜드 가져오는 부분
		 ProductDetailDTO dtoPrice = prds.prd_price(pr_code); //원가, 세일가 가져오는 부분.
		 
		 //3. 요청에 담기
		 request.setAttribute("img_Name", dto);

		 request.setAttribute("prd_price", dtoPrice);
		System.out.println(dto);
		 System.out.println(dtoPrice);
		return "/olive/productdetail.jsp";
		
		
	}

}
