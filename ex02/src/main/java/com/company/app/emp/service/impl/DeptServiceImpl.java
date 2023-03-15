package com.company.app.emp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.company.app.emp.mapper.DeptMapper;
import com.company.app.emp.service.DeptService;
import com.company.app.emp.service.DeptVO;

@Component
public class DeptServiceImpl implements DeptService{
	@Autowired DeptMapper deptMapper;

	@Override
	public List<DeptVO> getDept() {
		return deptMapper.getDept();
	}

	@Override
	public int insertDept(DeptVO vo) {
		return deptMapper.insertDept(vo);
	}
	
}
