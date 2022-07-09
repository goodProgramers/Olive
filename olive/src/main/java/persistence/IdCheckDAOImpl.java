package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class IdCheckDAOImpl implements IdCheckDAO{

	
	// 싱글톤
	   private IdCheckDAOImpl() {}
	   private static IdCheckDAOImpl instance = new IdCheckDAOImpl();
	   public static IdCheckDAOImpl getInstance() {
	      return instance;
	   }
	   
	@Override
	public int idCheck(Connection conn, String userId) throws SQLException {
		
		String regex = "[a-zA-Z0-9]{6,12}";
		int idCheck = 1;
		
		if( !userId.matches(regex) ) {
			return idCheck;
		}
		
		String sql = "SELECT * FROM member WHERE me_id = '" + userId + "'";
		
		
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if( !rs.next() ) {
			idCheck = 0;
		}
		
		return idCheck;
	}

}
