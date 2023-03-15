package co.cofarm.prj.market.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.common.DataSource;
import co.cofarm.prj.customer.mapper.CustomerMapper;
import co.cofarm.prj.market.mapper.MarketMapper;
import co.cofarm.prj.market.service.MarketService;
import co.cofarm.prj.market.vo.MarketVO;
import co.cofarm.prj.product.vo.ProductVO;

public class MarketServiceImpl implements MarketService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MarketMapper map = sqlSession.getMapper(MarketMapper.class);
	@Override
	public List<MarketVO> marketSelectList() {
		return map.marketSelectList();
	}
	@Override
	public int marketInsert(MarketVO vo) {
		return map.marketInsert(vo);
	}
	@Override
	public MarketVO marketSelect(int marketNo) {
		// TODO Auto-generated method stub
		return map.marketSelect(marketNo);
	}

	
}
