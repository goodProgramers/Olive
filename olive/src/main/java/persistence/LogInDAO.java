package persistence;

import java.sql.Connection;
import java.sql.SQLException;

import domain.LoginAuth;

public interface LogInDAO {

	// 1. 회원가입
	
	// 2. 로그인
	public LoginAuth LogInCheck(Connection con, String id, String passwd) throws SQLException;
}
