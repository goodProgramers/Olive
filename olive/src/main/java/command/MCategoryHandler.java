package command;

import domain.CategoryDTO;
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

        List<CategoryDTO> MSCatelist = mCategoryService.selectMSCategory(ca_code);
        request.setAttribute("MSCatelist", MSCatelist);

        List<ProductBrandPriceDTO> top5list = mCategoryService.selectMCateTop5Product(ca_code);
        request.setAttribute("top5list", top5list);

        List<ProductBrandPriceDTO> topViewlist = mCategoryService.selectMCateTopVeiwProduct(ca_code);
        request.setAttribute("topViewlist", topViewlist);

        return "/olive/productMCate.jsp";
    }
}
