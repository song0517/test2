package co.cofarm.prj.product.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class productPageVO {
	int totalCnt; //전체건수
	int pageNum; //현재페이지
	int startPage, endPage, totalPage;
	boolean prev, next;
	
	public productPageVO(int totalCnt, int pageNum) {
		this.totalCnt = totalCnt;
		this.pageNum = pageNum;
		
		totalPage = (int) Math.ceil(totalCnt / 10.0); //올림해줌
		
		//startPage, endpage계산
		this.endPage = (int) Math.ceil(this.pageNum/10.0) * 10;
		this.startPage = this.endPage-9;
		if(this.endPage>totalPage) {
			this.endPage = totalPage;
		}//
		
		prev = this.startPage > 10; //이전페이지, 11페이지 부터는 이전 페이지가 있어야함
		next = this.endPage < totalPage; //totalPage보다 작으면  이후 페이지가 있어야 한다.
	}
}
