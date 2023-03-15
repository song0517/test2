package co.cofarm.prj.review.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	private String reviewCode;
	private String productCode;
	private String reviewContent;
	private String customerId;
	private String reviewDate;
}
