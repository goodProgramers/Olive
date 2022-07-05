package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProductBrandPriceDTO;
import persistence.ProductDAOImpl;

public class SearchTOP3ProductService {
	// 싱글톤
	private SearchTOP3ProductService() {}
	private static SearchTOP3ProductService instance = null;
	public static SearchTOP3ProductService getInstance() {
		if (instance == null) {
			instance = new SearchTOP3ProductService();
		}
		return instance;
	}

	public List<ProductBrandPriceDTO> serachTop3ProductSelect() {
		Connection con = null;

		try {
			con = ConnectionProvider.getConnection();
			ProductDAOImpl dao = ProductDAOImpl.getInstance();

			List<ProductBrandPriceDTO> searchTop3List = null;
			searchTop3List = dao.selectSearchTop3Products(con);

			return searchTop3List;

		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	} // serachTop3ProductSelect
	
}
