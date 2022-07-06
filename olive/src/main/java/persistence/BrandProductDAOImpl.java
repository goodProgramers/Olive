package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.util.JdbcUtil;

import domain.BrandDTO;
import domain.ProductBrandPriceDTO;

public class BrandProductDAOImpl implements BrandProductDAO{


	// 1. 싱글톤
	private BrandProductDAOImpl() {}
	private static BrandProductDAOImpl instance = new BrandProductDAOImpl();
	public static BrandProductDAOImpl getInstance() {
		return instance;
	}

	// 브랜드 12개
	@Override
	public String [] selectBrandList(Connection con) throws SQLException {
		String sql ="SELECT DISTINCT b.br_code,br_name "
				+ "FROM product p join brand b on p.br_code=b.br_code "
				+ "ORDER bY br_name DESC ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		String [] brands = new String[12];

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {

				BrandDTO dto = null;
				do {
					dto =  new BrandDTO();
					brands[cnt] = rs.getString("br_name"); // 브랜드 이름
					cnt++;
				} while ( rs.next() && cnt < 12 );
			} // 
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);         
		} // finally

		return brands;
	}	

	// 상품 최대 48개    브랜드 1 -> 상품0~4..
	@Override
	public Map<String, List<ProductBrandPriceDTO>> selectProductList(String [] brands,Connection con) throws SQLException {


		String brlist = "";
		for (int i = 0; i < brands.length; i++) {
			brlist += "'"+ brands[i] + "'";
			if(i < 11) {
				brlist += ",";
			}
		}
		
		String sql ="SELECT p.pr_name, b.br_name, prpri_price, prm_url, prpri_price*(1-NVL(s.sa_rate,0)) realPrice "
				+ "FROM product p JOIN prprice pr ON p.pr_code = pr.pr_code "
				+ "               JOIN brand b ON b.br_code = p.br_code "
				+ "               JOIN productmimg pd ON p.pr_code = pd.pr_code "
				+ "               LEFT OUTER JOIN sale s ON p.pr_code=s.pr_code "
				+ "WHERE br_name IN ("+ brlist + ") "
				+ "ORDER BY br_name DESC ";


		Map<String, List<ProductBrandPriceDTO>> brProduct = null;
		ArrayList<ProductBrandPriceDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				brProduct = new LinkedHashMap<String, List<ProductBrandPriceDTO>>();
				ProductBrandPriceDTO dto = null;
				dto =  new ProductBrandPriceDTO();
				list = new ArrayList<ProductBrandPriceDTO>();
				
				for (int i= 0; i < brands.length; i++) {
					
					dto =  new ProductBrandPriceDTO();
					
					if( brands [i].equals(rs.getString("br_name")) ) {
						dto.setPr_name( rs.getString("pr_name")); // 상품이름
						dto.setBr_name( rs.getString("br_name")); // 브랜드 이름
						dto.setPrpri_price( rs.getInt("prpri_price")); // 단가
						dto.setRealPrice( rs.getInt("realPrice")); // 구매가
						dto.setPrm_url( rs.getString("prm_url")); // 상품 대표 이미지
						list.add(dto);
						if( cnt < 2 ) {
							i--;
						}
						cnt++;
					}else if(  i != 11 && (cnt >= 4 || !brands [i].equals(rs.getString("br_name")) )){
						cnt = 0;
						brProduct.put(brands[i], list);		
						list = new ArrayList<ProductBrandPriceDTO>();
						
						dto.setPr_name( rs.getString("pr_name")); // 상품이름
						dto.setBr_name( rs.getString("br_name")); // 브랜드 이름
						dto.setPrpri_price( rs.getInt("prpri_price")); // 단가
						dto.setRealPrice( rs.getInt("realPrice")); // 구매가
						dto.setPrm_url( rs.getString("prm_url")); // 상품 대표 이미지
						list.add(dto);
					}
					
					if( i == 11 && cnt >= 3 ) {
						brProduct.put(brands[i], list);
					}
					
					rs.next();
				} // for
				
			} // 
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);         
		} // finally

		return brProduct;
	}




}
