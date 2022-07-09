package persistence;

import java.sql.Connection;
import java.sql.SQLException;

public interface IdCheckDAO {

	public int idCheck(Connection conn, String userId ) throws SQLException;
	
}
