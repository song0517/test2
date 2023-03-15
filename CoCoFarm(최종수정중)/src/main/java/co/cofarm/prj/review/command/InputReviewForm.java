package co.cofarm.prj.review.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.buyItem.service.BuyItemService;
import co.cofarm.prj.buyItem.service.impl.BuyItemServiceImpl;
import co.cofarm.prj.buyItem.vo.BuyItemVO;
import co.cofarm.prj.common.Command;

public class InputReviewForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 리뷰 등록 폼 호출
		String productCode = request.getParameter("productCode");
		String id = request.getParameter("id");
		System.out.println(productCode);
		
		
		
		request.setAttribute("productCode", productCode);
		
		
		return "review/inputReviewForm.tiles";
		
				
		}

}
