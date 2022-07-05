package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import domain.ProductBrandPriceDTO;

public interface ProductDAO {
	public List<ProductBrandPriceDTO> selectSearchTop3Products(Connection conn) throws SQLException;

}
