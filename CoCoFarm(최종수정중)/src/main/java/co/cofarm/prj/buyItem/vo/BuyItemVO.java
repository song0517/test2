package co.cofarm.prj.buyItem.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class BuyItemVO {
	private int orderCode;
	private String productCode;
	private String productName;
	private int productCount;
	private String consumerId;
	private String farmerId;
	private String image;
}
