package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.ProductDetailDTO;

public class ProductDetailDAO {
	
	private ProductDetailDAO() {}
	   private static ProductDetailDAO instance = new ProductDetailDAO();
	   public static ProductDetailDAO getInstance() {
	      return instance;
	   }

	   public ProductDetailDTO prd_imgName(Connection con, String pr_code) throws SQLException{ // 상품상세에서 이미지,상품명,브랜드 dao?   
		   
		   String sql = "select b.br_name, PR_NAME, PRM_URL "
		   			  + "from product p join productmimg pi on p.pr_code = pi.pr_code "
		   			  + "join brand b on p.br_code= b.br_code "
		   			  + "where p.pr_code = ? ";
		   
		    
		    PreparedStatement pstmt = null;
		    ResultSet rs = null;
		    
		    pstmt=con.prepareStatement(sql);
		    pstmt.setString(1,pr_code);
		    rs=pstmt.executeQuery();
		    
			
		    ProductDetailDTO dto =null; 
			if ( rs.next() ) { 
			
				dto = new ProductDetailDTO();
			do { 
			
			dto.setBr_name(rs.getString("br_name"));
			dto.setPr_name(rs.getString("pr_name"));
			dto.setPrm_url(rs.getString("prm_url"));
			
			
			} while ( rs.next() );
			
			}
			
		  
		    JdbcUtil.close(rs);
		    JdbcUtil.close(pstmt);
		    
		    
		    
		    
		   return dto;
	   }//dao1
	   
	   public ProductDetailDTO prd_price(Connection con, String pr_code) throws SQLException{
		   String sql = "select t.* , s.sa_rate , (1-s.sa_rate)*prpri_price price "
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
