package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ExhibitionDTO;
import persistence.OnlyOneDAOImpl;

public class ExhibitionService {
	// 싱글톤
	private ExhibitionService() {}
	private static ExhibitionService instance = new ExhibitionService();
	public static ExhibitionService getInstance() {
		return instance;
	}

	public List<ExhibitionDTO> select(){
		Connection con = null;
		
		try {
			con = ConnectionProvider.getConnection();
			OnlyOneDAOImpl dao = OnlyOneDAOImpl.getInstance();
			
			List<ExhibitionDTO> onlyoneList = null;
			onlyoneList = dao.onlyone(con);
			
			return onlyoneList;
			
		} catch (NamingException | SQLException e) { 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
	} // select
}
