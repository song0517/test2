package co.yedam.prjt.emp.service;

import lombok.Data;

@Data
public class DeptVO {
	String departmentId;
	String departmentName;
	String managerId;
	String locationId;
	
	Integer first = 1;
	Integer last = 10;
}
