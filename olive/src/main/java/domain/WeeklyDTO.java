package domain;

public class WeeklyDTO {

//	EX_CODE   NOT NULL VARCHAR2(10)   
//	EXI_IMG   NOT NULL VARCHAR2(4000) 
//	EXI_TITLE          NVARCHAR2(200) 
//	EXI_DESC           NVARCHAR2(200)
	
	private String EX_CODE;
	private String EXI_IMG;
	private String EXI_TITLE;
	private String EXI_DESC;
	
	
	
	public String getEX_CODE() {
		return EX_CODE;
	}
	public void setEX_CODE(String eX_CODE) {
		EX_CODE = eX_CODE;
	}
	public String getEXI_IMG() {
		return EXI_IMG;
	}
	public void setEXI_IMG(String eXI_IMG) {
		EXI_IMG = eXI_IMG;
	}
	public String getEXI_TITLE() {
		return EXI_TITLE;
	}
	public void setEXI_TITLE(String eXI_TITLE) {
		EXI_TITLE = eXI_TITLE;
	}
	public String getEXI_DESC() {
		return EXI_DESC;
	}
	public void setEXI_DESC(String eXI_DESC) {
		EXI_DESC = eXI_DESC;
	}
	
	
	@Override
	public String toString() {
		return "WeeklyDTO [EX_CODE=" + EX_CODE + ", EXI_IMG=" + EXI_IMG + ", EXI_TITLE=" + EXI_TITLE + ", EXI_DESC="
				+ EXI_DESC + "]";
	}
	
	
	
	
	
	
	
	
}
