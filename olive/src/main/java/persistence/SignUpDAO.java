package persistence;

import java.sql.Connection;

import domain.MemberDTO;

public interface SignUpDAO {

	// 회원가입 체크
	public int signupCheck( Connection conn, MemberDTO dto );
}
