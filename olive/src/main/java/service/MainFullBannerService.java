package service;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.MainFullBannerDTO;
import persistence.MainFullBannerDAOImpl;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MainFullBannerService {
    private static MainFullBannerService instance;
    private MainFullBannerService(){}
    public static MainFullBannerService getInstance() {
        if (instance == null){
            instance = new MainFullBannerService();
        }
        return instance;
    }

    public List<MainFullBannerDTO> selectMainFullBanner(){
        Connection connection = null;
        ArrayList<MainFullBannerDTO> list = null;
        try {
            connection = ConnectionProvider.getConnection();
            MainFullBannerDAOImpl mainFullBannerDAO = MainFullBannerDAOImpl.getInstance();
            list = (ArrayList<MainFullBannerDTO>) mainFullBannerDAO.selectMainFullBanner(connection);
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
