package service;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;
import domain.BrandDTO;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;
import persistence.SearchDAOImpl;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SearchService {
    private static SearchService instance;
    private SearchService(){}
    public static SearchService getInstance() {
        if (instance == null){
            instance = new SearchService();
        }
        return instance;
    }

    public List<ProductBrandPriceDTO> selectSearchProduct(String keyword){
        List<ProductBrandPriceDTO> list = null;
        Connection connection = null;
        try {
            connection = ConnectionProvider.getConnection();
            SearchDAOImpl searchDAO = SearchDAOImpl.getInstance();
            list = searchDAO.selectSearchProduct(connection, keyword);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JdbcUtil.close(connection);
        }
        return list;
    }

    public List<BrandDTO> selectSearchBrand(String keyword) {
        List<BrandDTO> list = null;
        Connection connection = null;
        try {
            connection = ConnectionProvider.getConnection();
            SearchDAOImpl searchDAO = SearchDAOImpl.getInstance();
            list = searchDAO.selectSearchBrand(connection, keyword);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JdbcUtil.close(connection);
        }
        return list;
    }

    public List<CategoryDTO> selectDCategory(String keyword) {
        List<CategoryDTO> list = null;
        Connection connection = null;
        try {
            connection = ConnectionProvider.getConnection();
            SearchDAOImpl searchDAO = SearchDAOImpl.getInstance();
            list = searchDAO.selectSearchCategory(connection, keyword);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JdbcUtil.close(connection);
        }
        return list;
    }
}
