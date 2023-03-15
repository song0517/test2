package co.cofarm.prj.buyItem.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.bag.service.BagService;
import co.cofarm.prj.bag.service.impl.BagServiceImpl;
import co.cofarm.prj.bag.vo.BagVO;
import co.cofarm.prj.buyItem.service.BuyItemService;
import co.cofarm.prj.buyItem.service.impl.BuyItemServiceImpl;
import co.cofarm.prj.buyItem.vo.BuyItemVO;
import co.cofarm.prj.common.Command;

public class OrderList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	
		//orderform  호출함!
		
		BagService dao = new BagServiceImpl();
		
		String customerId = request.getParameter("customerId");
		System.out.println(customerId);
		
		List<BagVO> bags = new ArrayList<BagVO>();
		bags = dao.bagSelectList(customerId);
		
		BuyItemService service = new BuyItemServiceImpl();
		BuyItemVO vo = new BuyItemVO();
		for(int i=0; i<bags.size(); i++) {
			int count = bags.get(i).getProudctCount();
			vo.setOrderCode(3);
			vo.setProductCode(bags.get(i).getProductCode());
			vo.setProductName(bags.get(i).getProductName());
			vo.setProductCount(bags.get(i).getQuantity());
			vo.setConsumerId(bags.get(i).getConsumerId());
			vo.setFarmerId(bags.get(i).getFarmerId());
			
			service.buyItemInsert(vo);
		}

		request.setAttribute("bags", bags);
		
		return "order/order.tiles";
	}

}
