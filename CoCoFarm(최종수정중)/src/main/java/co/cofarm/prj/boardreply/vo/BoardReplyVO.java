package co.cofarm.prj.boardreply.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
@Data
public class BoardReplyVO {
	private int replyCode;
	private int boardCode;
	private String boardReplyWriter;
	private String boardReplyContent;
	private String boardReplyDate;
	
	
	public BoardReplyVO(int replyCode, String boardReplyContent) {
		this.replyCode = replyCode;
		this.boardReplyContent = boardReplyContent;
	}
	
}
