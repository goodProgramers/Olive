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

public class OrderDetailPaymentDAOImpl implements OrderDetailPaymentDAO{

	// 싱글톤
	private OrderDetailPaymentDAOImpl() {}
	private static OrderDetailPaymentDAOImpl instance = null;
	public static OrderDetailPaymentDAOImpl getInstance() {
		if(instance == null) {
			instance = new OrderDetailPaymentDAOImpl();
		}
		return instance;
	}

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

	// 회원 포인트 사용시 포인트 내역 insert + mypage의 회원 총 포인트 update
	@Override
	public int insertMyPointUse(Connection conn, String me_code, String or_code, String myp_amount) throws SQLException {
		PreparedStatement pstmt = null;
		int result;
		
		String sql = "INSERT INTO mypoint (myp_code, me_code, or_code, myp_amount, myp_date, myp_type, myp_expire) "
					+ "VALUES(('myp' || LPAD(mypoint_seq.nextval, 6, '0')), ?, ?, ?, TRUNC(SYSDATE), 1, (TRUNC(SYSDATE) + 365))";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, me_code);
			pstmt.setString(2, or_code);
			pstmt.setInt(3, Integer.parseInt(myp_amount));
			result = pstmt.executeUpdate();
			
			sql = "UPDATE mypage "
					+ "SET my_point = my_point - ? "
					+ "WHERE me_code = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(myp_amount));
			pstmt.setString(2, me_code);
			
			result = pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
		
		return result;
	} // insertDepositUse

	// 회원 멤버십 등급
	@Override
	public int insertMyPoint(Connection conn, String me_code, String or_code, String myp_amount) throws SQLException {
		PreparedStatement pstmt = null;
		int result;
		
		String sql = "SELECT me_code, my_point, ms.mbs_code, mbs_grade, mbs_minorder, mbs_maxorder, mbs_pointrate "
					+ "FROM mypage mp JOIN membership ms ON mp.mbs_code = ms.mbs_code "
					+ "WHERE me_code = ?";

		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, me_code);
			
			sql = "INSERT INTO mypoint (myp_code, me_code, or_code, myp_amount, myp_date, myp_type, myp_expire) "
					+ "VALUES(('myp' || LPAD(mypoint_seq.nextval, 6, '0')), ?, ?, ?, TRUNC(SYSDATE), 0, (TRUNC(SYSDATE) + 365))";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, me_code);
			pstmt.setString(2, or_code);
			pstmt.setInt(3, Integer.parseInt(myp_amount));
			result = pstmt.executeUpdate();
			
			sql = "UPDATE mypage "
					+ "SET my_point = my_point - ? "
					+ "WHERE me_code = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(myp_amount));
			pstmt.setString(2, me_code);
			
			result = pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
		
		return result;
	}

	

} // class
