package co.cofarm.prj.QnA.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.QnA.mapper.QnaMapper;
import co.cofarm.prj.QnA.service.QnaService;
import co.cofarm.prj.QnA.vo.QnAVO;
import co.cofarm.prj.common.DataSource;


public class QnaServiceImpl implements QnaService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true); //true를 써야 autoCommit 가능 
	private QnaMapper map = sqlSession.getMapper(QnaMapper.class);
	@Override
	public List<QnAVO> qnaList() {
		// 모든 qna
		return map.qnaList();
	}

	@Override
	public List<QnAVO> qnaSelectList(String productCode) {
		// 상품별 qna
		return map.qnaSelectList(productCode);
	}

	@Override
	public QnAVO qnaSelect(String qnaCode) {
		// 개별 qna - 1건씩
		return map.qnaSelect(qnaCode);
	}

	@Override
	public int qnaInsert(QnAVO vo) {
		// qna 입력
		return map.qnaInsert(vo);
	}

	@Override
	public int qnaDelete(QnAVO vo) {
		// qna,삭제
		return map.qnaDelete(vo);
	}

	@Override
	public int qnaUpdate(QnAVO vo) {
		// qna 수정
		return map.qnaUpdate(vo);
	}


}
