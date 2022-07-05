package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import domain.ExhibitionDTO;
import domain.MainOnlyoneDTO;
import domain.OrderMemberInfoDTO;

public class OrderPaymentDAOImpl implements OrderPaymentDAO{

	// 싱글톤
	private OrderPaymentDAOImpl() {}
	private static OrderPaymentDAOImpl instance = null;
	public static OrderPaymentDAOImpl getInstance() {
		if(instance == null) {
			instance = new OrderPaymentDAOImpl();
		}
		return instance;
	}

	@Override
	public List<OrderMemberInfoDTO> selectOrderMemInfo(Connection conn) throws SQLException {
		
		String sql = "SELECT ROWNUM, t.* "
					+ "FROM( "
					+ "    SELECT e1.ex_code, ex_name, exi_img, exd_path "
					+ "    FROM exhibition e1, exhibitionimg e2, exhibitiondet e3 "
					+ "    WHERE e1.ex_code = e2.ex_code AND e1.ex_code = e3.ex_code "
					+ ") t "
					+ "WHERE ROWNUM <= 6";

		ArrayList<OrderMemberInfoDTO> onlyoneList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int rownum;
		String ex_code, ex_name, exi_img, exd_path;

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				onlyoneList = new ArrayList<OrderMemberInfoDTO>();
				OrderMemberInfoDTO dto = null;
				
				do {
					rownum = rs.getInt("rownum");
					ex_code = rs.getString("ex_code");
					ex_name = rs.getString("ex_name");
					exi_img = rs.getString("exi_img");
					exd_path = rs.getString("exd_path");
					
					dto = new ExhibitionDTO(rownum, ex_code, ex_name, exi_img, exd_path);
					
					onlyoneList.add(dto);
				} while (rs.next());
			} // if 

		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs); 
		}

		return onlyoneList;
	}

}
