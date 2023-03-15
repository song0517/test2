package co.cofarm.prj.board.command;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.board.service.BoardService;
import co.cofarm.prj.board.service.Impl.BoardServiceImpl;
import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.boardpage.vo.BoardPageVO;
import co.cofarm.prj.common.Command;

public class BordSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BoardService dao = new BoardServiceImpl();
		List<BoardVO> boards = new ArrayList<>();
		List<BoardVO> boards2 = new ArrayList<>();
		String search = request.getParameter("search");

		boards = dao.boardSelectListAll();
		System.out.println("11122223333");

		for (BoardVO vo : boards) {
			if (vo.getBoardTitle().contains(search) == true || vo.getBoardContent().contains(search) == true) {
				boards2.add(vo);
			}
		}
		request.setAttribute("boards", boards2);
		// 페이지
		String page = request.getParameter("page");
		page = page == null ? "1" : page;
		int pg = Integer.parseInt(page);
		// 페이징 숫자 처리
		System.out.println(boards2.size());
		BoardPageVO paging = new BoardPageVO(boards2.size(), pg);
		request.setAttribute("page", paging);

		return "board/boardList.tiles";
	}

}
