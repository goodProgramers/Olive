package persistence;

import domain.MainFullBannerDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MainFullBannerDAOImpl implements MainFullBannerDAO{
    private static MainFullBannerDAOImpl instance;
    private MainFullBannerDAOImpl() {}
    public static MainFullBannerDAOImpl getInstance(){
        if (instance ==null) {
            instance = new MainFullBannerDAOImpl();
        }
        return instance;
    }

    public List<MainFullBannerDTO> selectMainFullBanner(Connection connection) {
        ArrayList<MainFullBannerDTO> list = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MainFullBannerDTO mainFullBannerDTO = null;
        String sql = "SELECT ex.ex_code banner_code, ex.ex_name banner_title, exi.exi_img banner_img, exi_title banner_title, exi_desc banner_desc " +
                "FROM exhibition ex JOIN exhibitionimg exi ON ex.ex_code = exi.ex_code " +
                "WHERE exi.exi_type = 0 ";

        try {
            pstmt = connection.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if (rs.next()){
                list = new ArrayList<>();
                do {
                    mainFullBannerDTO = new MainFullBannerDTO();
                    mainFullBannerDTO.setBanner_code(rs.getString("banner_code"));
                    mainFullBannerDTO.setBanner_title(rs.getString("banner_title"));
                    mainFullBannerDTO.setBanner_img(rs.getString("banner_img"));
                    mainFullBannerDTO.setBanner_desc(rs.getString("banner_desc"));
                    list.add(mainFullBannerDTO);
                } while (rs.next());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}
