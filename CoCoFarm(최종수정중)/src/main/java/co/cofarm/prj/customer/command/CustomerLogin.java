package co.cofarm.prj.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.customer.service.CustomerService;
import co.cofarm.prj.customer.service.impl.CustomerServiceImpl;
import co.cofarm.prj.customer.vo.CustomerVO;

public class CustomerLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 form에서 넘어와서 로그인 처리하는 페이지
		CustomerService dao = new CustomerServiceImpl();
		CustomerVO customer = new CustomerVO();
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String message = "아이디 또는 패스워드가 일치하지 않습니다.";
		customer = dao.customerLogin(id,passwd);
		if(customer !=null) {
			session.setAttribute("id", customer.getId());
			session.setAttribute("name", customer.getName());
			session.setAttribute("password", customer.getPassword());
			session.setAttribute("email", customer.getEmail());
			session.setAttribute("phone", customer.getPhone());
			session.setAttribute("address", customer.getAddress());
			session.setAttribute("auth", customer.getAuth());
			message = customer.getName() + "님 어서오세요!";
			return "main/main.tiles";
		}
		request.setAttribute("message", message);
		return "customer/customerLogin.tiles";
	}

}
