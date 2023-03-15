package co.cofarm.prj.QnA.service;

import java.util.List;

import co.cofarm.prj.QnA.vo.QnAReplyVO;
import co.cofarm.prj.QnA.vo.QnAVO;

public interface QnaReplyService {
	//전체 qna리스트
	List<QnAReplyVO> qnaReplyList();
	//상품별 qna 리스트
	
	//qna 1건 - qna code로 보기
	QnAReplyVO qnaReplySelect(String qnaCode);
	//qna등록
	int qnaReplyInsert(QnAReplyVO vo); //qna 등록
	int qnaReplyDelete(QnAReplyVO vo); //삭제
	int qnaReplyUpdate(QnAReplyVO vo);
	
}
