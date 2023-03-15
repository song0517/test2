package co.cofarm.prj.review.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.review.service.ReviewService;
import co.cofarm.prj.review.service.impl.ReviewServiceImpl;
import co.cofarm.prj.review.vo.ReviewVO;

public class ReviewList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상품마다 리뷰 보기
		
		String productCode = request.getParameter("productCode");
		ReviewService dao = new ReviewServiceImpl();
		List<ReviewVO> reviewProductList = new ArrayList<>();
		reviewProductList = dao.reviewSelectList(productCode);
		
		request.setAttribute("reviewProductList", reviewProductList);
		
		return "product/productSelect.tiles";
	}

}
