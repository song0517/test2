package co.cofarm.prj.farmer.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.cofarm.prj.farmer.vo.FarmerVO;

public interface FarmerMapper {
	List<FarmerVO> farmerSelectList(); //모든 농장정보
	List<FarmerVO> farmerAcceptList(); //승인 대기 리스트
	FarmerVO farmerSelect(FarmerVO vo); //농장 선택
	int farmerInsert(FarmerVO vo); //농장 추가
	int farmerDelete(FarmerVO vo); //농장 삭제
	int farmerUpdate(FarmerVO vo); //농장 정보
	
	FarmerVO farmerFind(String id);
}
