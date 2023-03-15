package co.cofarm.prj.place.mapper;

import java.util.List;

import co.cofarm.prj.farmer.vo.FarmerVO;
import co.cofarm.prj.place.vo.PlaceVO;

public interface PlaceMapper {
	List<PlaceVO> placeSelectList();
	PlaceVO placeSelect(int farmCode);
	PlaceVO placeSelectFarm(String farmId);
	
	int placeInsert(PlaceVO vo);
	int placeUpdate(PlaceVO vo);
	int placeDelete(int placeCode);
}
