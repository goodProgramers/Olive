package persistence;

import com.util.JdbcUtil;
import domain.BrandDTO;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;
import service.SearchService;

import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SearchDAOImpl implements SearchDAO {

    private static SearchDAOImpl instance;
    private SearchDAOImpl(){}
    public static SearchDAOImpl getInstance() {
        if (instance == null){
            instance = new SearchDAOImpl();
        }
        return instance;
    }

    public List<ProductBrandPriceDTO> selectSearchProduct(Connection connection, String keyword){
        String realKeyword = "*" + keyword.replaceAll("\\s", "");
        System.out.println(realKeyword);
        List<ProductBrandPriceDTO> list = null;
        String sql = "SELECT p.*, b.br_name, pi.prm_url , NVL(pr.prpri_price, 0) price, NVL(s.sa_rate, 0) sale_rate, NVL(pr.prpri_price, 0)*(1-NVL(s.sa_rate, 0)) realprice " +
                "FROM product p " +
                "    JOIN brand b ON p.br_code = b.br_code  " +
                "    LEFT OUTER JOIN productmimg pi ON p.pr_code = pi.pr_code  " +
                "    LEFT OUTER JOIN (SELECT * FROM prprice WHERE prpri_enddate IS NULL) pr ON p.pr_code = pr.pr_code " +
                "    LEFT OUTER JOIN (SELECT * FROM sale WHERE sa_end_date >= SYSDATE AND sa_date <= SYSDATE) s ON p.pr_code = s.pr_code " +
                "WHERE REGEXP_LIKE(replace(trim(p.pr_name),' ', ''), ?, 'i') ";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1 , realKeyword);
            rs = pstmt.executeQuery();
            if (rs.next()){
                list = new ArrayList<>();
                ProductBrandPriceDTO dto = null;
                do {
                    dto = new ProductBrandPriceDTO();
                    dto.setPr_code(rs.getString("pr_code"));
                    dto.setPr_name(rs.getString("pr_name"));
                    dto.setPrpri_price(rs.getInt("price"));
                    dto.setSa_rate(rs.getDouble("sale_rate"));
                    dto.setRealPrice(rs.getInt("realprice"));
                    dto.setBr_name(rs.getString("br_name"));
                    dto.setPrm_url(rs.getString("prm_url"));
                    list.add(dto);
                } while (rs.next());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JdbcUtil.close(rs);
            JdbcUtil.close(pstmt);
        }
        return list;
    }

    @Override
    public List<BrandDTO> selectSearchBrand(Connection connection, String keyword) {
        String realKeyword = "*" + keyword.replaceAll("\\s", "");
        List<BrandDTO> list = null;
        String sql = "SELECT DISTINCT b.* " +
                "FROM product p   " +
                "    JOIN brand b ON p.br_code = b.br_code " +
                "WHERE REGEXP_LIKE(replace(trim(p.pr_name),' ', ''), ?, 'i') " +
                "ORDER BY br_name  ";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1 , realKeyword);
            rs = pstmt.executeQuery();
            if (rs.next()){
                list = new ArrayList<>();
                BrandDTO dto = null;
                do {
                    dto = new BrandDTO();
                    dto.setBr_code(rs.getString("br_code"));
                    dto.setBr_name(rs.getString("br_name"));
                    list.add(dto);
                } while (rs.next());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JdbcUtil.close(rs);
            JdbcUtil.close(pstmt);
        }
        return list;
    }

    @Override
    public List<CategoryDTO> selectSearchCategory(Connection connection, String keyword) {
        String realKeyword = "*" + keyword.replaceAll("\\s", "");
        List<CategoryDTO> list = null;
        String sql = "SELECT * " +
                "FROM category  " +
                "WHERE ca_code IN ( " +
                "    SELECT ca_topcode  " +
                "    FROM category " +
                "    WHERE ca_code IN( " +
                "        SELECT DISTINCT ca_topcode " +
                "        FROM product p " +
                "            JOIN category c ON p.ca_code = c.ca_code " +
                "        WHERE REGEXP_LIKE(replace(trim(p.pr_name),' ', ''), ?, 'i') " +
                "    ) " +
                ") ";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1 , realKeyword);
            rs = pstmt.executeQuery();
            if (rs.next()){
                list = new ArrayList<>();
                CategoryDTO dto = null;
                do {
                    dto = new CategoryDTO();
                    dto.setCa_code(rs.getString("ca_code"));
                    dto.setCa_name(rs.getString("ca_name"));
                    dto.setCa_topcode(rs.getString("ca_topcode"));
                    dto.setCa_level(rs.getInt("ca_level"));
                    list.add(dto);
                } while (rs.next());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            JdbcUtil.close(rs);
            JdbcUtil.close(pstmt);
        }
        return list;
    }
}
