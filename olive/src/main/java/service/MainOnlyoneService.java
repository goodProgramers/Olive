package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.MainOnlyoneDTO;
import persistence.OnlyOneDAOImpl;

public class MainOnlyoneService {
	// 싱글톤
	private MainOnlyoneService() {}
	private static MainOnlyoneService instance = new MainOnlyoneService();
	public static MainOnlyoneService getInstance() {
		return instance;
	}

	public List<MainOnlyoneDTO> onlyoneSelect(){
		Connection con = null;
		
		try {
			con = ConnectionProvider.getConnection();
			OnlyOneDAOImpl dao = OnlyOneDAOImpl.getInstance();
			
			List<MainOnlyoneDTO> mainonlyoneList = null;
			mainonlyoneList = dao.mainOnlyone(con);
						
			return mainonlyoneList;
			
		} catch (NamingException | SQLException e) { 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
	} // onlyoneSelect
}
