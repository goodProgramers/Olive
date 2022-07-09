package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.OrderDetailPaymentDTO;
import persistence.OrderPaymentDAOImpl;

public class OrderInsertService {
	// 싱글톤
	private OrderInsertService() {}
	private static OrderInsertService instance = null;
	public static OrderInsertService getInstance() {
		if (instance == null) {
			instance = new OrderInsertService();
		}
		return instance;
	}
	
	public int insertOrder(OrderDetailPaymentDTO orderDetailPaymentDTO) {
		Connection con = null;

		try {
			con = ConnectionProvider.getConnection();
			con.setAutoCommit(false); // 오토커밋 취소
			int result;
			
			OrderPaymentDAOImpl dao = OrderPaymentDAOImpl.getInstance();
			
			result = dao.insertOrder(con, orderDetailPaymentDTO);
			if(result == 1) {
				System.out.println("> 주문 테이블 insert 완료");
			}
			
			/*
			result = dao.insertOrderDetail(con, orderDetailPaymentDTO);
			if(result == 1) {
				System.out.println("> 주문 상세 테이블 insert 완료");
			}
			*/
			
			con.commit(); // 위의 작업이 모두 완료될시 커밋
			
			return result;
		} catch (NamingException | SQLException e) {
			JdbcUtil.rollback(con); // 아닌 경우 롤백
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
	} // insertOrder
	
} // class
