package service;

import com.util.ConnectionProvider;
import domain.CategoryDTO;
import persistence.CategoryMainDAOImpl;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class CategoryMainService {
    //싱글톤
    private CategoryMainService() {}
    private static CategoryMainService categoryMainService = new CategoryMainService();
    public static CategoryMainService getInstance() {return categoryMainService;}

    public Map<CategoryDTO, Map<CategoryDTO, List<CategoryDTO>>> selectTopCate() {
        Connection connection = null;
        try {
            connection = ConnectionProvider.getConnection();
            CategoryMainDAOImpl categoryMainDAO  = CategoryMainDAOImpl.getInstance();
            Map<CategoryDTO, Map<CategoryDTO, List<CategoryDTO>>> totMap = categoryMainDAO.selectTop(connection);
            return totMap;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
