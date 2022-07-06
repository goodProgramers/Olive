package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.OrderMemberInfoDTO;

public class OrderPaymentDAOImpl implements OrderPaymentDAO{

	// 싱글톤
	private OrderPaymentDAOImpl() {}
	private static OrderPaymentDAOImpl instance = null;
	public static OrderPaymentDAOImpl getInstance() {
		if(instance == null) {
			instance = new OrderPaymentDAOImpl();
		}
		return instance;
	}

	@Override
	public List<OrderMemberInfoDTO> selectOrderMemInfo(Connection conn, String memberID) throws SQLException {
		
		// memberID = "pyl1234";
		
		String sql = "SELECT m.me_code, me_id, ad_main, ad_name, ad_member, ad_tel, ad_address "
					+ "FROM member m JOIN address a ON m.me_code = a.me_code "
					+ "WHERE m.me_id = ? ";

		ArrayList<OrderMemberInfoDTO> addrInfoList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String me_code;
		String me_id;
		int ad_main; // 기본배송지여부
		String ad_name; // 배송지명
		String ad_member; // 받는분
		String ad_tel; // 받는사람연락처
		String ad_address; // 받는주소

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberID);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				addrInfoList = new ArrayList<OrderMemberInfoDTO>();
				OrderMemberInfoDTO dto = null;
				
				do {
					
					dto = new OrderMemberInfoDTO();

					dto.setMe_code(rs.getString("me_code"));
					dto.setMe_id(rs.getString("me_id"));
					dto.setAd_main(rs.getInt("ad_main"));
					dto.setAd_name(rs.getString("ad_name"));
					dto.setAd_member(rs.getString("ad_member"));
					dto.setAd_tel(rs.getString("ad_tel"));
					dto.setAd_address(rs.getString("ad_address"));					
					
					addrInfoList.add(dto);
				} while (rs.next());
			} // if 

		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs); 
		}

		return addrInfoList;
	}

}
