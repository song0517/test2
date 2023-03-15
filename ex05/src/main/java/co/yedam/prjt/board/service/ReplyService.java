package co.yedam.prjt.board.service;

import java.util.List;

public interface ReplyService {
	List<ReplyVO> replySelect(Long bno);
	int insertReply(ReplyVO vo);
	int deleteReply(Long rno);
	int updateReply(Long rno);
}
