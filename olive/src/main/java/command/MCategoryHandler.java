package command;

import domain.ProductBrandPriceDTO;
import service.MCategoryService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class MCategoryHandler implements  CommandHandler{
    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String ca_code = request.getParameter("ca_code");
        MCategoryService mCategoryService= MCategoryService.getInstance();
        List<ProductBrandPriceDTO> top5list = mCategoryService.selectMCateProduct(ca_code);
        request.setAttribute("top5list", top5list);


        return "/olive/productMCate.jsp";
    }
}
