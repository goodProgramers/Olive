package domain;

public class ProductMonthDTO {


	private String prm_url;
	private String br_name;
	private String pr_name;
	private int prpri_price;
	//private double sa_rate;
	private int price;
	
	
	
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
	public String getBr_name() {
		return br_name;
	}
	public void setBr_name(String br_name) {
		this.br_name = br_name;
	}
	public int getPrpri_price() {
		return prpri_price;
	}
	public void setPrpri_price(int prpri_price) {
		this.prpri_price = prpri_price;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	@Override
	public String toString() {
		return "ProductDTO [prm_url=" + prm_url + ", br_name=" + br_name + ", pr_name=" + pr_name + ", prpri_price="
				+ prpri_price + ", price=" + price + "]";
	}
	
	
	
	
	
	
	
	
	
	
}
