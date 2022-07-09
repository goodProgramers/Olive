package domain;

import java.sql.Date;

public class ProductDTO {

	private String pr_code;
	private String pr_name;
	private String br_code;
	private String ca_code;
	private int pr_count;
	private Date pr_date;
	
	public ProductDTO() {
		super(); 
	}

	public ProductDTO(String pr_code, String pr_name, String br_code, String ca_code, int pr_count, Date pr_date) {
		super();
		this.pr_code = pr_code;
		this.pr_name = pr_name;
		this.br_code = br_code;
		this.ca_code = ca_code;
		this.pr_count = pr_count;
		this.pr_date = pr_date;
	}
	
	public String getPr_code() {
		return pr_code;
	}
	public void setPr_code(String pr_code) {
		this.pr_code = pr_code;
	}
	public String getPr_name() {
		return pr_name;
	}
	public void setPr_name(String pr_name) {
		this.pr_name = pr_name;
	}
	public String getBr_code() {
		return br_code;
	}
	public void setBr_code(String br_code) {
		this.br_code = br_code;
	}
	public String getCa_code() {
		return ca_code;
	}
	public void setCa_code(String ca_code) {
		this.ca_code = ca_code;
	}
	public int getPr_count() {
		return pr_count;
	}
	public void setPr_count(int pr_count) {
		this.pr_count = pr_count;
	}
	public Date getPr_date() {
		return pr_date;
	}
	public void setPr_date(Date pr_date) {
		this.pr_date = pr_date;
	}
	

	
	
}
 