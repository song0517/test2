package co.cofarm.prj.farmer.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.common.DataSource;
import co.cofarm.prj.farmer.mapper.FarmerMapper;
import co.cofarm.prj.farmer.service.FarmerService;
import co.cofarm.prj.farmer.vo.FarmerVO;

public class FarmerServiceImpl implements FarmerService{
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private FarmerMapper map = sqlSession.getMapper(FarmerMapper.class);
	@Override
	public List<FarmerVO> farmerSelectList() {
		return map.farmerSelectList();
	}
	@Override
	public FarmerVO farmerSelect(FarmerVO vo) {
		// TODO Auto-generated method stub
		return map.farmerSelect(vo);
	}
	@Override
	public int farmerInsert(FarmerVO vo) {
		// TODO Auto-generated method stub
		return map.farmerInsert(vo);
	}
	@Override
	public int farmerDelete(FarmerVO vo) {
		// TODO Auto-generated method stub
		return map.farmerDelete(vo);
	}
	@Override
	public int farmerUpdate(FarmerVO vo) {
		return map.farmerUpdate(vo);
	}
	@Override
	public List<FarmerVO> farmerAcceptList() {
		return map.farmerAcceptList();
	}
	@Override
	public FarmerVO farmerFind(String id) {
		// TODO Auto-generated method stub
		return map.farmerFind(id);
	}

	
	
}
