package co.cofarm.prj.QnA.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.QnA.service.QnaService;
import co.cofarm.prj.QnA.service.impl.QnaServiceImpl;
import co.cofarm.prj.QnA.vo.QnAVO;
import co.cofarm.prj.common.Command;


public class QnaList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상세보기 페이지에 qna불러오기
		String productCode = request.getParameter("productCode");
		String farmerId = request.getParameter("farmerId");
		
		System.out.println(productCode);
		System.out.println(farmerId);
		
		QnaService dao = new QnaServiceImpl();
		List<QnAVO> qnaList = new ArrayList<>();
		qnaList = dao.qnaSelectList(productCode);
		
		System.out.println(qnaList.toString());
		
		request.setAttribute("productCode", productCode);
		request.setAttribute("farmerId", farmerId);
		request.setAttribute("qnaList", qnaList);
		
		return "product/productSelect.tiles";
	}

}
