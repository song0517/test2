package co.cofarm.prj.shop.service.mapper;

import java.util.List;

import co.cofarm.prj.shop.vo.ShopVO;

public interface ShopMapper {
	List<ShopVO> shopSelectList();
	ShopVO shopSelect(ShopVO vo);
	int shopInsert(ShopVO vo);
	int shopDelete(ShopVO vo);
	int shopUpdate(ShopVO vo);
	
}
