package service;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.BrandDTO;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;
import persistence.ProductListDAOImpl;
import persistence.SCategoryDAOImpl;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class SCategoryService {
    private static SCategoryService instance;
    private SCategoryService(){}
    public static SCategoryService getInstance() {
        if (instance == null){
            instance = new SCategoryService();
        }
        return instance;
    }

    public List<CategoryDTO> selectTCategory(String ca_code) {
        SCategoryDAOImpl sCategoryDAO = SCategoryDAOImpl.getInstance();
        Connection connection = null;
        List<CategoryDTO> list = null;
        try {
            connection = ConnectionProvider.getConnection();
            list = sCategoryDAO.selectTopCategory(connection, ca_code);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
        	JdbcUtil.close(connection);
        	/*
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            */
        }
        return list;
    }

    public List<CategoryDTO> selectDCategory(String ca_code) {
        SCategoryDAOImpl sCategoryDAO = SCategoryDAOImpl.getInstance();
        Connection connection = null;
        List<CategoryDTO> list = null;
        try {
            connection = ConnectionProvider.getConnection();
            list = sCategoryDAO.selectDCategory(connection, ca_code);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
        	JdbcUtil.close(connection);
        	/*
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            */
        }
        return list;
    }
    
    public List<BrandDTO> selectSCateBrand(String ca_code) {
        List<BrandDTO> list = null;
        Connection connection = null;
        try {
            connection = ConnectionProvider.getConnection();
            SCategoryDAOImpl sCategoryDAO = SCategoryDAOImpl.getInstance();
            list = sCategoryDAO.selectBrand(connection, ca_code);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
        	JdbcUtil.close(connection);
        	/*
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            */
        }

        return list;
    }

    public List<ProductBrandPriceDTO> selectSCateProduct(String ca_code) {
        List<ProductBrandPriceDTO> list= null;
        Connection connection = null;
        try {
            connection = ConnectionProvider.getConnection();
            SCategoryDAOImpl sCategoryDAO = SCategoryDAOImpl.getInstance();
            list = sCategoryDAO.selectProduct(connection, ca_code);
        } catch (NamingException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
        	JdbcUtil.close(connection);
        	/*
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            */
        }
        
        return list;
    }
}
