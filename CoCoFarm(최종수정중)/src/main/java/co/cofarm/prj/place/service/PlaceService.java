package co.cofarm.prj.place.service;

import java.util.List;

import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.farmer.vo.FarmerVO;
import co.cofarm.prj.place.vo.PlaceVO;

public interface PlaceService {
	List<PlaceVO> placeSelectList();
	PlaceVO placeSelect(int farmCode);
	PlaceVO placeSelectFarm(String farmId);
	
	int placeInsert(PlaceVO vo);
	int placeUpdate(PlaceVO vo);
	int placeDelete(int placeCode);
}
