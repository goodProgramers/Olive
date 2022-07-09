package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.WeeklyDTO;
import persistence.WeeklyDAO;

public class WeeklyService {

	private WeeklyService() {}
	private static WeeklyService instance = new WeeklyService();
	
	public static WeeklyService getInstance() {
		return instance;
	}
	
	public List<WeeklyDTO> thumbnail(){

		Connection con = null;
		
		try {
	         con = ConnectionProvider.getConnection();
	         //System.out.println(con);
	         WeeklyDAO dao = WeeklyDAO.getInstance();
	         List<WeeklyDTO> list = null;
	         list=dao.weelklySelect(con);
	         
	         return list;

		} catch (NamingException | SQLException e) { 
	        //e.printStackTrace();  syso("ListService.select() 에러 : ")
	        throw new RuntimeException(e);
	     } finally {
	    	JdbcUtil.close(con);
	     }
		
	}
	
}//class
