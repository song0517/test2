package co.cofarm.prj.QnA.vo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class QnAReplyVO {
	private int replyCode;
	private int qnaCode;
	private String farmerId; //작성자
	private String replyContent;
	private String replyCreateDate;
	
}
