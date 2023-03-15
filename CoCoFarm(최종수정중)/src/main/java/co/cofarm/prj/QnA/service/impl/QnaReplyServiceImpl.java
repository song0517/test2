package co.cofarm.prj.QnA.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


import co.cofarm.prj.QnA.mapper.QnaReplyMapper;
import co.cofarm.prj.QnA.service.QnaReplyService;
import co.cofarm.prj.QnA.vo.QnAReplyVO;
import co.cofarm.prj.common.DataSource;

public class QnaReplyServiceImpl implements QnaReplyService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true); //true를 써야 autoCommit 가능 
	private QnaReplyMapper map = sqlSession.getMapper(QnaReplyMapper.class);
	
	@Override
	public List<QnAReplyVO> qnaReplyList() {
		// 모듬 qna 리스트
		return map.qnaReplyList();
	}

	

	@Override
	public QnAReplyVO qnaReplySelect(String qnaCode) {
		// 개별 qnareply
		return map.qnaReplySelect(qnaCode);
	}

	@Override
	public int qnaReplyInsert(QnAReplyVO vo) {
		//insert
		return map.qnaReplyInsert(vo);
	}

	@Override
	public int qnaReplyDelete(QnAReplyVO vo) {
		//삭제
		return map.qnaReplyDelete(vo);
	}

	@Override
	public int qnaReplyUpdate(QnAReplyVO vo) {
		//수정
		return map.qnaReplyUpdate(vo);
	}

}
