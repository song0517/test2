package co.cofarm.prj.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.customer.service.CustomerService;
import co.cofarm.prj.customer.service.impl.CustomerServiceImpl;

public class CustomerIdCheck implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일반회원 아이디 중복체크
		CustomerService dao = new CustomerServiceImpl();
		String id = request.getParameter("id");
		boolean check = dao.isCustomerIdCheck(id);
		String result = "0";
		if(check) {
			result="1";
		}
		return "ajax:" + result;
	}

}
