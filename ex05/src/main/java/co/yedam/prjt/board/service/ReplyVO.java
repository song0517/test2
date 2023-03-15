package co.yedam.prjt.board.service;

import lombok.Data;

@Data
public class ReplyVO {
	Long rno;
	Long bno;
	String reply;
	String replyer;
	String replyDate;
	String updateDate;
}
