package command;

import domain.BrandDTO;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;
import service.SearchService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class SearchHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
            String keyword = null;
        if(request.getParameter("keyWord") != null && request.getParameter("keyWord") != ""){
            keyword = request.getParameter("keyWord");
        } else {
            //임시
            response.sendRedirect("/olive/main.do");
            return null;
        }




        SearchService searchService = SearchService.getInstance();
        List<ProductBrandPriceDTO> searchProductList = searchService.selectSearchProduct(keyword);
        request.setAttribute("searchProductList", searchProductList);

        List<BrandDTO> searchBrandList = searchService.selectSearchBrand(keyword);
        request.setAttribute("searchBrandList",searchBrandList);

        List<CategoryDTO> searchCategoryList = searchService.selectDCategory(keyword);
        request.setAttribute("searchCategoryList",searchCategoryList);

        return "/olive/search.jsp";
    }
}
