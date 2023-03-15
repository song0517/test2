package co.cofarm.prj.board.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.cofarm.prj.board.service.BoardService;
import co.cofarm.prj.board.service.Impl.BoardServiceImpl;
import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.common.Command;

public class BoardWrite implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String saveFolder = request.getSession().getServletContext().getRealPath("/upload");
		
		System.out.println(saveFolder);
		
		String encod = "UTF-8";
		int maxSize = 5 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(
				request, 
				saveFolder,
				maxSize,
				encod, 
				new DefaultFileRenamePolicy()
		);
		
		
		
		String writer = multi.getParameter("writer");//작성자
		String title = multi.getParameter("title"); //제목
		String category = multi.getParameter("category"); //카테고리
		String pfileName  = multi.getFilesystemName("file"); //첨부파일
		String ofileName = multi.getOriginalFileName("file");
		String pfile = ("upload"+"\\"+pfileName);
		String content  = multi.getParameter("content"); //첨부파일
		
		//디비 인서트
		BoardService dao = new BoardServiceImpl();
		dao.boardInsert(new BoardVO(0, category, title, content, writer, "0", 0, pfile ,ofileName));
		System.out.println(22222222);
	
		return "board.do";
	}

}
