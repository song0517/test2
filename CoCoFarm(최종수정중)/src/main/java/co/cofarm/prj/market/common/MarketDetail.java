package co.cofarm.prj.market.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.market.service.MarketService;
import co.cofarm.prj.market.service.impl.MarketServiceImpl;
import co.cofarm.prj.market.vo.MarketVO;

public class MarketDetail implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int marketNo = Integer.parseInt(request.getParameter("marketNo"));
		System.out.println(marketNo);
		
		MarketService service = new MarketServiceImpl();
		MarketVO vo = new MarketVO();
		vo = service.marketSelect(marketNo);
		System.out.println(vo);
		request.setAttribute("market", vo);
		
		return "market/marketDetail.tiles";
	}

}
