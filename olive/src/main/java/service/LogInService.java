package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import domain.LoginAuth;
import persistence.LogInDAOImpl;

public class LogInService {

	// 1. 싱글톤
	   private LogInService() {}
	   private static LogInService instance = new LogInService();
	   public static LogInService getInstance() {
	      return instance;
	   }
	   
	   public LoginAuth LogInCheck( String id, String passwd ){
		   Connection conn = null;
		   LoginAuth loginAuth = null;
		   
		   try {
			   conn = ConnectionProvider.getConnection();
			   LogInDAOImpl dao = LogInDAOImpl.getInstance();
			   loginAuth = new LoginAuth();
			   
			   loginAuth = dao.LogInCheck( conn, id, passwd );   // 로그인 성공 - true 실패 - false
			   
			   if( loginAuth.getMe_code() != null ) {
				   // 로그기록 남기는 작업 등등..
				   
				   
			   }
			   
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		}
		   
		   return loginAuth; 
	   };
	   
		
}
