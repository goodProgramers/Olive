package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.util.JdbcUtil;

import domain.ProductMonthDTO;
import domain.WeeklyDTO;

public class MonthDAO {
	
	private MonthDAO() {}
	   private static MonthDAO instance = new MonthDAO();
	   public static MonthDAO getInstance() {
	      return instance;
	   }
	
	public Map<WeeklyDTO, List<ProductMonthDTO>> MonthSelect(Connection con) throws SQLException{
		
		//기획전 가져오는 쿼리
		String sql = "select rownum , a.* "
						+ "from(      "
						+ "     select e.ex_code , exi_img , exi_title , exi_desc "
						+ "     from exhibition e join exhibitionimg i on e.ex_code = i.ex_code   "
						+ "     where exi_type=1 and substr(ex_start,4,2) = TO_CHAR(SYSDATE, 'MM') "
						+ "     ) a "
						+ "where rownum <= 6";
		
		//기획전에 해당하는 상품 가져오는 쿼리
		//상품이미지, 브랜드 이름, 상품이름 , 원가 , 판매가
		String sql1 = " select t.*, trunc( (1-sa_rate)*prpri_price , -2) price "
				+ "from( "
				+ "    select p.pr_code, prm_url, br_name, pr_name, price.prpri_price, e.ex_code     "
				+ "    from product p join productmimg pm on p.pr_code = pm.pr_code "
				+ "                   join exhibitionpdt epr on p.pr_code = epr.pr_code "
				+ "                   join brand b on p.br_code = b.br_code "
				+ "                   join prprice price on p.pr_code = price.pr_code "
				+ "                   join exhibition e on e.ex_code = epr.ex_code "
				+ "    )t "
				+ "    left join sale s on t.pr_code = s.pr_code "
				+ " where ex_code= ? "; 
		
		
		// 기획전 하나에 2개의 상품을 담기위해서 map을 사용해서 하나의 기획전에 두개이상품 리스트
		Map<WeeklyDTO, List<ProductMonthDTO>> exPrMap = null; 
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		PreparedStatement pstmt1 = null;
		ResultSet rs1 = null;
		
		try {
			
			
			pstmt= con.prepareStatement(sql);
			rs= pstmt.executeQuery();
			if ( rs.next() ) {
				exPrMap = new LinkedHashMap<WeeklyDTO, List<ProductMonthDTO>>(); 
				WeeklyDTO dto = null;
				do { // 기획전 6개 데이터 있음  6번 돌아
					
					List<ProductMonthDTO> prList = null;
					
					
					dto = new WeeklyDTO();
					
					//1번쨰
					
					
					dto.setEX_CODE(rs.getString("EX_CODE"));
					dto.setEXI_IMG(rs.getString("EXI_IMG")); 
					dto.setEXI_TITLE(rs.getString("EXI_TITLE")); 
					dto.setEXI_DESC(rs.getString("EXI_DESC")); 
					
					pstmt1 = con.prepareStatement(sql1);
					pstmt1.setString(1, dto.getEX_CODE() );
					
					// value 값 돌면서 생김... 
					rs1 = pstmt1.executeQuery();
					
					if( rs1.next() ) {
						ProductMonthDTO dto1 =null; 
						prList = new ArrayList<ProductMonthDTO>();
						do {
							
							dto1=new ProductMonthDTO();
							
							dto1.setPrm_url(rs1.getString("prm_url"));
							dto1.setBr_name(rs1.getString("br_name"));
							dto1.setPr_name(rs1.getString("pr_name"));
							dto1.setPrpri_price(rs1.getInt("prpri_price"));
							dto1.setPrice(rs1.getInt("price"));
							
							
							
							prList.add(dto1);
							
						} while ( rs1.next() );
						
					}//if
					
					
					
					exPrMap.put(dto, prList);
					
					
					
				} while ( rs.next() );
			}
			
		} finally {
			
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		
		return exPrMap;
		
	}// 
	
	// 또 다른 데이터를 가져오는 함수
	
}
