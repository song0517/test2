package co.yedam.prjt.board.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.yedam.prjt.board.service.BoardService;
import co.yedam.prjt.board.service.BoardVO;
import co.yedam.prjt.common.Paging;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board")
@Log4j
public class BoardController {
	@Autowired BoardService boardService;
	
	//전체조회
	@GetMapping("/list")
	public String boardSelectAll(Model model, BoardVO vo, Paging paging) {
		model.addAttribute("boards", boardService.boardAll(vo, paging));
		return "board/list";
	}
	
	//단건조회 페이지
	@GetMapping("/select")
	public String select(Model model, @RequestParam String bno) {
		//조회된 결과를 model에 담아서 전달.
		model.addAttribute("board", boardService.boardSelect(bno));
		return "board/select";
	}
	
	//등록페이지
	@GetMapping("/insert")
	public void insert() {}
	
	//등록 처리
	@PostMapping("/insert")
	public String insertProc(BoardVO vo, RedirectAttributes rttr) {
		boardService.insertBoard(vo);
		rttr.addFlashAttribute("result", "도서등록완료!");
		return "redirect:/board/list";
	}
	
	//수정 페이지
	@GetMapping("/update")
	public String update(Model model, @RequestParam String bno) {
		model.addAttribute("board", boardService.boardSelect(bno));
		return "board/update";
	}
	
	//수정 처리
	@PostMapping("/update")
	public String updateProc(BoardVO vo, RedirectAttributes rttr) {
		log.info(vo);
		boardService.updateBoard(vo);
		rttr.addFlashAttribute("result", "수정 완료!");
		return "redirect:/board/list";
	}
	
	//삭제처리
	@PostMapping("/delete")
	public String deleteProc(@RequestParam String bno, RedirectAttributes rttr) {
		boardService.deleteBoard(bno);
		rttr.addFlashAttribute("result", "삭제 완료!");
		return "redirect:/board/list";
	}
}
