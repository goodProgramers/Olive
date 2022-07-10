package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.MemberDTO;
import persistence.SignUpDAOImpl;

public class SignUpService {
	
	
	
	// 1. 싱글톤
	   private SignUpService() {}
	   private static SignUpService instance = new SignUpService();
	   public static SignUpService getInstance() {
	      return instance;
	   }
	
	// DB연동, 멤버dto 객체 넘겨주기
	public int signup( MemberDTO dto ) {
		String me_code;
		int result = 0;
		
		   Connection conn = null;
		   try {
			   conn = ConnectionProvider.getConnection();
			   SignUpDAOImpl dao = SignUpDAOImpl.getInstance();
			   
			   me_code = dao.signupCheck( conn, dto ); // 회원가입 성공하면 회원코드 반환
			   
			   if( me_code != null ) { // 회원코드 가지고 마이페이지 생성
				   result = dao.signupMyPageCheck( conn, me_code );
			   }
			   
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
			JdbcUtil.rollback(conn);
		}
		return result;
	}

}
