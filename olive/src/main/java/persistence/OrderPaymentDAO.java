package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import domain.OrderMemberInfoDTO;

public interface OrderPaymentDAO {
	public List<OrderMemberInfoDTO> selectOrderMemInfo(Connection conn) throws SQLException;

}
