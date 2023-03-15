package co.cofarm.prj.product.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.product.service.ProductService;
import co.cofarm.prj.product.service.impl.ProductServiceImpl;
import co.cofarm.prj.product.vo.ProductVO;
import co.cofarm.prj.product.vo.productPageVO;

public class ProductClassList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상품 분류별 전체보기
		
		String type = request.getParameter("type");
		
		List<ProductVO> classProduct  = new ArrayList<>();
		
		ProductService dao = new ProductServiceImpl();
		
		classProduct = dao.productClassList(type);
		
		request.setAttribute("classProduct", classProduct);
		request.setAttribute("type", type);
		
		//페이징
				String page = request.getParameter("page");
				System.out.println(page);
				page = page ==null ? "1" : page;
				int pg = Integer.parseInt(page);
				System.out.println(pg);
				
				//페이징 숫자처리
				List<ProductVO> products = new ArrayList<>();
				
				productPageVO paging = new productPageVO(classProduct.size(),pg);
				System.out.println(paging);
				
				products = dao.productPageList(pg); //전체목록
				
				request.setAttribute("products", products);
				request.setAttribute("page", paging);
				
		
		return "product/productClassList.tiles";
	}

}
