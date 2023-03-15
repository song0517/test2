package co.cofarm.prj.shop.service;

import java.util.List;

import co.cofarm.prj.bag.vo.BagVO;
import co.cofarm.prj.shop.vo.ShopVO;

public interface ShopService {
	List<ShopVO> shopSelectList(); 
	ShopVO shopSelect(ShopVO vo); 
	int shopInsert(ShopVO vo); //결제 DB추가
	int shopDelete(ShopVO vo);
	int shopUpdate(ShopVO vo);
	

}
