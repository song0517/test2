package com.company.app.emp.service;

import java.util.List;

public interface DeptService {
	//전체 조회
	List<DeptVO> getDept();
	
	//등록
	int insertDept(DeptVO vo);
}
