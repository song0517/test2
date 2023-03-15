package co.cofarm.prj.review.service;

import java.util.List;

import co.cofarm.prj.review.vo.ReviewVO;

public interface ReviewService {
	List<ReviewVO> reviewList(ReviewVO vo); //전체 리뷰 보기
	List<ReviewVO> reviewSelectList(String productCode); //상품별 리뷰 보기
	ReviewVO reviewSelect(ReviewVO vo); //개별 리뷰보기
	int reviewInsert(ReviewVO vo); //리뷰 등록
	int reviewDelete(ReviewVO vo); //삭제
	int reviewUpdate(ReviewVO vo);
	
	
}
