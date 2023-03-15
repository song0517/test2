package co.yedam.prjt.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.yedam.prjt.board.mapper.ReplyMapper;
import co.yedam.prjt.board.service.ReplyService;
import co.yedam.prjt.board.service.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService{
	@Autowired ReplyMapper replyMapper;
	
	@Override
	public List<ReplyVO> replySelect(Long bno) {
		return replyMapper.replySelect(bno);
	}

	@Override
	public int insertReply(ReplyVO vo) {
		return replyMapper.insertReply(vo);
	}

	@Override
	public int deleteReply(Long rno) {
		return replyMapper.deleteReply(rno);
	}

	@Override
	public int updateReply(Long rno) {
		return replyMapper.updateReply(rno);
	}

}
