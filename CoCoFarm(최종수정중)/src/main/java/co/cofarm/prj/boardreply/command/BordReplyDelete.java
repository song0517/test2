package co.cofarm.prj.boardreply.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.board.service.BoardService;
import co.cofarm.prj.board.service.Impl.BoardServiceImpl;
import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.boardreply.service.BoardReplyService;
import co.cofarm.prj.boardreply.service.Impl.BoardReplyServiceImpl;
import co.cofarm.prj.boardreply.vo.BoardReplyVO;
import co.cofarm.prj.common.Command;

public class BordReplyDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int boardCode = Integer.parseInt(request.getParameter("boardCode"));
		int replyCode = Integer.parseInt(request.getParameter("replyCode"));
		BoardReplyService dao = new BoardReplyServiceImpl();
		dao.boardReplyDelete(replyCode);
		
		
		BoardService dao2 = new BoardServiceImpl();
		BoardVO vo2 = dao2.boardSelect(boardCode);
		request.setAttribute("detailboard",vo2);
		
		//댓글
		BoardReplyService replydao = new BoardReplyServiceImpl();
		List<BoardReplyVO> replylist = new ArrayList<>();
		replylist = replydao.boardReplyList(boardCode);
		request.setAttribute("replylist",replylist);
		
		
		return "board/boardDetail.tiles";
	}

}
