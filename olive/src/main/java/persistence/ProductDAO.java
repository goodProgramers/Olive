package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import domain.HLifeDTO;
import domain.ProductBrandPriceDTO;
import domain.ProductDTO;

public interface ProductDAO {
	public List<ProductBrandPriceDTO> selectSearchTop3Products(Connection conn) throws SQLException;

	public abstract List<ProductDTO> selectProducts(Connection conn);
	
	public abstract List<ProductBrandPriceDTO> showProducts(Connection conn);

	public abstract List<HLifeDTO> healthyLife(Connection conn);
}
