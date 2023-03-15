package co.yedam.prjt.board.service;

import java.util.List;

import co.yedam.prjt.common.Paging;

public interface BoardService {
	int count(BoardVO vo);
	List<BoardVO> boardAll(BoardVO vo, Paging paging);
	BoardVO boardSelect(String bno);
	
	int insertBoard(BoardVO vo);
	int updateBoard(BoardVO vo);
	int deleteBoard(String bno);
}
