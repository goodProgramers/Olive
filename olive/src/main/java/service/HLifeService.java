package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import domain.HLifeDTO;
import persistence.ProductDAOImpl;

public class HLifeService {

	//싱글톤
	private static HLifeService instance;
	
	private HLifeService(){};
	
	public static HLifeService getInstance(){
		if(instance ==null) {
			instance = new HLifeService();
		}
		return instance;
	}
	

	public List<HLifeDTO> healthyLife() {
		Connection conn = null;
		List<HLifeDTO> HLifeList = null;
	try {
		conn = ConnectionProvider.getConnection();
		ProductDAOImpl dao = ProductDAOImpl.getInstance();
		HLifeList = dao.healthyLife(conn);
		
		System.out.println(conn);
		
	} catch (NamingException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		try {
			conn.close();
		} catch (SQLException e) { 
			e.printStackTrace();
		}
	}
		System.out.println("서비스"+ HLifeList);
	return HLifeList;
		
		
	}
	
	
	
}
