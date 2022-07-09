package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProductMonthDTO;
import domain.WeeklyDTO;
import persistence.MonthDAO;
import persistence.WeeklyDAO;

public class MonthService {

	private MonthService() {}
	private static MonthService instance = new MonthService();
	
	public static MonthService getInstance() {
		return instance;
	}
	
	public Map<WeeklyDTO, List<ProductMonthDTO>> thumbProduct(){

		Connection con = null;
		
		try {
	         con = ConnectionProvider.getConnection();
	         //System.out.println(con);
	         MonthDAO dao = MonthDAO.getInstance();
	         Map<WeeklyDTO, List<ProductMonthDTO>> MonthprList = null;
	         MonthprList=dao.MonthSelect(con);// dao에 컨넥션 객체를 넣어줘서 dao에서 db와 연결되서 필요한 기능을 수행하고 결과값을 받아온 부분.
	         								  // 그렇다면 내가 이 서비스에서 여러가지의 요청을 dao에게 하면은 무리일까 ?
	         								  // 
	         
	         return MonthprList;

		} catch (NamingException | SQLException e) { 
	        //e.printStackTrace();  syso("ListService.select() 에러 : ")
	        throw new RuntimeException(e);
	     } finally {
	    	JdbcUtil.close(con);
	     }
		
	}// thumbProduct()
	
	//제품 이미지랑 가격을 가져오는 메서드
	
}//class
