package domain;

public class OrderFormDTO {
	private String or_code; // 주문번호
	private int or_price; // 총상품금액
	private int sale_price; // 총할인금액(포인트 포함)
	private int or_shippay; // 배송비
	private int or_pay; // 총결제금액
	private String ad_member; // 받는분
	private String ad_tel; // 받는사람 연락처
	private String ad_address; // 받는주소
	private String or_addresrequest; // 배송요청사항
	
	public OrderFormDTO() {
		super();
	}

	public OrderFormDTO(String or_code, int or_price, int sale_price, int or_shippay, int or_pay, String ad_member,
			String ad_tel, String ad_address, String or_addresrequest) {
		super();
		this.or_code = or_code;
		this.or_price = or_price;
		this.sale_price = sale_price;
		this.or_shippay = or_shippay;
		this.or_pay = or_pay;
		this.ad_member = ad_member;
		this.ad_tel = ad_tel;
		this.ad_address = ad_address;
		this.or_addresrequest = or_addresrequest;
	}

	public String getOr_code() {
		return or_code;
	}

	public void setOr_code(String or_code) {
		this.or_code = or_code;
	}

	public int getOr_price() {
		return or_price;
	}

	public void setOr_price(int or_price) {
		this.or_price = or_price;
	}

	public int getSale_price() {
		return sale_price;
	}

	public void setSale_price(int sale_price) {
		this.sale_price = sale_price;
	}

	public int getOr_shippay() {
		return or_shippay;
	}

	public void setOr_shippay(int or_shippay) {
		this.or_shippay = or_shippay;
	}

	public int getOr_pay() {
		return or_pay;
	}

	public void setOr_pay(int or_pay) {
		this.or_pay = or_pay;
	}

	public String getAd_member() {
		return ad_member;
	}

	public void setAd_member(String ad_member) {
		this.ad_member = ad_member;
	}

	public String getAd_tel() {
		return ad_tel;
	}

	public void setAd_tel(String ad_tel) {
		this.ad_tel = ad_tel;
	}

	public String getAd_address() {
		return ad_address;
	}

	public void setAd_address(String ad_address) {
		this.ad_address = ad_address;
	}

	public String getOr_addresrequest() {
		return or_addresrequest;
	}

	public void setOr_addresrequest(String or_addresrequest) {
		this.or_addresrequest = or_addresrequest;
	}
	
} // class
