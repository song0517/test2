package co.cofarm.prj.people.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.buyItem.vo.BuyItemVO;
import co.cofarm.prj.common.DataSource;
import co.cofarm.prj.people.service.PeopleService;
import co.cofarm.prj.people.mapper.PeopleMapper;
import co.cofarm.prj.product.vo.ProductVO;

public class PeopleServiceImpl implements PeopleService{

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private PeopleMapper map = sqlSession.getMapper(PeopleMapper.class);
	
	@Override
	public List<BuyItemVO> getFarmerOrders(String id) {
		return map.getFarmerOrders(id);
	}

	@Override
	public List<BuyItemVO> getCustomerOrders(String id) {
		return map.getCustomerOrders(id);
	}

	
}
