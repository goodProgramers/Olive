package persistence;

import java.sql.Connection;
import java.util.List;

import domain.Cart;
import domain.ProductBrandPriceDTO;

public interface CartDAO {
   	
	public abstract List<ProductBrandPriceDTO> showCart(Connection conn, List<Cart> getsessionCartList);
	
}
