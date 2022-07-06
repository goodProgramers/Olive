package service;

import com.util.ConnectionProvider;
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

    public List<ProductBrandPriceDTO> selectMCateProduct(String ca_code) {

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
        }

        return list;
    }
}
