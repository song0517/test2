package co.cofarm.prj.review.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.buyItem.service.BuyItemService;
import co.cofarm.prj.buyItem.service.impl.BuyItemServiceImpl;
import co.cofarm.prj.buyItem.vo.BuyItemVO;
import co.cofarm.prj.common.Command;

public class CustomerCheck implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 구매이력 확인
		BuyItemService dao = new BuyItemServiceImpl();
		BuyItemVO vo = new BuyItemVO();
		String productCode = request.getParameter("productCode");
		String id = request.getParameter("id");

		
		vo.setConsumerId(id);
		vo.setProductCode(productCode);
		
		boolean b = dao.isConsumerIdCheck(vo);
		String result = "1";
		if(!b) {
			result="0"; 
		}
		System.out.println(result);
		return "ajax:" + result;
	}

}
