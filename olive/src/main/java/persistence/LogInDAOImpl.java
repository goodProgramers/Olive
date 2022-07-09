package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import domain.LoginAuth;

public class LogInDAOImpl implements LogInDAO{
	
	// 싱글톤
	   private LogInDAOImpl() {}
	   private static LogInDAOImpl instance = new LogInDAOImpl();
	   public static LogInDAOImpl getInstance() {
	      return instance;
	   }
	   

	// 회원 리스트
	@Override
	public LoginAuth LogInCheck(Connection con, String id, String passwd) throws SQLException {

		
		String sql = "SELECT m.me_code, me_id, me_name, s.mbs_code, mbs_grade "
				+ "FROM member m join mypage p on m.me_code = p.me_code "
				+ "              join membership s on p.mbs_code = s.mbs_code "
				+ "WHERE m.me_id = '" + id + "' AND me_passwd='" + passwd + "' ";

		LoginAuth loginAuth = new LoginAuth();  

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if( rs.next() ) {
			loginAuth.setMe_code( rs.getString("me_code") );
			loginAuth.setMe_id( rs.getString("me_id") );
			loginAuth.setMe_name( rs.getString("me_name") );
			loginAuth.setMbs_code( rs.getString("mbs_code") );
			loginAuth.setMbs_grade( rs.getString("mbs_grade") );
		}
		
		return loginAuth;

	}

}
