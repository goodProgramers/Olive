package domain;

import java.util.Date;

public class HotProductDTO {

	
	  // 필드
	   private String pr_code;     // 상품코드
	   private String ca_code;     // 카테고리 코드
	   private String br_code;     // 브랜드코드
	   private String pr_name;     // 상품이름
	   private String br_name;     // 브랜드이름
	   private int pr_count;       // 판매량        생각해보자..
	   private Date pr_date;       // 등록일        생각해보자..
	   private String prpri_code;  // 단가 코드
	   private int prpri_price;    // 단가
	   private Date prpri_date;    // 등록일(변경일)  생각해보자..
	   private Date prpri_enddate; // 종료일         생각해보자..
	   private String br_number;   // 대표번호
	   private String br_person;   // 담당자명
	   private int realPrice;      // 할인가
	   private String sa_code;
	   private double sa_rate;
	   private Date sa_date;
	   private Date sa_end_date;
	   private String prm_code;
	   private String prm_img;
	   
	

		// getter, setter
	   
	
	public String getPr_code() {
		return pr_code;
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
	public String getPrm_code() {
		return prm_code;
	}
	public void setPrm_code(String prm_code) {
		this.prm_code = prm_code;
	}
	public String getPrm_img() {
		return prm_img;
	}
	public void setPrm_img(String prm_img) {
		this.prm_img = prm_img;
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
	public String getCa_code() {
		return ca_code;
	}
	public void setCa_code(String ca_code) {
		this.ca_code = ca_code;
	}
	public String getBr_code() {
		return br_code;
	}
	public void setBr_code(String br_code) {
		this.br_code = br_code;
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
	
   
   
}
