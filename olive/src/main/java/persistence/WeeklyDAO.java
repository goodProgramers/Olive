package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.WeeklyDTO;

public class WeeklyDAO {
	
	private WeeklyDAO() {}
	   private static WeeklyDAO instance = new WeeklyDAO();
	   public static WeeklyDAO getInstance() {
	      return instance;
	   }
	
	public List<WeeklyDTO> weelklySelect(Connection con) throws SQLException{
		
		
		String sql = "select rownum,a.* "
				 		+ " from( "
				 		+ " select exi_code , exi_img , exi_title , exi_desc "
					    + " from exhibition e join exhibitionimg i on e.ex_code = i.ex_code "  
					    + " where exi_type=1 "				  
					    + " order by e.ex_start desc "
					    + ") a "     
					    + " where rownum <=2 ";
		
		ArrayList<WeeklyDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			
			pstmt= con.prepareStatement(sql);
			rs= pstmt.executeQuery();
			if ( rs.next() ) {
				list = new ArrayList<WeeklyDTO>();
				WeeklyDTO dto = null;
				do {
					
					dto = new WeeklyDTO();

					dto.setEXI_IMG(rs.getString("EXI_IMG")); 
					dto.setEXI_TITLE(rs.getString("EXI_TITLE")); 
					dto.setEXI_DESC(rs.getString("EXI_DESC")); 
				
					list.add(dto);
				} while ( rs.next() );
			}
			
		} finally {
			
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return list;
		
	}
	
}
