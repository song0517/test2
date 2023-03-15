package co.cofarm.prj.market.common;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.market.service.MarketService;
import co.cofarm.prj.market.service.impl.MarketServiceImpl;
import co.cofarm.prj.market.vo.MarketVO;

public class MarketList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MarketService dao = new MarketServiceImpl();
		List<MarketVO> markets = new ArrayList<MarketVO>();
		markets = dao.marketSelectList();
		
		System.out.println(markets);
		request.setAttribute("markets", markets);
		
		
		return "market/marketListTest.tiles";
	}

}
