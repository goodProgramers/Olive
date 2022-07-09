package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.OrderDetailPaymentDTO;
import persistence.OrderPaymentDAOImpl;

public class OrderDetailInsertService {
	// 싱글톤
	private OrderDetailInsertService() {}
	private static OrderDetailInsertService instance = null;
	public static OrderDetailInsertService getInstance() {
		if (instance == null) {
			instance = new OrderDetailInsertService();
		}
		return instance;
	}
	
	// public OrderDetailPaymentDTO insertOrder(OrderDetailPaymentDTO orderDetailPaymentDTO, String pr_code, String ord_count, String ord_price, String prpri_code, String sa_code) {
	public int insertOrderDetail(String or_code, String pr_code, String ord_count, String ord_price, String prpri_code, String sa_code) {
		Connection con = null;
		OrderDetailPaymentDTO dto = null;
		
		try {
			con = ConnectionProvider.getConnection();
			con.setAutoCommit(false); // 오토커밋 취소
			int result;
			
			OrderPaymentDAOImpl dao = OrderPaymentDAOImpl.getInstance();
			
			result = dao.insertOrderDetail(con, or_code, pr_code, ord_count, ord_price, prpri_code, sa_code);

			
			if(result == 1) {
				System.out.println("> 주문 상세 테이블 insert 완료");
			}

			con.commit(); // 위의 작업이 모두 완료될시 커밋
			
			return result;
		} catch (NamingException | SQLException e) {
			JdbcUtil.rollback(con); // 아닌 경우 롤백
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
	} // insertOrderDetail
	
} // class
