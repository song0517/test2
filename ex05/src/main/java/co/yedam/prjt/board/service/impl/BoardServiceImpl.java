package co.yedam.prjt.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.yedam.prjt.board.mapper.BoardMapper;
import co.yedam.prjt.board.service.BoardService;
import co.yedam.prjt.board.service.BoardVO;
import co.yedam.prjt.common.Paging;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired BoardMapper boardMapper;

	@Override
	public int count(BoardVO vo) {
		return boardMapper.count(vo);
	}

	@Override
	public List<BoardVO> boardAll(BoardVO vo, Paging paging) {
		paging.setTotalRecord(boardMapper.count(vo));
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		return boardMapper.boardAll(vo);
	}

	@Override
	public BoardVO boardSelect(String bno) {
		return boardMapper.boardSelect(bno);
	}

	@Override
	public int insertBoard(BoardVO vo) {
		return boardMapper.insertBoard(vo);
	}

	@Override
	public int updateBoard(BoardVO vo) {
		return boardMapper.updateBoard(vo);
	}

	@Override
	public int deleteBoard(String bno) {
		return boardMapper.deleteBoard(bno);
	}
	
	
}
