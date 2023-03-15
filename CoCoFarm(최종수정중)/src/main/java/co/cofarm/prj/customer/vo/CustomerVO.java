package co.cofarm.prj.customer.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class CustomerVO {
	private String id;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String address;
	private String auth; //권한
}
