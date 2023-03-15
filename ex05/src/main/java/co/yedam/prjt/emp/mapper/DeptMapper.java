package co.yedam.prjt.emp.mapper;

import java.util.List;
import java.util.Map;

import co.yedam.prjt.emp.service.DeptVO;
import co.yedam.prjt.emp.service.EmpVO;

public interface DeptMapper {
	//��ü ��ȸ
	List<DeptVO> getDept(DeptVO vo);
	int count(DeptVO vo);

	//���
	int insertDept(DeptVO vo);
	
	DeptVO deptSelect(String id);
	int updateDept(DeptVO vo);
	int deleteDept(String id);
	
	List<Map<String, Object>> getEmployeeId();
	List<Map<String, Object>> getLocation();
}
