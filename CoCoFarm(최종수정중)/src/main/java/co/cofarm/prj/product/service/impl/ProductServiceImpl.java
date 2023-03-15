package co.cofarm.prj.product.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.common.DataSource;
import co.cofarm.prj.product.mapper.ProductMapper;
import co.cofarm.prj.product.service.ProductService;
import co.cofarm.prj.product.vo.ProductVO;

public class ProductServiceImpl implements ProductService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true); //true를 써야 autoCommit 가능 
	private ProductMapper map = sqlSession.getMapper(ProductMapper.class);
	
	@Override
	public List<ProductVO> productList() {
		// Product 전체리스트
		return map.productList();
	}

	@Override
	public List<ProductVO> productClassList(String type) {
		// 분류마다 product 전체리스트가져오기
		return map.productClassList(type);
	}

	@Override
	public ProductVO productSelect(String productCode) {
		// 1건 상세보기
		return map.productSelect(productCode);
	}

	@Override
	public int productInsert(ProductVO vo) {
		// 상품등록 ㅋㅋ
		return map.productInsert(vo);
	}

	@Override
	public int productDelete(ProductVO vo) {
		// 상품 삭제
		return map.productDelete(vo);
	}

	@Override
	public int productUpdate(ProductVO vo) {
		// 상품수정
		return map.productUpdate(vo);
	}

	@Override
	public List<ProductVO> productPageList(int page) {
		// 페이징
		return map.productPageList(page);
	}

}
