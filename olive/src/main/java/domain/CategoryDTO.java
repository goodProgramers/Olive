package domain;

public class CategoryDTO {

    private String ca_code;
    private String ca_name;
    private String ca_topcode;
    private int ca_level;

    public CategoryDTO() {
    }

    public CategoryDTO(String ca_code, String ca_name, String ca_topcode, int ca_level) {
        this.ca_code = ca_code;
        this.ca_name = ca_name;
        this.ca_topcode = ca_topcode;
        this.ca_level = ca_level;
    }

    public String getCa_code() {
        return ca_code;
    }

    public void setCa_code(String ca_code) {
        this.ca_code = ca_code;
    }

    public String getCa_name() {
        return ca_name;
    }

    public void setCa_name(String ca_name) {
        this.ca_name = ca_name;
    }

    public String getCa_topcode() {
        return ca_topcode;
    }

    public void setCa_topcode(String ca_topcode) {
        this.ca_topcode = ca_topcode;
    }

    public int getCa_level() {
        return ca_level;
    }

    public void setCa_level(int ca_level) {
        this.ca_level = ca_level;
    }

    @Override
    public String toString() {
        return "CategoryDTO{" +
                "ca_code='" + ca_code + '\'' +
                ", ca_name='" + ca_name + '\'' +
                ", ca_topcode='" + ca_topcode + '\'' +
                ", ca_level=" + ca_level +
                '}';
    }


}
