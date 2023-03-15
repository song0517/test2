package co.cofarm.prj.board.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BoardVO {
	private int boardCode;
	private String boardCategory;
	private String boardTitle;
	private String boardContent;
	private String boardWriter;
	private String boardDate;
	private int boardView;
	private String boardPfileName;
	private String boardOfileName;
	
	public BoardVO(String boardDate, int boardCode, String boardCategory, String boardTitle ,String boardContent) {
		this.boardDate = boardDate;
		this.boardCode = boardCode;
		this.boardCategory = boardCategory;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
	}
	
	public BoardVO(int boardCode, int boardView) {
		this.boardCode = boardCode;
		this.boardView = boardView;
	}
}

