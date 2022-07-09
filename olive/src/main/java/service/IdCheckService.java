package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import persistence.IdCheckDAOImpl;

public class IdCheckService {
	
	   // 싱글톤
	   private IdCheckService() {}
	   private static IdCheckService instance = new IdCheckService();
	   public static IdCheckService getInstance() {
	      return instance;
	   }
	   
	   public int idCheckService(String id) {
		   Connection conn = null;
		   int idchk = 0;
	       try {
	         conn = ConnectionProvider.getConnection();
	         IdCheckDAOImpl dao = IdCheckDAOImpl.getInstance();
	         
	         idchk = dao.idCheck(conn, id);
	         
	         
	         return idchk;
	      } catch (NamingException | SQLException e) { 
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(conn);
	      }
	       
	   }

}
