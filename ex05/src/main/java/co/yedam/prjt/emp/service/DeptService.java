package co.yedam.prjt.emp.service;

import java.util.List;
import java.util.Map;

import co.yedam.prjt.common.Paging;

public interface DeptService {
	//��ü ��ȸ
	List<DeptVO> getDept(DeptVO vo, Paging paging);
	
	//���
	int insertDept(DeptVO vo);
	
	DeptVO deptSelect(String id);
	int updateDept(DeptVO vo);
	int deleteDept(String id);
	
	List<Map<String, Object>> getEmployeeId();
	List<Map<String, Object>> getLocation();
}
