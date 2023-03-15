package co.cofarm.prj.bag.mapper;

import java.util.List;
import java.util.Map;

import co.cofarm.prj.bag.vo.BagVO;

public interface BagMapper {
		List<BagVO> bagSelectList(String consumerId);
		BagVO bagSelect(String consumerId);
		int bagInsert(BagVO vo);
		int bagDelete(BagVO vo);
		int bagUpdate(BagVO vo);
		void insertBag(Map<String, Object> param);
		void deleteBag(Map<String, Object> code);
}
