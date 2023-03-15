package co.cofarm.prj.boardreply.service;

import java.util.List;

import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.boardreply.vo.BoardReplyVO;

public interface BoardReplyService {
	List<BoardReplyVO> boardReplyList(int boardCode);
	int boardReplyInsert(BoardReplyVO vo);
	int boardReplyDelete(int replyCode);
	int boardReplyUpdate(BoardReplyVO vo);
	
}
