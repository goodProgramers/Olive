package command;

import domain.BrandDTO;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;
import service.CategoryMidService;
import service.MCategoryService;
import service.SCategoryService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class SCategoryHandler implements CommandHandler {

    @Override
    public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String ca_code = request.getParameter("ca_code");
        SCategoryService sCategoryService = SCategoryService.getInstance();

        List<CategoryDTO> topcategoryList= sCategoryService.selectTCategory(ca_code);
        request.setAttribute("topcategoryList", topcategoryList);

        List<CategoryDTO> dCategoryList = sCategoryService.selectDCategory(ca_code);
        request.setAttribute("dCategoryList", dCategoryList);

        int dCategorySize = dCategoryList.size() / 6 + 6 - 1 ;
        request.setAttribute("dCategorySize", dCategorySize);

        List<BrandDTO> sBrandList = sCategoryService.selectSCateBrand(ca_code);
        request.setAttribute("sBrandList", sBrandList);

        List<ProductBrandPriceDTO> sProductList = sCategoryService.selectSCateProduct(ca_code);
        request.setAttribute("sProductList", sProductList);

        return "/olive/productSCate.jsp";
    }
}
