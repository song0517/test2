package co.cofarm.prj.farmer.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class FarmerVO {
	private String id;
	private String farmName;
	private String farmPhone;
	private String farmAddress;
	private int farmAcc;
}
