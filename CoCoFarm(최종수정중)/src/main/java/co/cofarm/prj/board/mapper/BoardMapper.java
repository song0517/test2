package co.cofarm.prj.board.mapper;

import java.util.List;

import co.cofarm.prj.board.vo.BoardVO;

public interface BoardMapper {
	List<BoardVO> boardSelectList(int page);
	List<BoardVO> boardSelectListAll();
	BoardVO boardSelect(int boardCode);
	int boardInsert(BoardVO vo);
	int boardDelete(int boardCode);
	int boardUpdate(BoardVO vo);
	int boardView(BoardVO vo);
}
