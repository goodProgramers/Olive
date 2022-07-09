package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import domain.Cart;
import domain.ProductBrandPriceDTO;
import persistence.CartDAOImpl;

public class CartService {

	//싱글톤
	private static CartService instance;
	
	private CartService(){};
	
	public static CartService getInstance(){
		if(instance ==null) {
			instance = new CartService();
		}
		return instance;
	}
	

	public List<ProductBrandPriceDTO> showCart(List<Cart> getsessionCartList) {
		Connection conn = null;
		List<ProductBrandPriceDTO> cartList = null;
	try {
		conn = ConnectionProvider.getConnection();
		CartDAOImpl dao = CartDAOImpl.getInstance();
		cartList = dao.showCart(conn, getsessionCartList);
		
		//System.out.println(conn);
		
	} catch (NamingException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		try {
			conn.close();
		} catch (SQLException e) { 
			e.printStackTrace();
		}
	}
		//System.out.println("서비스"+ cartList);
	    return cartList;
		
		
	}
	
	
	
}
