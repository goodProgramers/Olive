package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import domain.Cart;
import domain.ProductBrandPriceDTO;

public class CartDAOImpl implements CartDAO {

	private static CartDAOImpl instance;

	private CartDAOImpl() {
	};

	public static CartDAOImpl getInstance() {
		if (instance == null) {
			instance = new CartDAOImpl();
		}
		return instance;
	}

	// 장바구니 보기 구현
	@Override
	public List<ProductBrandPriceDTO> showCart(Connection conn, List<Cart> getsessionCartList) {

		List<ProductBrandPriceDTO> cartList = null;
		String sql = " SELECT p.pr_name, b.br_name, prpri_price, prpri_price*(1-NVL(s.sa_rate,0)) realPrice, prm_url "
				+ " FROM product p JOIN prprice pr ON p.pr_code = pr.pr_code JOIN brand b ON b.br_code = p.br_code "
				+ "           JOIN productmimg pdi ON p.pr_code = pdi.pr_code "
				+ "           LEFT OUTER JOIN sale s ON p.pr_code=s.pr_code " + " WHERE p.pr_code = ? ";

		cartList = new ArrayList<ProductBrandPriceDTO>();

		for (int i = 0; i < getsessionCartList.size(); i++) {

			String pr_code = getsessionCartList.get(i).getPr_code();
			int prpr_count = getsessionCartList.get(i).getPr_count();

			PreparedStatement pstmt = null;
			ResultSet rs = null;

			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pr_code);
				rs = pstmt.executeQuery();
				if (rs.next()) {

					ProductBrandPriceDTO dto = null;

					dto = new ProductBrandPriceDTO();

					dto.setPr_name(rs.getString("pr_name"));
					dto.setPrpri_price(rs.getInt("prpri_price"));
					dto.setBr_name(rs.getString("br_name"));
					dto.setRealPrice(rs.getInt("realPrice"));
					dto.setPrm_url(rs.getString("prm_url"));
					dto.setPr_code(pr_code);
					dto.setPrpr_count(prpr_count);

					System.out.println(dto);
				
					
					cartList.add(dto);

				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					pstmt.close();
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}

			}

		}
		return cartList;
	}

}//
