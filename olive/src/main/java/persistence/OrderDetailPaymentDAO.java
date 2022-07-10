package persistence;

import java.sql.Connection;
import java.sql.SQLException;

import domain.OrderDetailPaymentDTO;

public interface OrderDetailPaymentDAO {
	
	// 주문테이블 insert
	public OrderDetailPaymentDTO insertOrder(Connection conn, OrderDetailPaymentDTO orderDetailPaymentDTO) throws SQLException;

	// 주문 상세테이블 insert
	public int insertOrderDetail(Connection conn, String or_code, String pr_code, String ord_count, String ord_price, String prpri_code, String sa_code) throws SQLException;
	
	// 결제 테이블 insert
	public int insertPayment(Connection conn, String pa_way, String pa_amount, String or_code) throws SQLException;
	
	// 주문시 상품판매량 증가
	public void increaseProductCount(Connection conn, String pr_code) throws SQLException;
	
	// 회원 포인트 사용시 포인트 내역 insert + mypage의 회원 총 포인트 update
	public int insertMyPointUse(Connection conn, String me_code, String or_code, String myp_amount) throws SQLException;
	
	// 주문시 회원 포인트 적립 insert + mypage의 회원 총 포인트 update
	public int insertMyPoint(Connection conn, String me_code, String or_code, String pa_amount) throws SQLException;

}
