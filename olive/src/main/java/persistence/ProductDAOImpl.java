package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.ProductBrandPriceDTO;

public class ProductDAOImpl implements ProductDAO{
	// 싱글톤
	private ProductDAOImpl() {}
	private static ProductDAOImpl instance = null;
	public static ProductDAOImpl getInstance() {
		if(instance == null) {
			instance = new ProductDAOImpl();
		}
		return instance;
	}

	@Override
	public List<ProductBrandPriceDTO> selectSearchTop3Products(Connection conn) throws SQLException {
		List<ProductBrandPriceDTO> searchTop3ProductList = null;
		
		String sql = "SELECT ROWNUM, p.pr_name, b.br_name, prpri_price, prpri_price*(1-NVL(s.sa_rate,0)) realPrice, prm_url "
					+ "FROM product p JOIN prprice pr ON p.pr_code = pr.pr_code JOIN brand b ON b.br_code = p.br_code  "
					+ "JOIN productmimg pdmi ON p.pr_code = pdmi.pr_code  "
					+ "LEFT OUTER JOIN sale s ON p.pr_code=s.pr_code "
					+ "WHERE ROWNUM <= 3 "
					+ "ORDER BY NVL(s.sa_rate,0) desc";

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next()) {
				searchTop3ProductList = new ArrayList<ProductBrandPriceDTO>();
				ProductBrandPriceDTO dto = null;
				do {
					dto = new ProductBrandPriceDTO();

					dto.setPr_name(rs.getString("pr_name"));
					dto.setPrpri_price(rs.getInt("prpri_price"));
					dto.setBr_name(rs.getString("br_name"));
					dto.setRealPrice(rs.getInt("realPrice"));
					dto.setPrm_url(rs.getString("prm_url"));

					searchTop3ProductList.add(dto);

				} while ( rs.next());
			}

		} catch (SQLException e) { 
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				rs.close();
			} catch (SQLException e) { 
				e.printStackTrace();
			}
		} 

		return searchTop3ProductList;
	} // selectProducts

}
