package co.cofarm.prj.product.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.product.service.ProductService;
import co.cofarm.prj.product.service.impl.ProductServiceImpl;
import co.cofarm.prj.product.vo.ProductVO;
import co.cofarm.prj.product.vo.productPageVO;

public class ProductList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 상품전체 페이지
		ProductService dao = new ProductServiceImpl();
		
		
		
		//페이징
		String page = request.getParameter("page");
		System.out.println(page);
		page = page ==null ? "1" : page;
		int pg = Integer.parseInt(page);
		System.out.println(pg);
		
		//페이징 숫자처리
		List<ProductVO> productTotal = new ArrayList<>();
		List<ProductVO> products = new ArrayList<>();
		
		productTotal = dao.productList();
		
		productPageVO paging = new productPageVO(productTotal.size(),pg);
		System.out.println(paging);
		
		products = dao.productPageList(pg); //전체목록
		
		request.setAttribute("products", products);
		request.setAttribute("page", paging);
		
		return "product/productList.tiles";
	}

}
