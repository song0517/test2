package co.cofarm.prj.review.mapper;

import java.util.List;

import co.cofarm.prj.review.vo.ReviewVO;

public interface ReviewMapper {
	List<ReviewVO> reviewList(ReviewVO vo); //전체 리뷰 보기
	List<ReviewVO> reviewSelectList(String productCode);
	ReviewVO reviewSelect(ReviewVO vo); //개별 리뷰보기
	int reviewInsert(ReviewVO vo); //리뷰 등록
	int reviewDelete(ReviewVO vo); //삭제
	int reviewUpdate(ReviewVO vo);
}
