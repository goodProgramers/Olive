package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProductBrandPriceDTO;
import persistence.BrandProductDAOImpl;

public class BrandProductService {
	
	// 1. 싱글톤
	   private BrandProductService() {}
	   private static BrandProductService instance = new BrandProductService();
	   public static BrandProductService getInstance() {
	      return instance;
	   }
	   
	   public Map<String, List<ProductBrandPriceDTO>> brandProductSelect(){
		      //
		      Connection conn = null;
		       try {
		         conn = ConnectionProvider.getConnection();
		         BrandProductDAOImpl dao = BrandProductDAOImpl.getInstance();
		         String [] brlist = null;
		         Map<String, List<ProductBrandPriceDTO>> brProduct = null;
		         
		         brlist = dao.selectBrandList(conn);
		         brProduct = dao.selectProductList(brlist, conn);
		         
		         
		         return brProduct;
		      } catch (NamingException | SQLException e) { 
		         throw new RuntimeException(e);
		      } finally {
		         JdbcUtil.close(conn);
		      }
		   } // brandProductSelect
	
	
}
