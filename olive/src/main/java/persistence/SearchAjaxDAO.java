package persistence;

import domain.BrandDTO;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;

import java.sql.Connection;
import java.util.List;

public interface SearchAjaxDAO {
    List<ProductBrandPriceDTO> selectSearchProduct(Connection connection, String keyword, String searchCondition);


}
