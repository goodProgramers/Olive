package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.OrderDetailPaymentDTO;
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
	
	// 회원의 배송지 리스트
	@Override
	public List<OrderMemberInfoDTO> selectMemberAddr(Connection conn, String memberCode) throws SQLException {
		String sql = "SELECT t.*, mbs_pointrate "
				+ "FROM( "
				+ "    SELECT m.me_code, me_id, ad_main, ad_code, ad_name, ad_member, ad_tel, SUBSTR(ad_tel,5,4) midtel, SUBSTR(ad_tel,5,4) endtel, ad_address, my_point, mp.mbs_code "
				+ "    FROM member m JOIN address a ON m.me_code = a.me_code "
				+ "    JOIN mypage mp ON m.me_code = mp.me_code "
				+ ") t JOIN membership ms ON t.mbs_code = ms.mbs_code "
				+ "WHERE t.me_code = ? ";

		ArrayList<OrderMemberInfoDTO> memberAddrList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String me_code;
		String me_id;
		int ad_main; // 기본배송지여부
		String ad_code; // 배송지코드
		String ad_name; // 배송지명
		String ad_member; // 받는분
		String ad_tel; // 받는사람연락처
		String midtel; // 받는사람연락처가운데4자리
		String endtel; // 받는사람연락처끝4자리
		String ad_address; // 받는주소
		int my_point; // 회원의 총포인트
		String mbs_code; // 회원등급코드
		double mbs_pointrate; // 적립율

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberCode);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				memberAddrList = new ArrayList<OrderMemberInfoDTO>();
				OrderMemberInfoDTO dto = null;

				do {
					dto = new OrderMemberInfoDTO();

					dto.setMe_code(rs.getString("me_code"));
					dto.setMe_id(rs.getString("me_id"));
					dto.setAd_main(rs.getInt("ad_main"));
					dto.setAd_code(rs.getString("ad_code"));
					dto.setAd_name(rs.getString("ad_name"));
					dto.setAd_member(rs.getString("ad_member"));
					dto.setAd_tel(rs.getString("ad_tel"));
					dto.setMidtel(rs.getString("midtel"));
					dto.setEndtel(rs.getString("endtel"));
					dto.setAd_address(rs.getString("ad_address"));	
					dto.setMy_point(rs.getInt("my_point"));
					dto.setMbs_code(rs.getString("mbs_code"));	
					dto.setMbs_pointrate(rs.getDouble("mbs_pointrate"));
					System.out.println(dto);
					memberAddrList.add(dto);
				} while (rs.next());
			} // if 

		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs); 
		}

		return memberAddrList;
	} // selectMemberAddr

	// 옵션태그 선택시 해당하는 배송정보 뿌림(jq ajax + JSON)
	@Override
	public List<OrderMemberInfoDTO> selectMemAddrInfo(Connection conn, String memberCode, String addrName) throws SQLException {

		String sql = "SELECT m.me_code, me_id, ad_main, ad_code, ad_name, ad_member, ad_tel, SUBSTR(ad_tel,5,4) midtel, SUBSTR(ad_tel,5,4) endtel, ad_address "
				+ "FROM member m JOIN address a ON m.me_code = a.me_code "
				+ "WHERE m.me_code = ? AND ad_name = ?";

		ArrayList<OrderMemberInfoDTO> addrInfoList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String me_code;
		String me_id;
		int ad_main; // 기본배송지여부
		String ad_code; // 배송지코드
		String ad_name; // 배송지명
		String ad_member; // 받는분
		String ad_tel; // 받는사람연락처
		String midtel; // 받는사람연락처가운데4자리
		String endtel; // 받는사람연락처끝4자리
		String ad_address; // 받는주소

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberCode);
			pstmt.setString(2, addrName);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				addrInfoList = new ArrayList<OrderMemberInfoDTO>();
				OrderMemberInfoDTO dto = null;

				do {
					dto = new OrderMemberInfoDTO();

					dto.setMe_code(rs.getString("me_code"));
					dto.setMe_id(rs.getString("me_id"));
					dto.setAd_main(rs.getInt("ad_main"));
					dto.setAd_code(rs.getString("ad_code"));
					dto.setAd_name(rs.getString("ad_name"));
					dto.setAd_member(rs.getString("ad_member"));
					dto.setAd_tel(rs.getString("ad_tel"));
					dto.setMidtel(rs.getString("midtel"));
					dto.setEndtel(rs.getString("endtel"));
					dto.setAd_address(rs.getString("ad_address"));					

					addrInfoList.add(dto);
				} while (rs.next());
			} // if 

		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs); 
		}

		return addrInfoList;
	} // selectMemAddrInfo

	// 회원의 총포인트 (지금 안쓰는중 삭제 예정)
	@Override
	public List<OrderMemberInfoDTO> selectMemberTotPoint(Connection conn, String memberCode) throws SQLException {
		String sql = "SELECT m.me_code, me_id, my_point, mp.mbs_code "
					+ "FROM member m JOIN mypage mp ON m.me_code = mp.me_code "
					+ "WHERE m.me_code = ? ";

		ArrayList<OrderMemberInfoDTO> memberTotPoint = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String me_code;
		String me_id;
		int my_point;
		String mbs_code;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberCode);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				memberTotPoint = new ArrayList<OrderMemberInfoDTO>();
				OrderMemberInfoDTO dto = null;

				do {
					dto = new OrderMemberInfoDTO();

					dto.setMe_code(rs.getString("me_code"));
					dto.setMe_id(rs.getString("me_id"));
					dto.setMy_point(rs.getInt("my_point"));
					dto.setMbs_code(rs.getString("mbs_code"));								

					memberTotPoint.add(dto);
				} while (rs.next());
			} // if 

		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs); 
		}

		return memberTotPoint;

	} // selectMemberTotPoint

} // class
