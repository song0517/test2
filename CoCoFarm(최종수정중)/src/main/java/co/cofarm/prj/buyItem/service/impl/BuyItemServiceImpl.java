package co.cofarm.prj.buyItem.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.buyItem.mapper.BuyItemMapper;
import co.cofarm.prj.buyItem.service.BuyItemService;
import co.cofarm.prj.buyItem.vo.BuyItemVO;
import co.cofarm.prj.common.DataSource;
import co.cofarm.prj.customer.mapper.CustomerMapper;

public class BuyItemServiceImpl implements BuyItemService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BuyItemMapper map = sqlSession.getMapper(BuyItemMapper.class);
	
	@Override
	public List<BuyItemVO> buyItemSelectList(String productCode) {
		return map.buyItemSelectList(productCode);
	}

	@Override
	public int buyItemInsert(BuyItemVO vo) {
		// TODO Auto-generated method stub
		return map.buyItemInsert(vo);
	}

	@Override
	public boolean isConsumerIdCheck(BuyItemVO vo) {
		// 구매이력확인
		return map.isConsumerIdCheck(vo);
	}

}
