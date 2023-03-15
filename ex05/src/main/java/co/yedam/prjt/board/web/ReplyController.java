package co.yedam.prjt.board.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import co.yedam.prjt.board.service.ReplyService;
import co.yedam.prjt.board.service.ReplyVO;

@RestController
public class ReplyController {
	@Autowired ReplyService replyService;

	//등록
	@PostMapping("/replys")
	public ReplyVO insert(ReplyVO vo) {
		replyService.insertReply(vo);
		return vo;
	}
	
	//수정
	@PutMapping("/replys")
	public int update(@RequestBody Long bno) {
		int a = replyService.updateReply(bno);
		return a;
	}
	
	//삭제
	@DeleteMapping("/replys/{bno}")
	public int delete(@PathVariable Long bno) {
		int a = replyService.deleteReply(bno);
		return a;
	}
	
	//단건조회
	
	
	//전체조회
	@GetMapping("/replys/{bno}")
	public List<ReplyVO> replylist(@PathVariable Long bno){
		return replyService.replySelect(bno);
	}
}
