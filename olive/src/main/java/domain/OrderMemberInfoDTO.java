package domain;

public class OrderMemberInfoDTO {
	private String me_code; // 회원코드
	private String me_id; // 회원 ID
	private int ad_main; // 기본배송지여부
	private String ad_code; // 배송지코드
	private String ad_name; // 배송지명
	private String ad_member; // 받는분
	private String ad_tel; // 받는사람연락처
	private String midtel; // 받는사람연락처가운데4자리
	private String endtel; // 받는사람연락처끝4자리
	private String ad_address; // 받는주소
	private int my_point; // 마이페이지에 있는 포인트
	private String mbs_code; // 멤버십 등급코드
	private double mbs_pointrate; // 적립율
	
	public OrderMemberInfoDTO() {
		super();
	}

	public OrderMemberInfoDTO(String me_code, String me_id, int ad_main, String ad_code, String ad_name,
			String ad_member, String ad_tel, String midtel, String endtel, String ad_address, int my_point,
			String mbs_code, double mbs_pointrate) {
		super();
		this.me_code = me_code;
		this.me_id = me_id;
		this.ad_main = ad_main;
		this.ad_code = ad_code;
		this.ad_name = ad_name;
		this.ad_member = ad_member;
		this.ad_tel = ad_tel;
		this.midtel = midtel;
		this.endtel = endtel;
		this.ad_address = ad_address;
		this.my_point = my_point;
		this.mbs_code = mbs_code;
		this.mbs_pointrate = mbs_pointrate;
	}

	public String getMe_code() {
		return me_code;
	}

	public void setMe_code(String me_code) {
		this.me_code = me_code;
	}

	public String getMe_id() {
		return me_id;
	}

	public void setMe_id(String me_id) {
		this.me_id = me_id;
	}

	public int getAd_main() {
		return ad_main;
	}

	public void setAd_main(int ad_main) {
		this.ad_main = ad_main;
	}

	public String getAd_code() {
		return ad_code;
	}

	public void setAd_code(String ad_code) {
		this.ad_code = ad_code;
	}

	public String getAd_name() {
		return ad_name;
	}

	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
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

	public String getMidtel() {
		return midtel;
	}

	public void setMidtel(String midtel) {
		this.midtel = midtel;
	}

	public String getEndtel() {
		return endtel;
	}

	public void setEndtel(String endtel) {
		this.endtel = endtel;
	}

	public String getAd_address() {
		return ad_address;
	}

	public void setAd_address(String ad_address) {
		this.ad_address = ad_address;
	}

	public int getMy_point() {
		return my_point;
	}

	public void setMy_point(int my_point) {
		this.my_point = my_point;
	}

	public String getMbs_code() {
		return mbs_code;
	}

	public void setMbs_code(String mbs_code) {
		this.mbs_code = mbs_code;
	}

	public double getMbs_pointrate() {
		return mbs_pointrate;
	}

	public void setMbs_pointrate(double mbs_pointrate) {
		this.mbs_pointrate = mbs_pointrate;
	}
		
} // class
