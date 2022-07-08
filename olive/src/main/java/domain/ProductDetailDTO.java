package domain;

public class ProductDetailDTO {
//
//	--PR_CODE  NOT NULL VARCHAR2(10)   
//	--PRM_URL  NOT NULL VARCHAR2(4000)
//	--PR_NAME  NOT NULL NVARCHAR2(100)

	private String pr_name;
	private String prm_url;
	private String br_name;
// p.pr_code, pr_count, prpri_price, s.sa_rate ,  price
	
	
	private String pr_code;
	private int pr_count;
	private int prpri_price;
	private double sa_rate;
	private int price;
	
	
	
	public String getPr_code() {
		return pr_code;
	}
	public void setPr_code(String pr_code) {
		this.pr_code = pr_code;
	}
	public int getPr_count() {
		return pr_count;
	}
	public void setPr_count(int pr_count) {
		this.pr_count = pr_count;
	}
	public int getPrpri_price() {
		return prpri_price;
	}
	public void setPrpri_price(int prpri_price) {
		this.prpri_price = prpri_price;
	}
	public double getSa_rate() {
		return sa_rate;
	}
	public void setSa_rate(double sa_rate) {
		this.sa_rate = sa_rate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	////////////////////////////
	public String getBr_name() {
		return br_name;
	}
	public void setBr_name(String br_name) {
		this.br_name = br_name;
	}
	public String getPr_name() {
		return pr_name;
	}
	public void setPr_name(String pr_name) {
		this.pr_name = pr_name;
	}
	public String getPrm_url() {
		return prm_url;
	}
	public void setPrm_url(String prm_url) {
		this.prm_url = prm_url;
	}
	
	
	@Override
	public String toString() {
		return "ProductDetailDTO [pr_name=" + pr_name + ", prm_url=" + prm_url + ", br_name=" + br_name + ", pr_code="
				+ pr_code + ", pr_count=" + pr_count + ", prpri_price=" + prpri_price + ", sa_rate=" + sa_rate
				+ ", price=" + price + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
}
