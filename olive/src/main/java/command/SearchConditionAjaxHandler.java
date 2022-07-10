package command;

import domain.ProductBrandPriceDTO;
import service.SearchAjaxService;
import service.SearchService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class SearchConditionAjaxHandler implements CommandHandler{
    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String keyWord = request.getParameter("keyWord");
        String searchCondition = request.getParameter("searchCondition");


        SearchAjaxService searchAjaxService = SearchAjaxService.getInstance();
        List<ProductBrandPriceDTO> searchProductList = searchAjaxService.selectSearchProduct(keyWord, searchCondition);
        request.setAttribute("searchProductList", searchProductList);
        return "/olive/searchJSON.jsp";
    }
}
