package co.cofarm.prj.boardreply.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.boardreply.mapper.BoardReplyMapper;
import co.cofarm.prj.boardreply.service.BoardReplyService;
import co.cofarm.prj.boardreply.vo.BoardReplyVO;
import co.cofarm.prj.common.DataSource;

public class BoardReplyServiceImpl implements BoardReplyService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BoardReplyMapper map = sqlSession.getMapper(BoardReplyMapper.class);
	@Override
	public List<BoardReplyVO> boardReplyList(int boardCode) {
		return map.boardReplyList(boardCode);
	}
	@Override
	public int boardReplyInsert(BoardReplyVO vo) {
		return map.boardReplyInsert(vo);
	}
	@Override
	public int boardReplyDelete(int replyCode) {
		return map.boardReplyDelete(replyCode);
	}
	@Override
	public int boardReplyUpdate(BoardReplyVO vo) {
		return map.boardReplyUpdate(vo);
	}
	
	

}
