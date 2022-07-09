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

	// 회원의 총포인트 
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

	// 주문 테이블 insert
	@Override
	public OrderDetailPaymentDTO insertOrder(Connection conn, OrderDetailPaymentDTO orderDetailPaymentDTO) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrderDetailPaymentDTO dto = null;

		String sql = "INSERT INTO o_order (or_code, or_price, or_date, or_shippay, or_pay, or_todaygive, me_code, or_addresrequest, ad_code) "
					+ "VALUES(('or' || LPAD(order_seq.nextval, 6, '0')),  ?, TRUNC(SYSDATE), ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, orderDetailPaymentDTO.getOr_price());
			pstmt.setInt(2, orderDetailPaymentDTO.getOr_shippay());
			pstmt.setInt(3, orderDetailPaymentDTO.getOr_pay());
			pstmt.setInt(4, orderDetailPaymentDTO.getOr_todaygive());
			pstmt.setString(5, orderDetailPaymentDTO.getMe_code());
			pstmt.setString(6, orderDetailPaymentDTO.getOr_addresrequest());
			pstmt.setString(7, orderDetailPaymentDTO.getAd_code());

			pstmt.executeUpdate();  // 인서트가 완료되면 1을 넘겨줌

			sql = "SELECT 'or' || LPAD(order_seq.currval, 6, '0') or_code FROM dual";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				dto = new OrderDetailPaymentDTO();
				dto.setOr_code(rs.getString("or_code"));								
			} // if 

		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs); 
		}

		return dto;

	} // insertOrder

	// 주문상세테이블 인서트
	@Override
	public int insertOrderDetail(Connection conn, String or_code, String pr_code, String ord_count, String ord_price, String prpri_code, String sa_code) throws SQLException {
		PreparedStatement pstmt = null;
		int result;

		String sql = "INSERT INTO orderdetail (ord_code, or_code, pr_code, ord_count, ord_price, prpri_code, sa_code) "
					+ "VALUES ( ('ord' || LPAD(orderdetail_seq.nextval, 6, '0')), ?, ?, ?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, or_code);
			pstmt.setString(2, pr_code);
			pstmt.setInt(3, Integer.parseInt(ord_count));
			pstmt.setInt(4, Integer.parseInt(ord_price));
			pstmt.setString(5, prpri_code);
			pstmt.setString(6, sa_code);

			result = pstmt.executeUpdate();  // 인서트가 완료되면 1을 넘겨줌

		} finally {
			JdbcUtil.close(pstmt);
		}

		return result;
	}

	// 결제 테이블 insert
	@Override
	public int insertPayment(Connection conn, String pa_way, String pa_amount, String or_code) throws SQLException {
		PreparedStatement pstmt = null;
		int result;
		
		int authNo = 0;
		String cardNumber = "";
		for (int i = 1; i <= 4; i++) {
			authNo = (int)(Math.random() * (9999 - 1000 + 1)) + 1000;
			cardNumber += (cardNumber == "" ? authNo + "" : "-" + authNo);
		}

		String sql = "INSERT INTO payment (pa_code, pa_way, pa_amount, pa_date, pa_cardnumber, pa_status, or_code) "
					+ "	VALUES(('pa' || LPAD(payment_seq.nextval, 6, '0')), ?, ?, TRUNC(SYSDATE), ?, 0, ?)";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, pa_way);
			pstmt.setInt(2, Integer.parseInt(pa_amount));
			pstmt.setString(3, cardNumber); // 카드번호는 랜덤
			pstmt.setString(4, or_code);

			result = pstmt.executeUpdate();  // 인서트가 완료되면 1을 넘겨줌

		} finally {
			JdbcUtil.close(pstmt);
		}

		return result;

	} // insertPayment
	
	// 주문시 상품 테이블 상품 판매량 update
	@Override
	public void increaseProductCount(Connection conn, String pr_code) throws SQLException {
		PreparedStatement pstmt = null;
		
		String sql = "UPDATE product "
					+ "SET pr_count = pr_count + 1 "
					+ "WHERE pr_code = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pr_code);
			pstmt.executeUpdate();
			
		} finally {
			JdbcUtil.close(pstmt);
		}

	} // increaseProductCount

	// 회원 포인트 사용 insert
	@Override
	public int insertDepositUse(Connection conn, String me_code, String or_code, String de_amount) throws SQLException {
		PreparedStatement pstmt = null;
		int result;
		
		String sql = "INSERT INTO deposit (de_code, me_code, or_code, de_amount, de_date, de_type) "
					+ "VALUES(('de' || LPAD(deposit_seq.nextval, 6, '0')), ?, ?, ?, TRUNC(SYSDATE), 1)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, me_code);
			pstmt.setString(2, or_code);
			pstmt.setInt(3, Integer.parseInt(de_amount));
			result = pstmt.executeUpdate();
			
		} finally {
			JdbcUtil.close(pstmt);
		}
		
		return result;
	} // insertDepositUse


} // class
