package com.company.app.emp.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.company.app.emp.service.EmpVO;

public interface EmpMapper {
	List<EmpVO> getEmpAll(EmpVO vo);
	EmpVO getEmp(String id);
	int updateName(EmpVO vo);
	int insertEmp(EmpVO vo);
	
	int count(EmpVO vo);
	
	//매니저 여부 확인
	int getMenagerCheck(String id);
	//삭제
	int deleteEmp(String id);
	
	@Select("select * from departments")
	public List<Map<String, Object>> getDept();
	
	public List<Map<String, Object>> getDeptAll();
}
