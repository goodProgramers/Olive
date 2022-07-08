package persistence;

import domain.BrandDTO;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;

import java.sql.Connection;
import java.util.List;

public interface SCategoryDAO {
    List<CategoryDTO> selectTopCategory(Connection connection, String ca_code);
    List<CategoryDTO> selectDCategory(Connection connection, String ca_code);

    List<BrandDTO> selectBrand(Connection connection, String ca_code);

    List<ProductBrandPriceDTO> selectProduct(Connection connection, String ca_code);
}
