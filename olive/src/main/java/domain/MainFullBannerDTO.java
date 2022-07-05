package domain;

public class MainFullBannerDTO {
    private String banner_code;
    private String banner_title;
    private String banner_img;

    private String banner_desc;

    public MainFullBannerDTO() {
    }

    public MainFullBannerDTO(String banner_code, String banner_title, String banner_img) {
        this.banner_code = banner_code;
        this.banner_title = banner_title;
        this.banner_img = banner_img;
    }

    public String getBanner_code() {
        return banner_code;
    }

    public void setBanner_code(String banner_code) {
        this.banner_code = banner_code;
    }

    public String getBanner_title() {
        return banner_title;
    }

    public void setBanner_title(String banner_title) {
        this.banner_title = banner_title;
    }

    public String getBanner_img() {
        return banner_img;
    }

    public void setBanner_img(String banner_img) {
        this.banner_img = banner_img;
    }

    public String getBanner_desc() {
        return banner_desc;
    }

    public void setBanner_desc(String banner_desc) {
        this.banner_desc = banner_desc;
    }

    @Override
    public String toString() {
        return "MainFullBannerDTO{" +
                "banner_code='" + banner_code + '\'' +
                ", banner_title='" + banner_title + '\'' +
                ", banner_img='" + banner_img + '\'' +
                ", banner_desc='" + banner_desc + '\'' +
                '}';
    }
}
