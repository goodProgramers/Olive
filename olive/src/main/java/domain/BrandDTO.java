package domain;

public class BrandDTO {

	private String br_code;     // 브랜드코드
	private String br_name;     // 브랜드이름
	private String br_number;   // 대표번호
	private String br_person;   // 담당자명
	
	// getter,setter
	public String getBr_code() {
		return br_code;
	}
	public void setBr_code(String br_code) {
		this.br_code = br_code;
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

	
}
