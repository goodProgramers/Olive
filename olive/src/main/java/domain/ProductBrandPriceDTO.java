package domain;

import java.sql.Date;

public class ProductBrandPriceDTO {
	
	private String pr_code;
	private String pr_name;
	private String br_code;
	private String ca_code;
	private int pr_count; //판매량
	private Date pr_date;
	private String prpri_code;
	private int prpri_price;
	private Date prpri_date;       
	private Date prpri_enddate;
	private String br_name;
	private String br_number;
	private String br_person;
	private int realPrice; //할인율 적용가, 데이터에 없음 쿼리로 가져옴
	private String sa_code;
	private double sa_rate;
	private Date sa_date;  
	private Date sa_end_date;
	private String prd_code;
	private String prm_url;
	
	private int prpr_count; //장바구니에 담은 상품개수
	
	public int getPrpr_count() {
		return prpr_count;
	}

	public void setPrpr_count(int prpr_count) {
		this.prpr_count = prpr_count;
	}

	public ProductBrandPriceDTO() {
		super();
	}
	
	
	public ProductBrandPriceDTO(String pr_code, String pr_name, String br_code, String ca_code, int pr_count,
			Date pr_date, String prpri_code, int prpri_price, Date prpri_date, Date prpri_enddate, String br_name,
			String br_number, String br_person, int realPrice, String sa_code, double sa_rate, Date sa_date,
			Date sa_end_date, String prd_code, String prm_url, int prpr_count) {
		super();
		this.pr_code = pr_code;
		this.pr_name = pr_name;
		this.br_code = br_code;
		this.ca_code = ca_code;
		this.pr_count = pr_count;
		this.pr_date = pr_date;
		this.prpri_code = prpri_code;
		this.prpri_price = prpri_price;
		this.prpri_date = prpri_date;
		this.prpri_enddate = prpri_enddate;
		this.br_name = br_name;
		this.br_number = br_number;
		this.br_person = br_person;
		this.realPrice = realPrice;
		this.sa_code = sa_code;
		this.sa_rate = sa_rate;
		this.sa_date = sa_date;
		this.sa_end_date = sa_end_date;
		this.prd_code = prd_code;
		this.prm_url = prm_url;
		this.prpr_count = prpr_count;
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
	public String getPrpri_code() {
		return prpri_code;
	}
	public void setPrpri_code(String prpri_code) {
		this.prpri_code = prpri_code;
	}
	public int getPrpri_price() {
		return prpri_price;
	}
	public void setPrpri_price(int prpri_price) {
		this.prpri_price = prpri_price;
	}
	public Date getPrpri_date() {
		return prpri_date;
	}
	public void setPrpri_date(Date prpri_date) {
		this.prpri_date = prpri_date;
	}
	public Date getPrpri_enddate() {
		return prpri_enddate;
	}
	public void setPrpri_enddate(Date prpri_enddate) {
		this.prpri_enddate = prpri_enddate;
	}
	public String getBr_name() {
		return br_name;
	}
	public void setBr_name(String br_name) {
		this.br_name = br_name;
	}
	public String getBr_number() {
		return br_number;
	}
	public void setBr_number(String br_number) {
		this.br_number = br_number;
	}
	public String getBr_person() {
		return br_person;
	}
	public void setBr_person(String br_person) {
		this.br_person = br_person;
	}
	public int getRealPrice() {
		return realPrice;
	}
	public void setRealPrice(int realPrice) {
		this.realPrice = realPrice;
	}
	public String getSa_code() {
		return sa_code;
	}
	public void setSa_code(String sa_code) {
		this.sa_code = sa_code;
	}
	public double getSa_rate() {
		return sa_rate;
	}
	public void setSa_rate(double sa_rate) {
		this.sa_rate = sa_rate;
	}
	public Date getSa_date() {
		return sa_date;
	}
	public void setSa_date(Date sa_date) {
		this.sa_date = sa_date;
	}
	public Date getSa_end_date() {
		return sa_end_date;
	}
	public void setSa_end_date(Date sa_end_date) {
		this.sa_end_date = sa_end_date;
	}
	public String getPrd_code() {
		return prd_code;
	}
	public void setPrd_code(String prd_code) {
		this.prd_code = prd_code;
	}
	public String getPrm_url() {
		return prm_url;
	}
	public void setPrm_url(String prm_url) {
		this.prm_url = prm_url;
	}
	
	




}//
 