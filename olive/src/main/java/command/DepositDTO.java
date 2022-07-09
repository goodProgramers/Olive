package command;

import java.sql.Date;

public class DepositDTO {
	private String de_code; // 코드
	private String me_code; // 회원코드
	private String or_code; // 주문번호
	private int de_amount; // 적립/사용 금액
	private Date de_date; // 일자
	private int de_type; // 적립/사용 여부
	
	public DepositDTO() {
		super();
	}

	public DepositDTO(String de_code, String me_code, String or_code, int de_amount, Date de_date, int de_type) {
		super();
		this.de_code = de_code;
		this.me_code = me_code;
		this.or_code = or_code;
		this.de_amount = de_amount;
		this.de_date = de_date;
		this.de_type = de_type;
	}

	public String getDe_code() {
		return de_code;
	}

	public void setDe_code(String de_code) {
		this.de_code = de_code;
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

	public int getDe_amount() {
		return de_amount;
	}

	public void setDe_amount(int de_amount) {
		this.de_amount = de_amount;
	}

	public Date getDe_date() {
		return de_date;
	}

	public void setDe_date(Date de_date) {
		this.de_date = de_date;
	}

	public int getDe_type() {
		return de_type;
	}

	public void setDe_type(int de_type) {
		this.de_type = de_type;
	}
	
} // class
