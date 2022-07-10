package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.HotProductDTO;
import persistence.BrandProDAOImpl;

public class ListService {
	
	// 1. 싱글톤
	   private ListService() {}
	   private static ListService instance = new ListService();
	   public static ListService getInstance() {
	      return instance;
	   }
	   
	   public Map<String, List<HotProductDTO>> brandProductSelect(){
		      //
		      Connection conn = null;
		       try {
		         conn = ConnectionProvider.getConnection();
		         BrandProDAOImpl dao = BrandProDAOImpl.getInstance();
		         String [] brlist = null;
		         Map<String, List<HotProductDTO>> brProduct = null;
		         
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
