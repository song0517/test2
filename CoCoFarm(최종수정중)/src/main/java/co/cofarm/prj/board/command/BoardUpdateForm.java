package co.cofarm.prj.board.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.board.service.BoardService;
import co.cofarm.prj.board.service.Impl.BoardServiceImpl;
import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.common.Command;

public class BoardUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(11111);
		
		
		
		int code = Integer.parseInt(request.getParameter("boardCode"));
		BoardService dao = new BoardServiceImpl();
		BoardVO vo2 = dao.boardSelect(code);
		String writer = request.getParameter("boardWriter"); 
		String category  = request.getParameter("boardCategory");
		String title  = request.getParameter("boardTitle"); 
		String content  = vo2.getBoardContent();
		int view  = Integer.parseInt(request.getParameter("boardView")); 
		request.setAttribute("vo", vo2);
		System.out.println(22222);
		
		BoardVO vo = new BoardVO(code,category,title,content,writer,"0",view," "," ");
		request.setAttribute("updateboard", vo);
		
		
		return "board/boardUpdateForm.tiles";
	}

}
