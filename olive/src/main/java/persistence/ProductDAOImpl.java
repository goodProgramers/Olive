package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.HLifeDTO;
import domain.ProductBrandPriceDTO;
import domain.ProductDTO;

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

		// System.out.println("dao"+recomProductlist);
		return searchTop3ProductList;
	} // selectProducts

	
	@Override
	public List<ProductDTO> selectProducts(Connection conn) {

		List<ProductDTO> productlist = null;
		String sql = "SELECT ROWNUM, product.* "
					+ " FROM product "
					+ " WHERE ROWNUM <= 6";
		
		PreparedStatement pstmt =null;
		ResultSet rs =null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next()) {
				productlist = new ArrayList<ProductDTO>();
				ProductDTO dto = null;
				do {
				  dto = new ProductDTO();
				 
				  dto.setPr_code(rs.getString("pr_code"));
				  dto.setPr_name(rs.getString("pr_name"));
				  dto.setBr_code(rs.getString("br_code"));
				  dto.setCa_code(rs.getString("ca_code"));
				  dto.setPr_count(rs.getInt("pr_count"));
				  dto.setPr_date(rs.getDate("pr_date"));
				  		  
				  
				  productlist.add(dto);
				  
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
		return productlist;
	}

	
	//이상품어때요 부분 구현
	@Override
	public List<ProductBrandPriceDTO> showProducts(Connection conn) {
		
		List<ProductBrandPriceDTO> recomProductlist = null;
		String sql = "SELECT ROWNUM,p.pr_name, b.br_name, prpri_price, prpri_price*(1-NVL(s.sa_rate,0)) realPrice, prd_img  "
				+ "  FROM product p JOIN prprice pr ON p.pr_code = pr.pr_code JOIN brand b ON b.br_code = p.br_code  "
				+ "           JOIN productdimg pdi ON p.pr_code = pdi.pr_code  "
				+ "           LEFT OUTER JOIN sale s ON p.pr_code=s.pr_code  "
				+ "  WHERE ROWNUM <=12  ";
		
		PreparedStatement pstmt =null;
		ResultSet rs =null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next()) {
				recomProductlist = new ArrayList<ProductBrandPriceDTO>();
				ProductBrandPriceDTO dto = null;
				do {
				  dto = new ProductBrandPriceDTO();
				 
				  dto.setPr_name(rs.getString("pr_name"));
				  dto.setPrpri_price(rs.getInt("prpri_price"));
				  dto.setBr_name(rs.getString("br_name"));
				  dto.setRealPrice(rs.getInt("realPrice"));
				  dto.setPrm_url(rs.getString("prm_url"));
				  
				  recomProductlist.add(dto);
				  
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
		System.out.println("dao"+recomProductlist);
		return recomProductlist;
	}

	
	@Override
	public List<HLifeDTO> healthyLife(Connection conn) {
		
		List<HLifeDTO> HLifeList = null;
		String sql = " SELECT hl_title, hl_desc, hl_img "
					+ " FROM hlife ";
		
		PreparedStatement pstmt =null;
		ResultSet rs =null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next()) {
				HLifeList = new ArrayList<HLifeDTO>();
				HLifeDTO dto = null;
				do {
				  dto = new HLifeDTO();
				 
				  dto.setHl_title(rs.getString("hl_title"));
				  dto.setHl_desc(rs.getString("hl_desc"));
				  dto.setHl_img(rs.getString("hl_img"));
				  
				  HLifeList.add(dto);
				  
				 // System.out.println(dto.toString());
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
		System.out.println("daoimpl"+ HLifeList);
		return HLifeList;
	}

	
	
	
	
}
