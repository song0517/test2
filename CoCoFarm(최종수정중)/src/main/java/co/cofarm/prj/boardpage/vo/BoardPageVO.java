package co.cofarm.prj.boardpage.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class BoardPageVO {
	int totalCnt; // 전체건수
	int pageNum; // 현재페이지
	int startPage, endPage, totalPage; // 시작,끝, 총페이지
	boolean prev, next; // 시작, 마지막 페이지가 있는지 없는지

	public BoardPageVO(int totalCnt, int pageNum) {
		this.totalCnt = totalCnt;
		this.pageNum = pageNum;

		totalPage = (int) Math.ceil(totalCnt / 10.0); // Math.ceil은 올림 기능
		// startPage, endPage 계산
		this.endPage = (int) Math.ceil(this.pageNum / 10.0) * 10; // 10page
		this.startPage = this.endPage - 9; // 1page
		if(this.endPage>totalPage) {
			this.endPage = totalPage;
		}
//			if(this.end)

		prev = this.startPage > 10; // 이전페이지
		next = this.endPage < totalPage; // 다음페이지

	}
}
