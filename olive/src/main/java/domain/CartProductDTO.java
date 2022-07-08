package domain;

import java.sql.Date;

public class CartProductDTO {

    private String cart_prImgs; // 상품이미지
    private String cart_brands; // 브랜드명
    private String cart_products; // 상품명
    private int cart_prPrices; // 단가
    private int cart_prPriceCnts; // 수량 * 단가
    private int cart_prCounts; // 수량
    private int cart_realPrices; // 수량 * 구매가
    private int cart_realPricehiddens; // 1개 실구매가
    private String priceCode; // 단가코드
    private String saleCode; // 할인코드
    
	public CartProductDTO() {
		super();
	}

	public CartProductDTO(String cart_prImgs, String cart_brands, String cart_products, int cart_prPrices,
			int cart_prPriceCnts, int cart_prCounts, int cart_realPrices, int cart_realPricehiddens) {
		super();
		this.cart_prImgs = cart_prImgs;
		this.cart_brands = cart_brands;
		this.cart_products = cart_products;
		this.cart_prPrices = cart_prPrices;
		this.cart_prPriceCnts = cart_prPriceCnts;
		this.cart_prCounts = cart_prCounts;
		this.cart_realPrices = cart_realPrices;
		this.cart_realPricehiddens = cart_realPricehiddens;
	}

	public String getCart_prImgs() {
		return cart_prImgs;
	}

	public void setCart_prImgs(String cart_prImgs) {
		this.cart_prImgs = cart_prImgs;
	}

	public String getCart_brands() {
		return cart_brands;
	}

	public void setCart_brands(String cart_brands) {
		this.cart_brands = cart_brands;
	}

	public String getCart_products() {
		return cart_products;
	}

	public void setCart_products(String cart_products) {
		this.cart_products = cart_products;
	}

	public int getCart_prPrices() {
		return cart_prPrices;
	}

	public void setCart_prPrices(int cart_prPrices) {
		this.cart_prPrices = cart_prPrices;
	}

	public int getCart_prPriceCnts() {
		return cart_prPriceCnts;
	}

	public void setCart_prPriceCnts(int cart_prPriceCnts) {
		this.cart_prPriceCnts = cart_prPriceCnts;
	}

	public int getCart_prCounts() {
		return cart_prCounts;
	}

	public void setCart_prCounts(int cart_prCounts) {
		this.cart_prCounts = cart_prCounts;
	}

	public int getCart_realPrices() {
		return cart_realPrices;
	}

	public void setCart_realPrices(int cart_realPrices) {
		this.cart_realPrices = cart_realPrices;
	}

	public int getCart_realPricehiddens() {
		return cart_realPricehiddens;
	}

	public void setCart_realPricehiddens(int cart_realPricehiddens) {
		this.cart_realPricehiddens = cart_realPricehiddens;
	}

	@Override
	public String toString() {
		return "CartProductDTO [cart_prImgs=" + cart_prImgs + ", cart_brands=" + cart_brands + ", cart_products="
				+ cart_products + ", cart_prPrices=" + cart_prPrices + ", cart_prPriceCnts=" + cart_prPriceCnts
				+ ", cart_prCounts=" + cart_prCounts + ", cart_realPrices=" + cart_realPrices
				+ ", cart_realPricehiddens=" + cart_realPricehiddens + "]";
	}
    
} // class
