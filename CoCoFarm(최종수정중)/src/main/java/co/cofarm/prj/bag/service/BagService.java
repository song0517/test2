package co.cofarm.prj.bag.service;

import java.util.List;
import java.util.Map;

import co.cofarm.prj.bag.vo.BagVO;

public interface BagService {
	List<BagVO> bagSelectList(String id); 
	BagVO bagSelect(BagVO vo); 
	int bagInsert(BagVO vo);
	int bagDelete(BagVO vo);
	int bagUpdate(BagVO vo);
	void insertBag(Map<String, Object> map, String quantity);
	void deleteBag(Map<String, Object> map);
	

}
