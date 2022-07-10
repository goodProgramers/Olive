package service;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;
import domain.ProductBrandPriceDTO;
import persistence.SearchAjaxDAOImpl;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class SearchAjaxService {
    private static SearchAjaxService instance;
    private SearchAjaxService(){}
    public static SearchAjaxService getInstance() {
        if (instance == null){
            instance = new SearchAjaxService();
        }
        return instance;
    }

    public List<ProductBrandPriceDTO> selectSearchProduct(String keyWord, String searchCondition){
        List<ProductBrandPriceDTO> list = null;
        Connection connection = null;
        try {
            connection = ConnectionProvider.getConnection();
            SearchAjaxDAOImpl searchAjaxDAO = SearchAjaxDAOImpl.getInstance();
            list = searchAjaxDAO.selectSearchProduct(connection, keyWord, searchCondition);
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
