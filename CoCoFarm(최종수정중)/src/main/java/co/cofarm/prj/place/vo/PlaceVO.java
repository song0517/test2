package co.cofarm.prj.place.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class PlaceVO {
	private int farmCode;
	private String farmId;
	private String farmAddress;
	private String farmPlace;
	private String farmName;
	private String farmPhone;
	private String farmProduct;
	private String farmContent;
	private String farmImage;
	private String farmImageSave;
	private double farmLat;
	private double farmLon;
}
