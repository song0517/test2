package co.cofarm.prj.board.command;

import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.board.service.BoardService;
import co.cofarm.prj.board.service.Impl.BoardServiceImpl;
import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.boardpage.vo.BoardPageVO;
import co.cofarm.prj.common.Command;

public class Board implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시판 글 목록 가져오기
		BoardService dao = new BoardServiceImpl();
		
		//페이지
		String page = request.getParameter("page");
		
		page = page ==null ? "1" : page;
		int pg = Integer.parseInt(page);
		System.out.println(pg);
		//페이징 숫자 처리
		List<BoardVO> boardAll = new ArrayList<>(); 
		boardAll = dao.boardSelectListAll();
		System.out.println(boardAll.size());
		BoardPageVO paging = new BoardPageVO(boardAll.size(), pg); 
		
		
		//글 목록 가져오기
		List<BoardVO> boards = new ArrayList<>(); 
		boards = dao.boardSelectList(pg);
		
		request.setAttribute("boards", boards);
		request.setAttribute("page", paging);
		
		return "board/boardList.tiles";
	}

}
