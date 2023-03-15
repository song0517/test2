package co.cofarm.prj.people.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.cofarm.prj.bag.vo.BagVO;
import co.cofarm.prj.buyItem.mapper.BuyItemMapper;
import co.cofarm.prj.buyItem.vo.BuyItemVO;
import co.cofarm.prj.common.Command;
import co.cofarm.prj.people.service.PeopleService;
import co.cofarm.prj.people.service.impl.PeopleServiceImpl;

public class ConsumerReview implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response){
		
		System.out.println("TEST");
		PeopleService dao = new PeopleServiceImpl();
		HttpSession session = request.getSession();
			
		String id = (String) session.getAttribute("id");
		String auth = (String) request.getSession().getAttribute("auth");
			
		System.out.println("권한:" + auth);
			
		List<BuyItemVO> items = new ArrayList<>();
		items = dao.getFarmerOrders(id);

			System.out.println("items : "+ items);
			request.setAttribute("items", items);
			
		
		return "people/customerReview.tiles"; //고객 구매상품
		
	}

}
