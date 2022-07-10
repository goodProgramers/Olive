package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import domain.OrderFormDTO;

public interface OrderFormDAO {
	// 주문 완료 창에 뿌릴 정보
	public ArrayList<OrderFormDTO> selectOrderForm(Connection conn, String or_code) throws SQLException;

}
