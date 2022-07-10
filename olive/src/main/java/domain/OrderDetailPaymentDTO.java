package domain;

import java.sql.Date;

public class OrderDetailPaymentDTO {
	// 주문 테이블
	private String or_code; // 주문번호(주문상세테이블, 결제테이블에도쓰임)
	private int or_price; // 구매가
	private Date or_date; // 주문일자
	private int or_shippay; // 배송비
	private int or_pay; // 실결제금액(구매가-포인트)
	private int or_todaygive; // 오늘드림여부
	private String me_code; // 회원코드
	private String or_addresrequest; // 배송요청사항
	private String ad_code; // 배송지코드
	
	// 주문상세 테이블
	private String ord_code; // 주문상세번호
	private String pr_code; // 상품코드
	private int ord_count; // 상품 수량
	private int ord_price; // 상품 1개 구매가(할인적용된)
	private String prpri_code; // 단가코드
	private String sa_code; // 할인코드
	
	// 결제 테이블
	private String pa_code; // 결제번호
	private String pa_way; // 결제수단
	private int pa_amount; // 실제결제금액
	private Date pa_date; // 결제일자
	private String pa_cardnumber; // 카드번호
	private int pa_status; // 승인상태

	
	public OrderDetailPaymentDTO() {
		super();
	}


	public OrderDetailPaymentDTO(String or_code, int or_price, Date or_date, int or_shippay, int or_pay,
			int or_todaygive, String me_code, String or_addresrequest, String ad_code, String ord_code, String pr_code,
			int ord_count, int ord_price, String prpri_code, String sa_code, String pa_code, String pa_way,
			int pa_amount, Date pa_date, String pa_cardnumber, int pa_status) {
		super();
		this.or_code = or_code;
		this.or_price = or_price;
		this.or_date = or_date;
		this.or_shippay = or_shippay;
		this.or_pay = or_pay;
		this.or_todaygive = or_todaygive;
		this.me_code = me_code;
		this.or_addresrequest = or_addresrequest;
		this.ad_code = ad_code;
		this.ord_code = ord_code;
		this.pr_code = pr_code;
		this.ord_count = ord_count;
		this.ord_price = ord_price;
		this.prpri_code = prpri_code;
		this.sa_code = sa_code;
		this.pa_code = pa_code;
		this.pa_way = pa_way;
		this.pa_amount = pa_amount;
		this.pa_date = pa_date;
		this.pa_cardnumber = pa_cardnumber;
		this.pa_status = pa_status;
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

	public Date getOr_date() {
		return or_date;
	}

	public void setOr_date(Date or_date) {
		this.or_date = or_date;
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

	public int getOr_todaygive() {
		return or_todaygive;
	}

	public void setOr_todaygive(int or_todaygive) {
		this.or_todaygive = or_todaygive;
	}

	public String getMe_code() {
		return me_code;
	}

	public void setMe_code(String me_code) {
		this.me_code = me_code;
	}

	public String getOr_addresrequest() {
		return or_addresrequest;
	}

	public void setOr_addresrequest(String or_addresrequest) {
		this.or_addresrequest = or_addresrequest;
	}

	public String getAd_code() {
		return ad_code;
	}

	public void setAd_code(String ad_code) {
		this.ad_code = ad_code;
	}

	public String getOrd_code() {
		return ord_code;
	}

	public void setOrd_code(String ord_code) {
		this.ord_code = ord_code;
	}

	public String getPr_code() {
		return pr_code;
	}

	public void setPr_code(String pr_code) {
		this.pr_code = pr_code;
	}

	public int getOrd_count() {
		return ord_count;
	}

	public void setOrd_count(int ord_count) {
		this.ord_count = ord_count;
	}

	public int getOrd_price() {
		return ord_price;
	}

	public void setOrd_price(int ord_price) {
		this.ord_price = ord_price;
	}

	public String getPrpri_code() {
		return prpri_code;
	}

	public void setPrpri_code(String prpri_code) {
		this.prpri_code = prpri_code;
	}

	public String getSa_code() {
		return sa_code;
	}

	public void setSa_code(String sa_code) {
		this.sa_code = sa_code;
	}

	public String getPa_code() {
		return pa_code;
	}

	public void setPa_code(String pa_code) {
		this.pa_code = pa_code;
	}

	public String getPa_way() {
		return pa_way;
	}

	public void setPa_way(String pa_way) {
		this.pa_way = pa_way;
	}

	public int getPa_amount() {
		return pa_amount;
	}

	public void setPa_amount(int pa_amount) {
		this.pa_amount = pa_amount;
	}

	public Date getPa_date() {
		return pa_date;
	}

	public void setPa_date(Date pa_date) {
		this.pa_date = pa_date;
	}

	public String getPa_cardnumber() {
		return pa_cardnumber;
	}

	public void setPa_cardnumber(String pa_cardnumber) {
		this.pa_cardnumber = pa_cardnumber;
	}

	public int getPa_status() {
		return pa_status;
	}

	public void setPa_status(int pa_status) {
		this.pa_status = pa_status;
	}


} // class
