package service;

import com.util.ConnectionProvider;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;
import persistence.ProductListDAOImpl;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MCategoryService {

    private static MCategoryService instance;
    private MCategoryService(){}
    public static MCategoryService getInstance() {
        if (instance == null){
            instance = new MCategoryService();
        }
        return instance;
    }

    public List<ProductBrandPriceDTO> selectMCateTop5Product(String ca_code) {
        ProductListDAOImpl productListDAO = ProductListDAOImpl.getInstance();
        Connection connection = null;
        List<ProductBrandPriceDTO> list = null;
        try {
            connection = ConnectionProvider.getConnection();
            list = productListDAO.selectMCateTop5Product(connection, ca_code);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        return list;
    }

    public List<ProductBrandPriceDTO> selectMCateTopVeiwProduct(String ca_code) {
        ProductListDAOImpl productListDAO = ProductListDAOImpl.getInstance();
        Connection connection = null;
        List<ProductBrandPriceDTO> list = null;
        try {
            connection = ConnectionProvider.getConnection();
            list = productListDAO.selectMCateTopVeiwProduct(connection, ca_code);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return list;
    }

    public List<CategoryDTO> selectMSCategory(String ca_code) {
        ProductListDAOImpl productListDAO = ProductListDAOImpl.getInstance();
        Connection connection = null;
        List<CategoryDTO> list = null;
        try {
            connection = ConnectionProvider.getConnection();
            list = productListDAO.selectMSCategory(connection, ca_code);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return list;
    }
}
