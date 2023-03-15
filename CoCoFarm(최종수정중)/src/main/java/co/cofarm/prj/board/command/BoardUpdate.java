package co.cofarm.prj.board.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Document;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.cofarm.prj.board.service.BoardService;
import co.cofarm.prj.board.service.Impl.BoardServiceImpl;
import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.common.Command;

public class BoardUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub

		
		


		int code = Integer.parseInt(request.getParameter("code"));
		String category = request.getParameter("category");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println(category);
		
		
		
		BoardVO vo = new BoardVO("0", code, category, title, content);
		BoardService dao = new BoardServiceImpl();
		dao.boardUpdate(vo);
		return "board.do";
	}

}
