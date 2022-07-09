package domain;

public class HLifeDTO {
	
	private String hl_code;
	private String ca_code;
	private String hl_title;
	private String hl_desc;
	private String hl_img;
	

	public HLifeDTO( ) {
		super(); 
	}
	
	public HLifeDTO(String hl_code, String ca_code, String hl_title, String hl_desc, String hl_img) {
		super();
		this.hl_code = hl_code;
		this.ca_code = ca_code;
		this.hl_title = hl_title;
		this.hl_desc = hl_desc;
		this.hl_img = hl_img;
	}
	public String getHl_code() {
		return hl_code;
	}
	public void setHl_code(String hl_code) {
		this.hl_code = hl_code;
	}
	public String getCa_code() {
		return ca_code;
	}
	public void setCa_code(String ca_code) {
		this.ca_code = ca_code;
	}
	public String getHl_title() {
		return hl_title;
	}
	public void setHl_title(String hl_title) {
		this.hl_title = hl_title;
	}
	public String getHl_desc() {
		return hl_desc;
	}
	public void setHl_desc(String hl_desc) {
		this.hl_desc = hl_desc;
	}
	public String getHl_img() {
		return hl_img;
	}
	public void setHl_img(String hl_img) {
		this.hl_img = hl_img;
	}

	/*
	 * @Override public String toString() { return "HLifeDTO [hl_code=" + hl_code +
	 * ", ca_code=" + ca_code + ", hl_title=" + hl_title + ", hl_desc=" + hl_desc +
	 * ", hl_img=" + hl_img + "]"; }
	 */
	
	
	
}
