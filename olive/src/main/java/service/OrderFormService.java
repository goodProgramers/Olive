package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.OrderDetailPaymentDTO;
import persistence.OrderPaymentDAOImpl;

public class OrderFormService {
	// 싱글톤
	private OrderFormService() {}
	private static OrderFormService instance = null;
	public static OrderFormService getInstance() {
		if (instance == null) {
			instance = new OrderFormService();
		}
		return instance;
	}
	
	public int insertOrder(OrderDetailPaymentDTO orderDetailPaymentDTO) {
		Connection con = null;

		try {
			con = ConnectionProvider.getConnection();
			OrderPaymentDAOImpl dao = OrderPaymentDAOImpl.getInstance();

			int result = 0;
			

			return result;

		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
	} // insertOrder
	
} // class
