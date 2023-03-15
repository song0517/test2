package com.company.app.emp.mapper;

import java.util.List;

import com.company.app.emp.service.DeptVO;

public interface DeptMapper {
	//전체 조회
	List<DeptVO> getDept();
		
	//등록
	int insertDept(DeptVO vo);
}
