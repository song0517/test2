package co.cofarm.prj.board.service.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.board.mapper.BoardMapper;
import co.cofarm.prj.board.service.BoardService;
import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.common.DataSource;

public class BoardServiceImpl implements BoardService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BoardMapper map = sqlSession.getMapper(BoardMapper.class);
	@Override
	public List<BoardVO> boardSelectList(int page) {
		// TODO Auto-generated method stub
		return map.boardSelectList(page);
	}
	@Override
	public List<BoardVO> boardSelectListAll() {
		// TODO Auto-generated method stub
		return map.boardSelectListAll();
	}
	@Override
	public BoardVO boardSelect(int boardCode) {
		// TODO Auto-generated method stub
		return map.boardSelect(boardCode);
	}
	@Override
	public int boardInsert(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardInsert(vo);
	}
	@Override
	public int boardDelete(int boardCode) {
		// TODO Auto-generated method stub
		return map.boardDelete(boardCode);
	}
	@Override
	public int boardUpdate(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardUpdate(vo);
	}
	@Override
	public int boardView(BoardVO vo) {
		// TODO Auto-generated method stub
		return map.boardView(vo);
	}
	

}
