package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.OrderMemberInfoDTO;
import persistence.OrderPaymentDAOImpl;

public class OrderPaymentService {
	// 싱글톤
	private OrderPaymentService() {}
	private static OrderPaymentService instance = null;
	public static OrderPaymentService getInstance() {
		if (instance == null) {
			instance = new OrderPaymentService();
		}
		return instance;
	}

	public List<OrderMemberInfoDTO> selectMemberAddr(String memberID) {
		Connection con = null;

		try {
			con = ConnectionProvider.getConnection();
			OrderPaymentDAOImpl dao = OrderPaymentDAOImpl.getInstance();

			List<OrderMemberInfoDTO> memberAddrList = null;
			memberAddrList = dao.selectMemberAddr(con, memberID);

			return memberAddrList;

		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
	} // selectOrderMemInfo
	
} // class
