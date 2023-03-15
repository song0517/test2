package co.cofarm.prj.market.service;

import java.util.List;

import co.cofarm.prj.market.vo.MarketVO;
import co.cofarm.prj.product.vo.ProductVO;

public interface MarketService {
	List<MarketVO> marketSelectList();
	MarketVO marketSelect(int marketNo);
	
	int marketInsert(MarketVO vo); //직거래장터등록
}
