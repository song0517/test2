package co.cofarm.prj.buyItem.service;

import java.util.List;

import co.cofarm.prj.buyItem.vo.BuyItemVO;

public interface BuyItemService {
	List<BuyItemVO> buyItemSelectList(String productCode);
	boolean isConsumerIdCheck(BuyItemVO vo);
	int buyItemInsert(BuyItemVO vo);
}
