package co.cofarm.prj.market.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MarketVO {
	private int marketNo;
	private String farmerId;
	private String marketName;
	private String marketPhone;
	private String marketAdress;
	private String marketContent;
	private double marketLat;
	private double marketLon;
	private String marketImage;
	private String marketImageSave;
}
