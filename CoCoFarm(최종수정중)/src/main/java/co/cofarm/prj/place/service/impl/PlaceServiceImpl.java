package co.cofarm.prj.place.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.common.DataSource;
import co.cofarm.prj.farmer.vo.FarmerVO;
import co.cofarm.prj.market.mapper.MarketMapper;
import co.cofarm.prj.place.mapper.PlaceMapper;
import co.cofarm.prj.place.service.PlaceService;
import co.cofarm.prj.place.vo.PlaceVO;

public class PlaceServiceImpl implements PlaceService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private PlaceMapper map = sqlSession.getMapper(PlaceMapper.class);
	@Override
	public List<PlaceVO> placeSelectList() {
		return map.placeSelectList();
	}

	@Override
	public int placeInsert(PlaceVO vo) {
		return map.placeInsert(vo);
	}

	@Override
	public PlaceVO placeSelect(int farmCode) {
		return map.placeSelect(farmCode);
	}

	@Override
	public PlaceVO placeSelectFarm(String farmId) {
		return map.placeSelectFarm(farmId);
	}

	@Override
	public int placeUpdate(PlaceVO vo) {
		return map.placeUpdate(vo);
	}

	@Override
	public int placeDelete(int placeCode) {
		return map.placeDelete(placeCode);
	}
}
