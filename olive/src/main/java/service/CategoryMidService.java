package service;

import com.util.ConnectionProvider;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;
import persistence.CategoryMainDAOImpl;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

public class CategoryMidService {
    private static CategoryMidService instance;
    private CategoryMidService(){}
    public static CategoryMidService getInstance() {
        if (instance == null){
            instance = new CategoryMidService();
        }
        return instance;
    }

    public Map<CategoryDTO, ProductBrandPriceDTO> selectBannerCaPr(){
        Map<CategoryDTO, ProductBrandPriceDTO> midCaPrMap = null;
        Connection connection = null;
        try {
            connection = ConnectionProvider.getConnection();
            CategoryMainDAOImpl categoryMainDAO = CategoryMainDAOImpl.getInstance();
            midCaPrMap = categoryMainDAO.selectMidCaPr(connection);
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
        return midCaPrMap;
    }

}
