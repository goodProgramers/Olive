package persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import domain.MemberDTO;

public class SignUpDAOImpl {

	// 1. 싱글톤
	private SignUpDAOImpl() {}
	private static SignUpDAOImpl instance = new SignUpDAOImpl();
	public static SignUpDAOImpl getInstance() {
		return instance;
	}

	// 1. 회원 등록
	public String signupCheck( Connection conn, MemberDTO dto) {

		String sql = "SELECT 'me'||LPAD(member_seq.NEXTVAL,6,'0') me_code "
				+ "FROM dual ";

		String me_code = null; // 시퀀스 다음 값을 받기 위한 변수
		int rownum = 0; // insert 문 성공 1 /실패 0  값을 받기 위한 변수

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if( rs.next() ) {
				me_code = rs.getString("me_code"); // 회원코드 다음 값
			}

			Date birth = new java.sql.Date(dto.getMe_birthday().getTime());
			birth.setMonth( birth.getMonth()-1 );
			sql = "INSERT INTO MEMBER values (?,?,?,?,?,?,?,?,?,1,1) ";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, me_code);
			pstmt.setString(2, dto.getMe_id());
			pstmt.setString(3, dto.getMe_passwd());
			pstmt.setString(4, dto.getMe_address());
			pstmt.setString(5, dto.getMe_email());
			pstmt.setString(6, dto.getMe_name());
			pstmt.setDate(7, birth);
			pstmt.setInt(8, dto.getMe_gender());
			pstmt.setString(9, dto.getMe_phone());

			rownum = pstmt.executeUpdate();
			if( rownum != 0 ) {
				return me_code;
			}
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);// 여기서 insert 실패시 롤백 + 다시 회원가입 창으로 돌아가기
			e.printStackTrace();
		}
		return null;
	}

	// 2. 마이페이지 등록
	public int signupMyPageCheck( Connection conn, String me_code) {
		
		String sql = "INSERT INTO mypage values (?,0,0,0,?) ";
		int rownum = 0; // insert 문 성공 1 /실패 0  값을 받기 위한 변수

		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, me_code);
			pstmt.setString(2, "mbs000001"); 

			rownum = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rownum;
	}

}
