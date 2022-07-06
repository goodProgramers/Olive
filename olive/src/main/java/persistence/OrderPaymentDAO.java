package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import domain.OrderMemberInfoDTO;

public interface OrderPaymentDAO {
	// 배송지선택 옵션태그 만드는 메서드
	public List<OrderMemberInfoDTO> selectMemberAddr(Connection conn, String memberID) throws SQLException;
	
	// 배송지정보를 뿌리는 메서드
	public List<OrderMemberInfoDTO> selectMemAddrInfo(Connection conn, String memberID, String addrName) throws SQLException;
	
	// 회원의 총포인트를 가져오는 메서드
	public List<OrderMemberInfoDTO> selectMemberTotPoint(Connection conn, String memberID) throws SQLException;

}
