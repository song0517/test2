package co.cofarm.prj.buyItem.mapper;

import java.util.List;

import co.cofarm.prj.buyItem.vo.BuyItemVO;

public interface BuyItemMapper {
	List<BuyItemVO> buyItemSelectList(String productCode);
	boolean isConsumerIdCheck(BuyItemVO vo);
	int buyItemInsert(BuyItemVO vo);
}
