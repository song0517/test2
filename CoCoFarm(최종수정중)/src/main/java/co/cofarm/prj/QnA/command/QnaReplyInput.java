package co.cofarm.prj.QnA.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.QnA.service.QnaReplyService;
import co.cofarm.prj.QnA.service.QnaService;
import co.cofarm.prj.QnA.service.impl.QnaReplyServiceImpl;
import co.cofarm.prj.QnA.service.impl.QnaServiceImpl;
import co.cofarm.prj.QnA.vo.QnAReplyVO;
import co.cofarm.prj.QnA.vo.QnAVO;
import co.cofarm.prj.common.Command;
import co.cofarm.prj.product.service.ProductService;
import co.cofarm.prj.product.service.impl.ProductServiceImpl;
import co.cofarm.prj.product.vo.ProductVO;
import co.cofarm.prj.review.service.ReviewService;
import co.cofarm.prj.review.service.impl.ReviewServiceImpl;
import co.cofarm.prj.review.vo.ReviewVO;

public class QnaReplyInput implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// db로 qna보내기 
		//String farmerId = request.getSession(farmerId);
		String productCode = request.getParameter("productCode");
		
		int qnaCode = Integer.parseInt(request.getParameter("qnaCode"));
		String farmerId = request.getParameter("farmerId");
		String replyContent = request.getParameter("replyContent");
		
		QnaReplyService dao = new QnaReplyServiceImpl();
		QnAReplyVO vo = new QnAReplyVO();
		
		vo.setFarmerId(farmerId);
		vo.setQnaCode(qnaCode);
		vo.setReplyContent(replyContent);
		
		dao.qnaReplyInsert(vo);
		
		//productSelect 들어갈때 같이 가져갈거
		ProductVO selectProduct = new ProductVO();
		
		
		ProductService dao1 = new ProductServiceImpl();
		ReviewService dao2 = new ReviewServiceImpl();
		QnaService dao3 = new QnaServiceImpl();
		
		selectProduct = dao1.productSelect(productCode);
		System.out.println(selectProduct);
		
		List<ReviewVO> reviewProductList = new ArrayList<>();
		reviewProductList = dao2.reviewSelectList(productCode);
		
		List<QnAVO> qnaList = new ArrayList<>();
		qnaList = dao3.qnaSelectList(productCode);
		
		System.out.println(qnaList.toString());
		
		//혹시몰라서,, 
		request.setAttribute("productCode", productCode);
		request.setAttribute("farmerId", farmerId);
		
		//상품상세보기, 리뷰보기, qna보기
		request.setAttribute("selectProduct", selectProduct);
		request.setAttribute("reviewProductList", reviewProductList);
		request.setAttribute("qnaList", qnaList);
		
		return "product/productSelect.tiles";
		
	}

}
