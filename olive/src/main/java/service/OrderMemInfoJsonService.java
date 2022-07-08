package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.OrderMemberInfoDTO;
import persistence.OrderPaymentDAOImpl;

public class OrderMemInfoJsonService {
	// 싱글톤
	private OrderMemInfoJsonService() {}
	private static OrderMemInfoJsonService instance = null;
	public static OrderMemInfoJsonService getInstance() {
		if (instance == null) {
			instance = new OrderMemInfoJsonService();
		}
		return instance;
	}

	public List<OrderMemberInfoDTO> selectMemAddrInfo(String memberID, String addrName) {
		Connection con = null;

		try {
			con = ConnectionProvider.getConnection();
			OrderPaymentDAOImpl dao = OrderPaymentDAOImpl.getInstance();

			List<OrderMemberInfoDTO> addrInfoList = null;
			addrInfoList = dao.selectMemAddrInfo(con, memberID, addrName);

			return addrInfoList;

		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
	} // selectMemAddrInfo
	
} // class
