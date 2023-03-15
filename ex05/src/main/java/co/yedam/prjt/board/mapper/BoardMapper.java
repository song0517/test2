package co.yedam.prjt.board.mapper;

import java.util.List;

import co.yedam.prjt.board.service.BoardVO;

public interface BoardMapper {
	int count(BoardVO vo);
	List<BoardVO> boardAll(BoardVO vo);
	BoardVO boardSelect(String bno);
	
	int insertBoard(BoardVO vo);
	int updateBoard(BoardVO vo);
	int deleteBoard(String bno);
}
