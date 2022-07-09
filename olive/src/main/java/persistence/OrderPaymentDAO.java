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
	
	// 결제하기 클릭 -> 주문 테이블 insert
	/*
	private String or_code; // 주문번호
	private int or_price; // 구매가
	private Date or_date; // 주문일자
	private int or_shippay; // 배송비
	private int or_pay; // 실결제금액(구매가-포인트)
	private int or_todaygive; // 오늘드림여부
	private String me_code; // 회원코드
	private String or_addresrequest; // 배송요청사항
	private String ad_code; // 배송지코드
	*/
	
	// 주문테이블 insert
	public int insertOrder(Connection conn, OrderDetailPaymentDTO orderDetailPaymentDTO) throws SQLException;

	// 주문 상세테이블 insert
	public int insertOrderDetail(Connection conn, OrderDetailPaymentDTO orderDetailPaymentDTO) throws SQLException;
	
	

}
