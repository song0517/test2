package co.cofarm.prj.market.mapper;

import java.util.List;

import co.cofarm.prj.market.vo.MarketVO;
import co.cofarm.prj.product.vo.ProductVO;

public interface MarketMapper {
	List<MarketVO> marketSelectList();
	MarketVO marketSelect(int marketNo);
	
	int marketInsert(MarketVO vo); //직거래장터등록
}
