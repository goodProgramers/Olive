package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.ProductDetailDTO;

public class ProductDetailPriceDAO {
	
	private ProductDetailPriceDAO() {}
	   private static ProductDetailPriceDAO instance = new ProductDetailPriceDAO();
	   public static ProductDetailPriceDAO getInstance() {
	      return instance;
	   }

	   
	   
	   public ProductDetailDTO prd_price(Connection con, String pr_code) throws SQLException{
		   String sql = "select t.* , s.sa_rate , TRUNC((1-s.sa_rate)*prpri_price,-2) price "
		   			+ "from ( "
		   			+ "        select  p.pr_code, pr_count, prpri_price  "
		   			+ "        from product p join prprice prp on p.pr_code = prp.pr_code "
		   			+ "     )t " 
		   			+ " left join sale s on t.pr_code= s.pr_code "
		   			+ "where t.pr_code=? ";
		   
		   PreparedStatement pstmt =null;
		   ResultSet rs =null;
		   ProductDetailDTO dto =null; 
		   
		   pstmt = con.prepareStatement(sql);
		   pstmt.setString(1, pr_code );
		   rs= pstmt.executeQuery();
		   

		   if (rs.next()) {
			   dto=new ProductDetailDTO();
			   
			   dto.setPr_code(rs.getString("pr_code"));
			   dto.setPrpri_price(rs.getInt("prpri_price"));
			   dto.setSa_rate(rs.getDouble("sa_rate"));
			   dto.setPrice(rs.getInt("price"));
			   dto.setPr_count(rs.getInt("pr_count"));
			   
			   System.out.println(dto);
		}
		    JdbcUtil.close(rs);
		    JdbcUtil.close(pstmt);
		    
		   
		   return dto;
	   }//dao2
		   
		   
	   
	
}//class
