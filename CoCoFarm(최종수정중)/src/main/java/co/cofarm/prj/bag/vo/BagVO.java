package co.cofarm.prj.bag.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class BagVO {
	private String productName;
	private String productCode;
	private String consumerId;
	private int productPrice;
	private int quantity;
	private int sum;
	private String image;
	private String farmerId;
	
	private int proudctCount;

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getConsumerId() {
		return consumerId;
	}

	public void setConsumerId(String consumerId) {
		this.consumerId = consumerId;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public BagVO(String productName, String productCode, String consumerId, int productPrice, int quantity, int sum,
			String image) {
		super();
		this.productName = productName;
		this.productCode = productCode;
		this.consumerId = consumerId;
		this.productPrice = productPrice;
		this.quantity = quantity;
		this.sum = sum;
		this.image = image;
	}


	
	@Override
	public String toString() {
		return "BagVO [productName=" + productName + ", productCode=" + productCode + ", consumerId=" + consumerId
				+ ", productPrice=" + productPrice + ", quantity=" + quantity + ", sum=" + sum + ", image=" + image
				+ "]";
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public BagVO() {
	}

	public BagVO(String productName, int quantity, int sum) {
		super();
		this.productName = productName;
		this.quantity = quantity;
		this.sum = sum;
	}

}