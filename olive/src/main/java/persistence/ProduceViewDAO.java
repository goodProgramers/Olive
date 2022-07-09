package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.ProductDetailDTO;


public class ProduceViewDAO {
	
	private ProduceViewDAO() {}
	   private static ProduceViewDAO instance = new ProduceViewDAO();
	   public static ProduceViewDAO getInstance() {
	      return instance;
	   }
	
	public void prView(Connection con, String pr_code) throws SQLException{
		
		
		String sql = " update product set pr_view = pr_view+1 where pr_code = ? ";
		
		   PreparedStatement pstmt =null;
		   ResultSet rs =null;
		   pstmt = con.prepareStatement(sql);
		   pstmt.setString(1, pr_code );
		   rs= pstmt.executeQuery();
		   
		   JdbcUtil.close(pstmt);

		   //롤백할 이유는 없을거 같은데,,, ? ( 상품이 있으니까 페이지 들어온거고 왔으니까 빽할 이유는,.? )
	}
	
}
