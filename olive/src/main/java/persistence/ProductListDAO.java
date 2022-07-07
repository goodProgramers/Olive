package persistence;

import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;

import java.sql.Connection;
import java.util.List;

public interface ProductListDAO {
    List<ProductBrandPriceDTO> selectMCateTop5Product(Connection connection, String ca_code);

    List<ProductBrandPriceDTO> selectMCateTopVeiwProduct(Connection connection, String ca_code);

    List<CategoryDTO> selectMSCategory(Connection connection, String ca_code);
}
