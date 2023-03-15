package co.cofarm.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.board.service.BoardService;
import co.cofarm.prj.board.service.Impl.BoardServiceImpl;
import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.common.Command;

public class BoardDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		int boardcode = Integer.parseInt(request.getParameter("bno"));
		System.out.println(boardcode);
		BoardService dao = new BoardServiceImpl();
		dao.boardDelete(boardcode);
//		boardDelete(int boardCode)
		return "board.do";
	}

}
