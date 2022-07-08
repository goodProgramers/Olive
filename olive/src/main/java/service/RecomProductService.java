package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import domain.ProductBrandPriceDTO;
import persistence.ProductDAOImpl;

public class RecomProductService {

	private static RecomProductService instance;

	private RecomProductService(){};

	public static RecomProductService getInstance(){
		if(instance ==null) {
			instance = new RecomProductService();
		}
		return instance;
	}
	
	
	public List<ProductBrandPriceDTO> recomProduct() {
		Connection conn = null;
		List<ProductBrandPriceDTO> recomProductlist = null;
	try {
		conn = ConnectionProvider.getConnection();
		ProductDAOImpl dao = ProductDAOImpl.getInstance();
		recomProductlist = dao.showProducts(conn);
		
		System.out.println(conn);
		
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
		 System.out.println("service"+recomProductlist);
	return recomProductlist;
	}
	
	
	
}
