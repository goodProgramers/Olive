package persistence;

import domain.ProductBrandPriceDTO;

import java.sql.Connection;
import java.util.List;

public interface ProductListDAO {
    List<ProductBrandPriceDTO> selectMCateTop5Product(Connection connection, String ca_code);
}
