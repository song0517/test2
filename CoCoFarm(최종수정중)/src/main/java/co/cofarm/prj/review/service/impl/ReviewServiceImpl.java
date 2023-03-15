package co.cofarm.prj.review.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.common.DataSource;
import co.cofarm.prj.product.mapper.ProductMapper;
import co.cofarm.prj.review.mapper.ReviewMapper;
import co.cofarm.prj.review.service.ReviewService;
import co.cofarm.prj.review.vo.ReviewVO;

public class ReviewServiceImpl implements ReviewService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true); //true를 써야 autoCommit 가능 
	private ReviewMapper map = sqlSession.getMapper(ReviewMapper.class);
	
	@Override
	public List<ReviewVO> reviewList(ReviewVO vo) {
		//전체 리뷰
		return map.reviewList(vo);
	}
	
	@Override
	public List<ReviewVO> reviewSelectList(String productCode) {
		// 상품별 리뷰 리스트
		return map.reviewSelectList(productCode);
	}

	@Override
	public ReviewVO reviewSelect(ReviewVO vo) {
		// 개별 리뷰
		return map.reviewSelect(vo);
	}

	@Override
	public int reviewInsert(ReviewVO vo) {
		//리뷰 등록
		return map.reviewInsert(vo);
	}

	@Override
	public int reviewDelete(ReviewVO vo) {
		// 리뷰삭제
		return map.reviewDelete(vo);
	}

	@Override
	public int reviewUpdate(ReviewVO vo) {
		//리뷰 수정 
		return map.reviewUpdate(vo);
	}

	

}
