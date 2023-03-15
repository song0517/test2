package com.company.app.emp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.app.common.Paging;
import com.company.app.emp.mapper.EmpMapper;
import com.company.app.emp.service.EmpService;
import com.company.app.emp.service.EmpVO;


//@Component
//�����ε� ����� �ϰ�, Ʈ�����ó�� �� �ΰ����� ����� ���ش�.
@Service
public class EmpServiceImpl implements EmpService{
	@Autowired EmpMapper empMapper;
	@Override
	public List<EmpVO> getEmpAll(EmpVO vo, Paging paging) {
		paging.setTotalRecord(empMapper.count(vo)); //start, end
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		return empMapper.getEmpAll(vo);
	}

	@Override
	public EmpVO getEmp(String id) {
		return empMapper.getEmp(id);
	}

	@Override
	public int insertEmp(EmpVO vo) {
		return empMapper.insertEmp(vo);
	}

	@Override
	public int updateName(EmpVO vo) {
		return empMapper.updateName(vo);
	}

	@Override
	public int deleteEmp(String id) {
		//100���� -> manager_id�� �ִٸ� ��������
		//�޴������� Ȯ��
		int check = empMapper.getMenagerCheck(id);
		if(check == 0) {
			//�ƴϸ� ����
			return empMapper.deleteEmp(id);
		}
		return 0;
	}
}
