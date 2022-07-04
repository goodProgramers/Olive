package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

import domain.ExhibitionDTO;
import domain.MainOnlyoneDTO;

public class OliveDAOImpl implements OliveDAO{

	// 싱글톤
	private OliveDAOImpl() {}
	private static OliveDAOImpl instance = null;
	public static OliveDAOImpl getInstance() {
		if(instance == null) {
			instance = new OliveDAOImpl();
		}
		return instance;
	}

	@Override
	public ArrayList<ExhibitionDTO> onlyone(Connection con) throws SQLException {
		
		String sql = "SELECT ROWNUM, t.* "
					+ "FROM( "
					+ "    SELECT e1.ex_code, ex_name, exi_img, exd_path "
					+ "    FROM exhibition e1, exhibitionimg e2, exhibitiondet e3 "
					+ "    WHERE e1.ex_code = e2.ex_code AND e1.ex_code = e3.ex_code "
					+ ") t "
					+ "WHERE ROWNUM <= 6";

		ArrayList<ExhibitionDTO> onlyoneList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int rownum;
		String ex_code, ex_name, exi_img, exd_path;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				onlyoneList = new ArrayList<ExhibitionDTO>();
				ExhibitionDTO dto = null;
				
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

	@Override
	public ArrayList<MainOnlyoneDTO> mainOnlyone(Connection con) throws SQLException {
		String sql = "SELECT ROWNUM, t.* "
					+ "FROM( "
					+ "    SELECT e1.ex_code, ex_name, exi_img, exi_type, exi_title, exi_desc "
					+ "    FROM exhibition e1, exhibitionimg e2 "
					+ "    WHERE e1.ex_code = e2.ex_code AND exi_type = 1 "
					+ ") t "
					+ "WHERE ROWNUM <= 6";
		
		ArrayList<MainOnlyoneDTO> mainOnlyoneList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		int rownum, exi_type;
		String ex_code, ex_name, exi_img, exi_title, exi_desc;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				mainOnlyoneList = new ArrayList<MainOnlyoneDTO>();
				MainOnlyoneDTO dto = null;
				
				do {
					rownum = rs.getInt("rownum");
					ex_code = rs.getString("ex_code");
					exi_type = rs.getInt("exi_type");
					ex_name = rs.getString("ex_name");
					exi_img = rs.getString("exi_img");
					exi_title = rs.getString("exi_title");
					exi_desc = rs.getString("exi_desc");
					
					dto = new MainOnlyoneDTO(rownum, ex_code, ex_name, exi_img, exi_type, exi_title, exi_desc);
					
					mainOnlyoneList.add(dto);
					
					// System.out.println(dto.getEx_name());
				} while (rs.next());
			} // if 
			
			
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs); 
		}

		return mainOnlyoneList;
	}

}
