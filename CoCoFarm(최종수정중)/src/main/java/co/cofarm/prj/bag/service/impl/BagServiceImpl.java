package co.cofarm.prj.bag.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.bag.mapper.BagMapper;
import co.cofarm.prj.bag.service.BagService;
import co.cofarm.prj.bag.vo.BagVO;
import co.cofarm.prj.common.DataSource;



public class BagServiceImpl implements BagService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BagMapper map = sqlSession.getMapper(BagMapper.class);
	
	@Override
	public List<BagVO> bagSelectList(String consumerId) {
		return map.bagSelectList(consumerId);
	}
	public BagVO bagSelect(String consumerId) {
		return map.bagSelect(consumerId);
	}
	@Override
	public int bagInsert(BagVO vo) {
		return map.bagInsert(vo);
	}
	@Override
	public int bagDelete(BagVO vo) {
		return map.bagDelete(vo);
	}
	@Override
	public int bagUpdate(BagVO vo) {
		return map.bagUpdate(vo);
		
	}
	@Override
	public void insertBag(Map<String, Object> param, String quantity) {
		int q = Integer.parseInt(quantity);
		
		for(int i = 0; i < q; i++) {
			map.insertBag(param);
		}
		
	}
	@Override
	public void deleteBag(Map<String, Object> code) {
		map.deleteBag(code);
		
	}
	@Override
	public BagVO bagSelect(BagVO vo) {

		return null;
	}
	
	


}
