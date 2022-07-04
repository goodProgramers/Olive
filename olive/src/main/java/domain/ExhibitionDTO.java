package domain;

public class ExhibitionDTO {
	// 필드
	private int rownum; // 순서
	private String ex_code; // 기획전 코드
	private String ex_name; // 기획전 이름
	private String exi_img; // 기획전 이미지 경로
	private String exd_path; // 기획 상세페이지 경로
	
	// 디폴트 생성자
	public ExhibitionDTO() {
		super();
	}
	
	// 생성자
	public ExhibitionDTO(int rownum, String ex_code, String ex_name, String exi_img, String exd_path) {
		super();
		this.rownum = rownum;
		this.ex_code = ex_code;
		this.ex_name = ex_name;
		this.exi_img = exi_img;
		this.exd_path = exd_path;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public String getEx_code() {
		return ex_code;
	}

	public void setEx_code(String ex_code) {
		this.ex_code = ex_code;
	}

	public String getEx_name() {
		return ex_name;
	}

	public void setEx_name(String ex_name) {
		this.ex_name = ex_name;
	}

	public String getExi_img() {
		return exi_img;
	}

	public void setExi_img(String exi_img) {
		this.exi_img = exi_img;
	}

	public String getExd_path() {
		return exd_path;
	}

	public void setExd_path(String exd_path) {
		this.exd_path = exd_path;
	}

	@Override
	public String toString() {
		return "ExhibitionDTO [rownum=" + rownum + ", ex_code=" + ex_code + ", ex_name=" + ex_name + ", exi_img="
				+ exi_img + ", exd_path=" + exd_path + "]";
	}

	
}
