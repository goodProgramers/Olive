package persistence;

import domain.ProductBrandPriceDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductListDAOImpl implements ProductListDAO {
    private ProductListDAOImpl() {}
    private static ProductListDAOImpl instance = null;
    public static ProductListDAOImpl getInstance() {
        if(instance == null) {
            instance = new ProductListDAOImpl();
        }
        return instance;
    }
    @Override
    public List<ProductBrandPriceDTO> selectMCateTop5Product(Connection connection, String ca_code) {

        List<ProductBrandPriceDTO> list = null;
        String sql = "SELECT *  " +
                "FROM (  " +
                "    SELECT p.*, b.br_name, pi.prm_url , NVL(pr.prpri_price, 0) price, NVL(s.sa_rate, 0) sale_rate, NVL(pr.prpri_price, 0)*(1-NVL(s.sa_rate, 0)) realprice " +
                "    FROM product p  " +
                "        JOIN brand b ON p.br_code = b.br_code  " +
                "        LEFT OUTER JOIN productmimg pi ON p.pr_code = pi.pr_code  " +
                "        LEFT OUTER JOIN (SELECT * FROM prprice WHERE prpri_enddate IS NULL) pr ON p.pr_code = pr.pr_code  " +
                "        LEFT OUTER JOIN (SELECT * FROM sale WHERE sa_end_date >= SYSDATE AND sa_date <= SYSDATE) s ON p.pr_code = s.pr_code " +
                "        WHERE ca_code IN (  " +
                "            SELECT ca_code  " +
                "            FROM category  " +
                "            WHERE ca_topcode IN ( " +
                "                SELECT ca_code  " +
                "                FROM category  " +
                "                WHERE ca_topcode = ?  " +
                "            )  " +
                "        )  " +
                "    ORDER BY p.pr_count DESC  " +
                ")  " +
                "WHERE ROWNUM <= 5 ";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, ca_code);
            rs = pstmt.executeQuery();
            ProductBrandPriceDTO prDTO = null;
            if (rs.next()){
                list = new ArrayList<>();
                do {
                    prDTO = new ProductBrandPriceDTO();
                    prDTO.setPr_code(rs.getString("pr_code"));
                    prDTO.setPr_name(rs.getString("pr_name"));
                    prDTO.setPr_name(rs.getString("pr_name"));
                    prDTO.setPrpri_price(rs.getInt("price"));
                    prDTO.setSa_rate(rs.getDouble("sale_rate"));
                    prDTO.setRealPrice(rs.getInt("realprice"));
                    prDTO.setBr_name(rs.getString("br_name"));
                    prDTO.setPrm_url(rs.getString("prm_url"));
                    list.add(prDTO);
                } while (rs.next());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                rs.close();
                pstmt.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        }


        return list;
    }

    @Override
    public List<ProductBrandPriceDTO> selectMCateTopVeiwProduct(Connection connection, String ca_code) {
        List<ProductBrandPriceDTO> list = null;
        String sql = "SELECT *  " +
                "FROM (  " +
                "    SELECT p.*, b.br_name, pi.prm_url , NVL(pr.prpri_price, 0) price, NVL(s.sa_rate, 0) sale_rate, NVL(pr.prpri_price, 0)*(1-NVL(s.sa_rate, 0)) realprice " +
                "    FROM product p  " +
                "        JOIN brand b ON p.br_code = b.br_code  " +
                "        LEFT OUTER JOIN productmimg pi ON p.pr_code = pi.pr_code  " +
                "        LEFT OUTER JOIN (SELECT * FROM prprice WHERE prpri_enddate IS NULL) pr ON p.pr_code = pr.pr_code  " +
                "        LEFT OUTER JOIN (SELECT * FROM sale WHERE sa_end_date >= SYSDATE AND sa_date <= SYSDATE) s ON p.pr_code = s.pr_code " +
                "        WHERE ca_code IN (  " +
                "            SELECT ca_code  " +
                "            FROM category  " +
                "            WHERE ca_topcode IN ( " +
                "                SELECT ca_code  " +
                "                FROM category  " +
                "                WHERE ca_topcode = ?  " +
                "            )  " +
                "        )  " +
                "    ORDER BY p.pr_view DESC  " +
                ")  " +
                "WHERE ROWNUM <= 20 ";

        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, ca_code);
            rs = pstmt.executeQuery();
            ProductBrandPriceDTO prDTO = null;
            if (rs.next()){
                list = new ArrayList<>();
                do {
                    prDTO = new ProductBrandPriceDTO();
                    prDTO.setPr_code(rs.getString("pr_code"));
                    prDTO.setPr_name(rs.getString("pr_name"));
                    prDTO.setPr_name(rs.getString("pr_name"));
                    prDTO.setPrpri_price(rs.getInt("price"));
                    prDTO.setSa_rate(rs.getDouble("sale_rate"));
                    prDTO.setRealPrice(rs.getInt("realprice"));
                    prDTO.setBr_name(rs.getString("br_name"));
                    prDTO.setPrm_url(rs.getString("prm_url"));
                    list.add(prDTO);
                } while (rs.next());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                rs.close();
                pstmt.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        }
        return list;
    }
}
