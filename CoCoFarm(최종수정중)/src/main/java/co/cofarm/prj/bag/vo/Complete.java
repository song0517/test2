package co.cofarm.prj.bag.vo;

import java.io.IOException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.shop.service.ShopService;
import co.cofarm.prj.shop.service.impl.ShopServiceImpl;
import co.cofarm.prj.shop.vo.ShopVO;

public class Complete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		return"bags/complete.tiles";
	}
}
