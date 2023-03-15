package co.yedam.prjt.emp.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.yedam.prjt.common.Paging;
import co.yedam.prjt.emp.mapper.DeptMapper;
import co.yedam.prjt.emp.service.DeptService;
import co.yedam.prjt.emp.service.DeptVO;

@Service
public class DeptServiceImpl implements DeptService{
	@Autowired DeptMapper deptMapper;

	@Override
	public List<DeptVO> getDept(DeptVO vo, Paging paging) {
		paging.setTotalRecord(deptMapper.count(vo)); //start, end
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		return deptMapper.getDept(vo);
	}

	@Override
	public int insertDept(DeptVO vo) {
		return deptMapper.insertDept(vo);
	}

	@Override
	public DeptVO deptSelect(String id) {
		return deptMapper.deptSelect(id);
	}

	@Override
	public int updateDept(DeptVO vo) {
		return deptMapper.updateDept(vo);
	}

	@Override
	public int deleteDept(String id) {
		return deptMapper.deleteDept(id);
	}

	@Override
	public List<Map<String, Object>> getEmployeeId() {
		return deptMapper.getEmployeeId();
	}

	@Override
	public List<Map<String, Object>> getLocation() {
		return deptMapper.getLocation();
	}
	
}
