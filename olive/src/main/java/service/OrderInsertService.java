package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Iterator;

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

	
	public int insertOrder(OrderDetailPaymentDTO orderDetailPaymentDTO, String[] pr_code, String[] ord_count, String[] ord_price, String[] prpri_code, String[] sa_code
			, String pa_way, String pa_amount, String me_code, String de_amount) {
		
		Connection con = null;
		OrderDetailPaymentDTO dto = null;
		int result = 0;
		String or_code = null; // 주문상세, 결제 테이블에 사용할 주문번호
		
		try {
			con = ConnectionProvider.getConnection();
			con.setAutoCommit(false); // 오토커밋 취소
			
			OrderPaymentDAOImpl dao = OrderPaymentDAOImpl.getInstance();
			
			// 주문 테이블
			dto = dao.insertOrder(con, orderDetailPaymentDTO); // 주문 테이블 인서트 후 주문 번호 가져오기
			or_code = dto.getOr_code();
			System.out.println(or_code);
			
			if(or_code != null) {
				System.out.println("> 주문 테이블 insert 완료");
			}
			
			// 주문 상세 테이블
			for (int i = 0; i < pr_code.length; i++) {
				result = dao.insertOrderDetail(con, or_code, pr_code[i], ord_count[i], ord_price[i], prpri_code[i], sa_code[i]);
				System.out.println("> 주문 상세 테이블 insert 완료" + (i+1));
			}
			
			// 상품 테이블 해당 상품 판매량 update
			for (int i = 0; i < pr_code.length; i++) {
				dao.increaseProductCount(con, pr_code[i]);
				System.out.println("> 상품 테이블" + pr_code[i] +" update 완료");
			}
			
			// 결제 테이블
			result = dao.insertPayment(con, pa_way, pa_amount, or_code);
			if(result == 1) System.out.println("> 결제 테이블 insert 완료");

			// 포인트(deposit) 테이블
			if(!de_amount.equals("0")) {
				result = dao.insertDepositUse(con, me_code, or_code, de_amount);
				if(result == 1) System.out.println("> 포인트 테이블 사용 금액 insert 완료");
			}
			
			con.commit(); // 위의 작업이 모두 완료될 시 커밋
			
			return result;
		} catch (NamingException | SQLException e) {
			JdbcUtil.rollback(con); // 아닌 경우 롤백
			System.out.println("> Service 내에서 주문 + 주문 상세 + 결제 insert 실패");
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
	} // insertOrder
	
} // class
