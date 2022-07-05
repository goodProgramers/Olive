package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import domain.ExhibitionDTO;
import domain.MainOnlyoneDTO;

public interface OnlyOneDAO {
	
	// 메인페이지 오직올리브영에서만에 뿌릴 기획전 
	public ArrayList<ExhibitionDTO> onlyone(Connection con) throws SQLException;
	
	public ArrayList<MainOnlyoneDTO> mainOnlyone(Connection con) throws SQLException;
	
}
