package co.cofarm.prj.product.vo;

import co.cofarm.prj.board.vo.BoardVO;
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

public class ProductVO {
	private String productCode;
	private String productClass;
	private String productName;
	private String productContent;
	private int productPrice;
	private String farmerId;
	private String productDate;
	private String productImage1;
	private String productImage2;
	
}

