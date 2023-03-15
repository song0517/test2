package co.cofarm.prj.shop.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Setter
@Getter
public class ShopVO {
	
	private int orderCode;
	private String productCode;
	private int buyMount;
	private String consumerId;
	private String consumerName;
	private String phone;
	private String address;
	private String delevery;
	
	public ShopVO() {}
	
	public ShopVO(int orderCode, String productCode, int buyMount, String consumerId, String consumerName,
			String phone, String address, String delevery) {

		this.orderCode = orderCode;
		this.productCode = productCode;
		this.buyMount = buyMount;
		this.consumerId = consumerId;
		this.consumerName = consumerName;
		this.phone = phone;
		this.address = address;
		this.delevery = delevery;
	}

	@Override
	public String toString() {
		return "ShopVO [orderCode=" + orderCode + ", productCode=" + productCode + ", buyMount=" + buyMount
				+ ", consumerId=" + consumerId + ", consumerName=" + consumerName + ", phone=" + phone + ", address="
				+ address + ", delevery=" + delevery + "]";
	}
	
	
	

}

