package co.cofarm.prj.bag.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.cofarm.prj.bag.service.BagService;
import co.cofarm.prj.bag.service.impl.BagServiceImpl;
import co.cofarm.prj.bag.vo.BagVO;
import co.cofarm.prj.common.Command;

public class BagList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BagService dao = new BagServiceImpl();
		HttpSession session = request.getSession();
		
		String customerId = request.getParameter("customerId");
		
		List<BagVO> bags = new ArrayList<BagVO>();
		bags = dao.bagSelectList(customerId);
		
		int i = 0;
		int sum = 0;
		for(i=0; i<bags.size(); i++) {
			sum += bags.get(i).getSum();;
		}
		
		request.setAttribute("bags", bags);
		session.setAttribute("sum", sum);	

		//장바구니 화면 호출 !
		return "bags/bagList.tiles";
	}

}
