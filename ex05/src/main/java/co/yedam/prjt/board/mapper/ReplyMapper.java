package co.yedam.prjt.board.mapper;

import java.util.List;

import co.yedam.prjt.board.service.ReplyVO;

public interface ReplyMapper {
	List<ReplyVO> replySelect(Long bno);
	int insertReply(ReplyVO vo);
	int deleteReply(Long rno);
	int updateReply(Long rno);
}
