package domain;

import java.util.Date;

public class MemberDTO {
	
	/*
	me_code     not null varchar2(10)   // 코드
	me_id       not null varchar2(20)   // 아이디
	me_passwd   not null varchar2(20)   // 비번
	me_address  not null nvarchar2(100) // 주소
	me_email    not null varchar2(40)   // 이메일
	me_name     not null nvarchar2(6)   // 이름
	me_birthday not null date           // 생년월일
	me_gender   not null number(1)      // 성별
	me_phone    not null varchar2(13)   // 핸드폰번호
	me_tos      not null number(1)      // 약관 동의
	me_receive  not null number(1)      // 수신 동의
	*/
	
	private String me_code;
	private String me_id;
	private String me_passwd;
	private String me_address;
	private String me_email;
	private String me_name;
	private Date me_birthday;
	private int me_gender;
	private String me_phone;
	private int me_tos;
	private int me_receive;
	
	// getter, setter
	
	public String getMe_id() {
		return me_id;
	}
	public String getMe_code() {
		return me_code;
	}
	public void setMe_code(String me_code) {
		this.me_code = me_code;
	}
	public void setMe_id(String me_id) {
		this.me_id = me_id;
	}
	public String getMe_passwd() {
		return me_passwd;
	}
	public void setMe_passwd(String me_passwd) {
		this.me_passwd = me_passwd;
	}
	public String getMe_address() {
		return me_address;
	}
	public void setMe_address(String me_address) {
		this.me_address = me_address;
	}
	public String getMe_email() {
		return me_email;
	}
	public void setMe_email(String me_email) {
		this.me_email = me_email;
	}
	public String getMe_name() {
		return me_name;
	}
	public void setMe_name(String me_name) {
		this.me_name = me_name;
	}
	public Date getMe_birthday() {
		return me_birthday;
	}
	public void setMe_birthday(Date me_birthday) {
		this.me_birthday = me_birthday;
	}
	public int getMe_gender() {
		return me_gender;
	}
	public void setMe_gender(int me_gender) {
		this.me_gender = me_gender;
	}
	public String getMe_phone() {
		return me_phone;
	}
	public void setMe_phone(String me_phone) {
		this.me_phone = me_phone;
	}
	public int getMe_tos() {
		return me_tos;
	}
	public void setMe_tos(int me_tos) {
		this.me_tos = me_tos;
	}
	public int getMe_receive() {
		return me_receive;
	}
	public void setMe_receive(int me_receive) {
		this.me_receive = me_receive;
	}
	
	
	
	
}
