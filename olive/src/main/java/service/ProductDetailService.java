package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProductDetailDTO;
import persistence.ProduceViewDAO;
import persistence.ProductDetailDAO;
import persistence.ProductDetailPriceDAO;

public class ProductDetailService {
	//싱글톤 : 
	private ProductDetailService() {};
	private static ProductDetailService instance = new ProductDetailService();
	public static ProductDetailService getInstance() {
		return instance;
	}
	
	public ProductDetailDTO prd_imgName(String pr_code) {
		Connection con = null;
		
		try {
			con = ConnectionProvider.getConnection();
			ProductDetailDAO dao = ProductDetailDAO.getInstance();
			ProductDetailDTO dto = null; 
			dto = dao.prd_imgName(con,pr_code);

			return dto;
		} catch (NamingException | SQLException e) {
			//e.printStackTrace();
			JdbcUtil.rollback(con);
			throw new RuntimeException(e);
		} finally {
	    	JdbcUtil.close(con);
	     }
		
	}//prd_imgName 
	
	public ProductDetailDTO prd_price(String pr_code) {
		Connection con = null;
		
		try {
			con = ConnectionProvider.getConnection();
			ProduceViewDAO dao1 = ProduceViewDAO.getInstance();
			dao1.prView(con, pr_code);
			ProductDetailPriceDAO dao = ProductDetailPriceDAO.getInstance();
			ProductDetailDTO dto = null;
			dto = dao.prd_price(con, pr_code);
			
			return dto;
		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
			//e.printStackTrace();
		}finally {
	    	JdbcUtil.close(con);
	     }
		
	}//ProductDetailDTO
		
		
	//pr_view올리는 메서드
	
}
