package domain;

public class MainOnlyoneDTO {
	// 필드
	private int rownum; // 순서
	private String ex_code; // 기획전 코드
	private String ex_name; // 기획전 이름
	private String exi_img; // 기획전 이미지 경로
	private int exi_type;
	private String exi_title;
	private String exi_desc;
	
	public MainOnlyoneDTO() {
		super();
	}
		
	public MainOnlyoneDTO(int rownum, String ex_code, String ex_name, String exi_img, String exi_title, String exi_desc) {
		super();
		this.rownum = rownum;
		this.ex_code = ex_code;
		this.ex_name = ex_name;
		this.exi_img = exi_img;
		this.exi_title = exi_title;
		this.exi_desc = exi_desc;
	}

	public MainOnlyoneDTO(int rownum, String ex_code, String ex_name, String exi_img, int exi_type, String exi_title,
			String exi_desc) {
		super();
		this.rownum = rownum;
		this.ex_code = ex_code;
		this.ex_name = ex_name;
		this.exi_img = exi_img;
		this.exi_type = exi_type;
		this.exi_title = exi_title;
		this.exi_desc = exi_desc;
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

	public int getExi_type() {
		return exi_type;
	}

	public void setExi_type(int exi_type) {
		this.exi_type = exi_type;
	}

	public String getExi_title() {
		return exi_title;
	}

	public void setExi_title(String exi_title) {
		this.exi_title = exi_title;
	}

	public String getExi_desc() {
		return exi_desc;
	}

	public void setExi_desc(String exi_desc) {
		this.exi_desc = exi_desc;
	}

	@Override
	public String toString() {
		return "MainOnlyoneDTO [rownum=" + rownum + ", ex_code=" + ex_code + ", ex_name=" + ex_name + ", exi_img="
				+ exi_img + ", exi_type=" + exi_type + ", exi_title=" + exi_title + ", exi_desc=" + exi_desc + "]";
	}
	
}
