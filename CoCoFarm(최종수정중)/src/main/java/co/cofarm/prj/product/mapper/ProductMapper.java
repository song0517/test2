package co.cofarm.prj.product.mapper;

import java.util.List;

import co.cofarm.prj.product.vo.ProductVO;

public interface ProductMapper {
	List<ProductVO> productList(); //전체 상품
	List<ProductVO> productClassList(String type); //분류에 따라 상품 전체 보기 ㅎ
	ProductVO productSelect(String productCode); //한 상품 상세보기
	List<ProductVO> productPageList(int page);//페이징
	int productInsert(ProductVO vo); //상품등록
	int productDelete(ProductVO vo); //삭제
	int productUpdate(ProductVO vo); //수정
}
