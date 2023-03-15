package co.cofarm.prj.QnA.mapper;

import java.util.List;

import co.cofarm.prj.QnA.vo.QnAVO;

public interface QnaMapper {
	List<QnAVO> qnaList(); //전체 qna 보기 - 딱히 필요할진 모르겠네욘..
	List<QnAVO> qnaSelectList(String productCode); //상품별 qna 보기
	QnAVO qnaSelect(String qnaCode); //개별 qna보기
	int qnaInsert(QnAVO vo); //qna 등록
	int qnaDelete(QnAVO vo); //삭제
	int qnaUpdate(QnAVO vo);
}
