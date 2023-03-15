package co.cofarm.prj.board.service;

import java.util.List;

import co.cofarm.prj.board.vo.BoardVO;

public interface BoardService {
	List<BoardVO> boardSelectList(int page);
	List<BoardVO> boardSelectListAll();
	BoardVO boardSelect(int boardCode);
	int boardInsert(BoardVO vo);
	int boardDelete(int boardCode);
	int boardUpdate(BoardVO vo);
	int boardView(BoardVO vo);
}
