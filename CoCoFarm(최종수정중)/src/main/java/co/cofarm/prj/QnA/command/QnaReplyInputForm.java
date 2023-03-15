package co.cofarm.prj.QnA.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;

public class QnaReplyInputForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Qna 답글 작성
		int qnaCode = Integer.parseInt(request.getParameter("qnaCode"));
		String farmerId = request.getParameter("farmerId");
		String productCode = request.getParameter("productCode");
		
		request.setAttribute("qnaCode", qnaCode);
		request.setAttribute("farmerId", farmerId);
		request.setAttribute("productCode", productCode);
		
		return "qna/qnaReplyInputForm.tiles";
	}

}
