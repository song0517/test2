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

public class BordReplyInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String writer = request.getParameter("id");
		int boardCode = Integer.parseInt(request.getParameter("boardCode"));
		String content = request.getParameter("reply");
		int boardView = Integer.parseInt(request.getParameter("boardView"))-1;
		System.out.println(boardCode);
		System.out.println(boardView);
		
		BoardReplyVO vo = new BoardReplyVO(0, boardCode, writer, content, "0");
		BoardReplyService dao = new BoardReplyServiceImpl();
		dao.boardReplyInsert(vo);

		
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
