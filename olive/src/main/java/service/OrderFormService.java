package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.OrderDetailPaymentDTO;
import domain.OrderFormDTO;
import domain.OrderMemberInfoDTO;
import persistence.OrderFormDAOImpl;
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

	public List<OrderFormDTO> selectOrderForm(String or_code) {
		Connection con = null;

		try {
			con = ConnectionProvider.getConnection();
			OrderFormDAOImpl dao = OrderFormDAOImpl.getInstance();


			List<OrderFormDTO> orderFormList = null;
			orderFormList = dao.selectOrderForm(con, or_code);

			return orderFormList;

		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}

	} // selectOrderForm

} // class
