package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import domain.OrderFormDTO;

public class OrderFormDAOImpl implements OrderFormDAO{

	// 싱글톤
	private OrderFormDAOImpl() {}
	private static OrderFormDAOImpl instance = null;
	public static OrderFormDAOImpl getInstance() {
		if(instance == null) {
			instance = new OrderFormDAOImpl();
		}
		return instance;
	}

	@Override
	public ArrayList<OrderFormDTO> selectOrderForm(Connection conn, String or_code) throws SQLException {
		String sql = "SELECT o.or_code, or_price, (or_price + or_shippay - or_pay) sale_price, or_shippay, or_pay, ad_member, ad_tel, ad_address, or_addresrequest "
				+ "FROM o_order o JOIN address a ON o.ad_code = a.ad_code "
				+ "WHERE o.or_code = ?";

		ArrayList<OrderFormDTO> orderFormList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, or_code);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				orderFormList = new ArrayList<OrderFormDTO>();
				OrderFormDTO dto = null;

				dto = new OrderFormDTO();

				dto.setOr_code(rs.getString("or_code"));
				dto.setOr_price(rs.getInt("or_price"));
				dto.setSale_price(rs.getInt("sale_price"));
				dto.setOr_shippay(rs.getInt("or_shippay"));
				dto.setOr_pay(rs.getInt("or_pay"));
				dto.setAd_member(rs.getString("ad_member"));
				dto.setAd_tel(rs.getString("ad_tel"));
				dto.setAd_address(rs.getString("ad_address"));
				dto.setOr_addresrequest(rs.getString("or_addresrequest"));

				orderFormList.add(dto);

			} // if 

		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs); 
		}

		return orderFormList;
	}

} // class
