package co.cofarm.prj.QnA.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class QnAVO {
	private int qnaCode;
	private String productCode;
	private String customerId;
	private String qnaTitle;
	private String farmerId;
	private String qnaContent;
	private String qnaCreationDate;
}
