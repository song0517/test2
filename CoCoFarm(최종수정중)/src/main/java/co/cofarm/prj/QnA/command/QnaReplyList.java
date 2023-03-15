package co.cofarm.prj.QnA.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.QnA.service.QnaReplyService;
import co.cofarm.prj.QnA.service.impl.QnaReplyServiceImpl;
import co.cofarm.prj.QnA.vo.QnAReplyVO;
import co.cofarm.prj.common.Command;

public class QnaReplyList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// qna 답글 불러오기
		
		String qnaCode = request.getParameter("qnaCode"); //
		QnaReplyService dao = new QnaReplyServiceImpl();
		QnAReplyVO qnaReply= new QnAReplyVO();
		qnaReply = dao.qnaReplySelect(qnaCode);
		
		request.setAttribute("qnaReply", qnaReply);
		return "product/productselect.tiles";
	}

}
