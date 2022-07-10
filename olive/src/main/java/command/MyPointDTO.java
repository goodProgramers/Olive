package command;

import java.sql.Date;

public class MyPointDTO {
	private String myp_code; // 코드
	private String me_code; // 회원코드
	private String or_code; // 주문번호
	private int myp_amount; // 적립/사용 금액
	private Date myp_date; // 일자
	private int myp_type; // 적립/사용 여부
	private Date myp_expire; // 유효기간
	
	public MyPointDTO() {
		super();
	}

	public MyPointDTO(String myp_code, String me_code, String or_code, int myp_amount, Date myp_date, int myp_type,
			Date myp_expire) {
		super();
		this.myp_code = myp_code;
		this.me_code = me_code;
		this.or_code = or_code;
		this.myp_amount = myp_amount;
		this.myp_date = myp_date;
		this.myp_type = myp_type;
		this.myp_expire = myp_expire;
	}

	public String getMyp_code() {
		return myp_code;
	}

	public void setMyp_code(String myp_code) {
		this.myp_code = myp_code;
	}

	public String getMe_code() {
		return me_code;
	}

	public void setMe_code(String me_code) {
		this.me_code = me_code;
	}

	public String getOr_code() {
		return or_code;
	}

	public void setOr_code(String or_code) {
		this.or_code = or_code;
	}

	public int getMyp_amount() {
		return myp_amount;
	}

	public void setMyp_amount(int myp_amount) {
		this.myp_amount = myp_amount;
	}

	public Date getMyp_date() {
		return myp_date;
	}

	public void setMyp_date(Date myp_date) {
		this.myp_date = myp_date;
	}

	public int getMyp_type() {
		return myp_type;
	}

	public void setMyp_type(int myp_type) {
		this.myp_type = myp_type;
	}

	public Date getMyp_expire() {
		return myp_expire;
	}

	public void setMyp_expire(Date myp_expire) {
		this.myp_expire = myp_expire;
	}

} // class
