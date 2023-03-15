package co.cofarm.prj.board.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;

public class BoardWriteForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
//		BoardService dao = new BoardServiceImpl();
//		List<BoardVO> boards = new ArrayList<>(); 
//		boards = dao.boardSelectList();
//		
//		System.out.println(boards);
//		request.setAttribute("boards", boards);
		
		
		if(request.getSession().getAttribute("id")!=null) {
			return "board/boardWriteForm.tiles";
		
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			try {
				out = response.getWriter();
				out.println("<script language='javascript'>");
				out.println("alert('로그인 후 이용가능합니다.')");
				out.println("location.href='board.do'");
				out.println("</script>");
				out.flush();
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return "board.do";
			
			
		}
	}

}
