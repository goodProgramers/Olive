package domain;

public class Cart {
 
	//private String me_code;
	private String pr_code;
	private int pr_count;
	
	public Cart() {
		super();
	}
	
	public Cart(String pr_code, int pr_count) {
		super();
		this.pr_code = pr_code;
		this.pr_count = pr_count;
	}
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
	
	
}
