package co.cofarm.prj.shop.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.common.DataSource;
import co.cofarm.prj.shop.service.ShopService;
import co.cofarm.prj.shop.service.mapper.ShopMapper;
import co.cofarm.prj.shop.vo.ShopVO;

public class ShopServiceImpl implements ShopService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ShopMapper map = sqlSession.getMapper(ShopMapper.class);
	
	@Override
	public List<ShopVO> shopSelectList() {
		return map.shopSelectList();
	}

	@Override
	public ShopVO shopSelect(ShopVO vo) {
		return map.shopSelect(vo);
	}

	@Override
	public int shopInsert(ShopVO vo) {
		return map.shopInsert(vo);
	}

	@Override
	public int shopDelete(ShopVO vo) {
		return map.shopDelete(vo);
	}

	@Override
	public int shopUpdate(ShopVO vo) {
		return 0;
	}

}
