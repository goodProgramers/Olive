package persistence;

import com.util.JdbcUtil;
import domain.BrandDTO;
import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SearchAjaxDAOImpl implements SearchAjaxDAO {

    private static SearchAjaxDAOImpl instance;
    private SearchAjaxDAOImpl(){}
    public static SearchAjaxDAOImpl getInstance() {
        if (instance == null){
            instance = new SearchAjaxDAOImpl();
        }
        return instance;
    }

    public List<ProductBrandPriceDTO> selectSearchProduct(Connection connection, String keyword, String searchCondition){
        String realKeyword = "*" + keyword.replaceAll("\\s", "");
        int searchSort = Integer.parseInt(searchCondition);
        List<ProductBrandPriceDTO> list = null;
        System.out.println(searchCondition);
        String sql = "SELECT p.*, b.br_name, pi.prm_url , NVL(pr.prpri_price, 0) price, NVL(s.sa_rate, 0) sale_rate, NVL(pr.prpri_price, 0)*(1-NVL(s.sa_rate, 0)) realprice " +
                "FROM product p " +
                "    JOIN brand b ON p.br_code = b.br_code  " +
                "    LEFT OUTER JOIN productmimg pi ON p.pr_code = pi.pr_code  " +
                "    LEFT OUTER JOIN (SELECT * FROM prprice WHERE prpri_enddate IS NULL) pr ON p.pr_code = pr.pr_code " +
                "    LEFT OUTER JOIN (SELECT * FROM sale WHERE sa_end_date >= SYSDATE AND sa_date <= SYSDATE) s ON p.pr_code = s.pr_code " +
                "WHERE REGEXP_LIKE(replace(trim(p.pr_name),' ', ''), ?, 'i') ";
        if (searchSort==1) {
            System.out.println(5);
            sql += "ORDER BY pr_view DESC";
        }else if(searchSort==2) {
            System.out.println(4);
            sql += "ORDER BY pr_date DESC";
        }else if(searchSort==3) {
            System.out.println(3);
            sql += "ORDER BY pr_count DESC";
        }else if(searchSort==4) {
            System.out.println(2);
            sql += "ORDER BY realprice ASC";
        }else if(searchSort==5) {
            System.out.println(1);
            sql += "ORDER BY realprice DESC";
        }




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

}
