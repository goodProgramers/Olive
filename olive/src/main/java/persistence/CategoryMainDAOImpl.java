//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package persistence;

import domain.CategoryDTO;
import domain.ProductBrandPriceDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class CategoryMainDAOImpl implements CategoryMainDAO {
    private static CategoryMainDAOImpl categoryMainDAO = new CategoryMainDAOImpl();

    private CategoryMainDAOImpl() {
    }

    public static CategoryMainDAOImpl getInstance() {
        return categoryMainDAO;
    }

    public Map<CategoryDTO, Map<CategoryDTO, List<CategoryDTO>>> selectTop(Connection connection) {
        String sql1 = "SELECT * FROM category WHERE LEVEL = 1 START WITH ca_topcode IS NULL CONNECT BY PRIOR ca_code =ca_topcode ";
        String sql2 = "SELECT * FROM category WHERE ca_topcode = ? START WITH ca_topcode IS NULL CONNECT BY PRIOR ca_code =ca_topcode ";
        Map<CategoryDTO, Map<CategoryDTO, List<CategoryDTO>>> totMap = null;
        Map<CategoryDTO, List<CategoryDTO>> midMap = null;
        List<CategoryDTO> bottList = null;
        PreparedStatement pstmt1 = null;
        PreparedStatement pstmt2 = null;
        PreparedStatement pstmt3 = null;
        ResultSet rs1 = null;
        ResultSet rs2 = null;
        ResultSet rs3 = null;

        try {
            pstmt1 = connection.prepareStatement(sql1);
            rs1 = pstmt1.executeQuery();
            if (rs1.next()) {
                totMap = new LinkedHashMap();
                CategoryDTO topDTO = null;

                do {
                    topDTO = new CategoryDTO();
                    topDTO.setCa_code(rs1.getString("ca_code"));
                    topDTO.setCa_name(rs1.getString("ca_name"));
                    topDTO.setCa_topcode(rs1.getString("ca_topcode"));
                    topDTO.setCa_level(rs1.getInt("ca_level"));
                    pstmt2 = connection.prepareStatement(sql2);
                    pstmt2.setString(1, topDTO.getCa_code());
                    rs2 = pstmt2.executeQuery();
                    if (rs2.next()) {
                        midMap = new LinkedHashMap();
                        CategoryDTO midDTO = null;

                        do {
                            midDTO = new CategoryDTO();
                            midDTO.setCa_code(rs2.getString("ca_code"));
                            midDTO.setCa_name(rs2.getString("ca_name"));
                            midDTO.setCa_topcode(rs2.getString("ca_topcode"));
                            midDTO.setCa_level(rs2.getInt("ca_level"));
                            pstmt3 = connection.prepareStatement(sql2);
                            pstmt3.setString(1, midDTO.getCa_code());
                            rs3 = pstmt3.executeQuery();
                            if (rs3.next()) {
                                bottList = new ArrayList();
                                CategoryDTO bottDTO = null;

                                do {
                                    bottDTO = new CategoryDTO();
                                    bottDTO.setCa_code(rs3.getString("ca_code"));
                                    bottDTO.setCa_name(rs3.getString("ca_name"));
                                    bottDTO.setCa_topcode(rs3.getString("ca_topcode"));
                                    bottDTO.setCa_level(rs3.getInt("ca_level"));
                                    bottList.add(bottDTO);
                                } while(rs3.next());
                            }

                            midMap.put(midDTO, bottList);
                        } while(rs2.next());
                    }

                    totMap.put(topDTO, midMap);
                } while(rs1.next());
            }

            return totMap;
        } catch (SQLException var19) {
            throw new RuntimeException(var19);
        } finally {
            try {
                pstmt1.close();
                pstmt2.close();
                pstmt3.close();
                rs1.close();
                rs2.close();
                rs3.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        }
    }

    @Override
    public Map<CategoryDTO, ProductBrandPriceDTO> selectMidCaPr(Connection connection) {

        String sql1 = "SELECT * FROM category WHERE ca_level = 2 AND ca_topcode = 'ca000001'";
        String sql2 = "SELECT *  " +
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
                "WHERE ROWNUM = 1 ";

        PreparedStatement pstmt1 = null;
        ResultSet rs1 = null;
        PreparedStatement pstmt2 = null;
        ResultSet rs2 = null;
        Map<CategoryDTO, ProductBrandPriceDTO> midCaPrMap = null;
        CategoryDTO caDTO = null;
        try {
            pstmt1 = connection.prepareStatement(sql1);
            rs1 = pstmt1.executeQuery();

            if (rs1.next()){
                midCaPrMap = new LinkedHashMap<>();

                do {
                    caDTO = new CategoryDTO();
                    caDTO.setCa_code(rs1.getString("ca_code"));
                    caDTO.setCa_name(rs1.getString("ca_name"));

                    pstmt2 = connection.prepareStatement(sql2);
                    pstmt2.setString(1, caDTO.getCa_code());
                    rs2 = pstmt2.executeQuery();
                    ProductBrandPriceDTO prDTO = null;
                    if (rs2.next()){
                        prDTO = new ProductBrandPriceDTO();
                        prDTO.setPr_code(rs2.getString("pr_code"));
                        prDTO.setPr_name(rs2.getString("pr_name"));
                        prDTO.setPr_name(rs2.getString("pr_name"));
                        prDTO.setPrpri_price(rs2.getInt("price"));
                        prDTO.setSa_rate(rs2.getDouble("sale_rate"));
                        prDTO.setRealPrice(rs2.getInt("realprice"));
                        prDTO.setBr_name(rs2.getString("br_name"));
                        prDTO.setPrm_url(rs2.getString("prm_url"));
                        midCaPrMap.put(caDTO, prDTO);
                    }
               } while (rs1.next());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return midCaPrMap;
    }
}
