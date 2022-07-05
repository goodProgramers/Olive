package persistence;

import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

public interface CategoryMainDAO {

    public abstract Map<CategoryDTO, Map<CategoryDTO, List<CategoryDTO>>> selectTop(Connection connection);

    public abstract Map<CategoryDTO, ProductBrandPriceDTO> selectMidCaPr(Connection connection);
}
