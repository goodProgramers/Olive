package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import domain.BrandDTO;
import domain.HotProductDTO;

public interface BrandProDAO {
	
	// 1. 브랜드별 상품 맵
	public Map<String, List<HotProductDTO>> selectProductList(String [] brands,Connection con) throws SQLException;
	
	// 2. 브랜드 리스트
	public String [] selectBrandList(Connection con) throws SQLException;
}
