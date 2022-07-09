package persistence;

import domain.BrandDTO;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;

import java.sql.Connection;
import java.util.List;

public interface SearchDAO {
    List<ProductBrandPriceDTO> selectSearchProduct(Connection connection, String keyword);

    List<BrandDTO> selectSearchBrand(Connection connection, String keyword);

    List<CategoryDTO> selectSearchCategory(Connection connection, String keyword);

}
