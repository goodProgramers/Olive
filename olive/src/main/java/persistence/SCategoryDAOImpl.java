package persistence;

import com.util.JdbcUtil;
import domain.BrandDTO;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;

import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SCategoryDAOImpl implements SCategoryDAO{
    private SCategoryDAOImpl() {}
    private static SCategoryDAOImpl instance = null;
    public static SCategoryDAOImpl getInstance() {
        if(instance == null) {
            instance = new SCategoryDAOImpl();
        }
        return instance;
    }
    @Override
    public List<CategoryDTO> selectTopCategory(Connection connection, String ca_code) {
        List<CategoryDTO> list = null;
        CategoryDTO categoryDTO = null;
        String sql = "SELECT * " +
                "FROM category " +
                "START WITH ca_code = ? " +
                "CONNECT BY ca_code = PRIOR ca_topcode " +
                "ORDER BY ca_level ";

        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, ca_code);
            rs = pstmt.executeQuery();
            if (rs.next()){
                list = new ArrayList<>();
                do {
                    categoryDTO = new CategoryDTO();
                    categoryDTO.setCa_code(rs.getString("ca_code"));
                    categoryDTO.setCa_name(rs.getString("ca_name"));
                    categoryDTO.setCa_topcode(rs.getString("ca_topcode"));
                    categoryDTO.setCa_level(rs.getInt("ca_level"));
                    list.add(categoryDTO);
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
    public List<CategoryDTO> selectDCategory(Connection connection, String ca_code) {
        List<CategoryDTO> list = null;
        CategoryDTO categoryDTO = null;
        String sql = "SELECT *  " +
                "FROM category  " +
                "WHERE ca_topcode = ?  ";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, ca_code);
            rs = pstmt.executeQuery();
            if (rs.next()){
                list = new ArrayList<>();
                do {
                categoryDTO = new CategoryDTO();
                categoryDTO.setCa_code(rs.getString("ca_code"));
                categoryDTO.setCa_name(rs.getString("ca_name"));
                categoryDTO.setCa_topcode(rs.getString("ca_topcode"));
                categoryDTO.setCa_level(rs.getInt("ca_level"));
                list.add(categoryDTO);
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
    public List<BrandDTO> selectBrand(Connection connection, String ca_code) {
        List<BrandDTO> list = null;
        BrandDTO dto = null;
        String sql = "SELECT DISTINCT b.*  " +
                "FROM brand b JOIN product p ON b.br_code = p.br_code  " +
                "WHERE p.ca_code IN (  " +
                "    SELECT ca_code  " +
                "    FROM category  " +
                "    WHERE ca_topcode = ?  " +
                ") " +
                "ORDER BY br_name ";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, ca_code);
            rs = pstmt.executeQuery();
            if (rs.next()){
                list = new ArrayList<>();
                do {
                    dto = new BrandDTO();
                    dto.setBr_code(rs.getString("br_code"));
                    dto.setBr_name(rs.getString("br_name"));
                    dto.setBr_person(rs.getString("br_person"));
                    dto.setBr_number(rs.getString("br_number"));
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
    public List<ProductBrandPriceDTO> selectProduct(Connection connection, String ca_code) {
        List<ProductBrandPriceDTO> list = null;
        ProductBrandPriceDTO dto = null;
        String sql = "SELECT p.*, b.br_name, pi.prm_url , NVL(pr.prpri_price, 0) price, NVL(s.sa_rate, 0) sale_rate, NVL(pr.prpri_price, 0)*(1-NVL(s.sa_rate, 0)) realprice " +
                "    FROM product p  " +
                "        JOIN brand b ON p.br_code = b.br_code  " +
                "        LEFT OUTER JOIN productmimg pi ON p.pr_code = pi.pr_code  " +
                "        LEFT OUTER JOIN (SELECT * FROM prprice WHERE prpri_enddate IS NULL) pr ON p.pr_code = pr.pr_code  " +
                "        LEFT OUTER JOIN (SELECT * FROM sale WHERE sa_end_date >= SYSDATE AND sa_date <= SYSDATE) s ON p.pr_code = s.pr_code " +
                "        WHERE ca_code IN (  " +
                "            SELECT ca_code  " +
                "            FROM category  " +
                "            WHERE ca_topcode = ? " +
                "        )  " +
                "    ORDER BY p.pr_count DESC  ";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, ca_code);
            rs = pstmt.executeQuery();
            if (rs.next()){
                list = new ArrayList<>();
                do {
                    dto =new ProductBrandPriceDTO();
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
}
