package persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

import domain.OrderDetailPaymentDTO;
import domain.OrderMemberInfoDTO;

public interface OrderPaymentDAO {
	// 배송지선택 옵션태그 만드는 메서드
	public List<OrderMemberInfoDTO> selectMemberAddr(Connection conn, String memberCode) throws SQLException;
	
	// 배송지정보를 뿌리는 메서드
	public List<OrderMemberInfoDTO> selectMemAddrInfo(Connection conn, String memberCode, String addrName) throws SQLException;
	
	// 회원의 총포인트를 가져오는 메서드
	public List<OrderMemberInfoDTO> selectMemberTotPoint(Connection conn, String memberCode) throws SQLException;
	
	// 주문테이블 insert
	public OrderDetailPaymentDTO insertOrder(Connection conn, OrderDetailPaymentDTO orderDetailPaymentDTO) throws SQLException;

	// 주문 상세테이블 insert
	public int insertOrderDetail(Connection conn, String or_code, String pr_code, String ord_count, String ord_price, String prpri_code, String sa_code) throws SQLException;
	
	// 결제 테이블 insert
	public int insertPayment(Connection conn, String pa_way, String pa_amount, String or_code) throws SQLException;
	
	// 주문시 상품판매량 증가
	public void increaseProductCount(Connection conn, String pr_code) throws SQLException;
	
	// 회원 포인트 사용시 insert
	public int insertDepositUse(Connection conn, String me_code, String or_code, String de_amount) throws SQLException;
	
	// 주문시 회원 포인트 적립 insert


}
