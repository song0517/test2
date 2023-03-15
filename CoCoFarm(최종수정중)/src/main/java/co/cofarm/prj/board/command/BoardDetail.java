package co.cofarm.prj.board.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.board.service.BoardService;
import co.cofarm.prj.board.service.Impl.BoardServiceImpl;
import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.boardreply.service.BoardReplyService;
import co.cofarm.prj.boardreply.service.Impl.BoardReplyServiceImpl;
import co.cofarm.prj.boardreply.vo.BoardReplyVO;
import co.cofarm.prj.common.Command;

public class BoardDetail implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int codenum = Integer.parseInt(request.getParameter("dno"));
		int boardview = Integer.parseInt(request.getParameter("boardview"));
		System.out.println(codenum);
		BoardService dao = new BoardServiceImpl();
		BoardVO vo = dao.boardSelect(codenum);
		request.setAttribute("detailboard", vo);

		//댓글
		BoardReplyService replydao = new BoardReplyServiceImpl();
		List<BoardReplyVO> replylist = new ArrayList<>();
		replylist = replydao.boardReplyList(codenum);
		request.setAttribute("replylist",replylist);
		
		
		//조회수 올리는
		BoardVO vo2 = new BoardVO(codenum,boardview+1);
		dao.boardView(vo2);
		return "board/boardDetail.tiles";
	}

}
