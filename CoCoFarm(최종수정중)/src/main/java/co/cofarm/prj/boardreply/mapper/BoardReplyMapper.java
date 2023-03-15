package co.cofarm.prj.boardreply.mapper;

import java.util.List;

import co.cofarm.prj.boardreply.vo.BoardReplyVO;

public interface BoardReplyMapper {
	List<BoardReplyVO> boardReplyList(int boardCode);
	int boardReplyInsert(BoardReplyVO vo);
	int boardReplyDelete(int replyCode);
	int boardReplyUpdate(BoardReplyVO vo);
}
