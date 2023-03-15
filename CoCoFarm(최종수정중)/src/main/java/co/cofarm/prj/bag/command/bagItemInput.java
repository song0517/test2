package co.cofarm.prj.bag.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.bag.service.BagService;
import co.cofarm.prj.bag.service.impl.BagServiceImpl;
import co.cofarm.prj.bag.vo.BagVO;
import co.cofarm.prj.common.Command;

public class bagItemInput implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("연결성공!!!");
		
		String productName = request.getParameter("productName");
		String productCode = request.getParameter("productCode");
		String consumerId = request.getParameter("id");
		int productPrice = Integer.parseInt(request.getParameter("productPrice"));
		int productCount = Integer.parseInt(request.getParameter("count"));
		String farmerId = request.getParameter("farmerId");
		
		BagService service = new BagServiceImpl();
		BagVO vo = new BagVO();
		vo.setProductName(productName);
		vo.setProductCode(productCode);
		vo.setConsumerId(consumerId);
		vo.setProductPrice(productPrice);
		vo.setProudctCount(productCount);
		vo.setFarmerId(farmerId);
				
		service.bagInsert(vo);
		return "";
	}

}
