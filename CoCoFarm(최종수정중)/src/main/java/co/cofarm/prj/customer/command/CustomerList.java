package co.cofarm.prj.customer.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.customer.service.CustomerService;
import co.cofarm.prj.customer.service.impl.CustomerServiceImpl;
import co.cofarm.prj.customer.vo.CustomerVO;

public class CustomerList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원목록 가져옥;
		CustomerService dao = new CustomerServiceImpl();
		List<CustomerVO> list = new ArrayList<>();
		String auth = "all";
		list = dao.customerSelectList(auth);
		request.setAttribute("list", list);
		return "customer/customerList.tiles";
		
	}

}
