package co.cofarm.prj.QnA.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.QnA.service.QnaService;
import co.cofarm.prj.QnA.service.impl.QnaServiceImpl;
import co.cofarm.prj.QnA.vo.QnAVO;
import co.cofarm.prj.common.Command;

public class QnaSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// qna한건
		String productCode = request.getParameter("productCode");
		
		QnaService dao = new QnaServiceImpl();
		
		QnAVO vo = new QnAVO();
		
		vo = dao.qnaSelect(productCode);
		
		request.setAttribute("qnaSelect", vo);
		
		return "product/productSelect.tiles";
	}

}
