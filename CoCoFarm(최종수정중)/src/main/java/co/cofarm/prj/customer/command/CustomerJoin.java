package co.cofarm.prj.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.customer.service.CustomerService;
import co.cofarm.prj.customer.service.impl.CustomerServiceImpl;
import co.cofarm.prj.customer.vo.CustomerVO;

public class CustomerJoin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// form에서 받아온 회원가입 정보 입력
		CustomerService dao = new CustomerServiceImpl();
		CustomerVO vo = new CustomerVO();
		String postcode = request.getParameter("postcode");
		String add = request.getParameter("address");
		String detailAdd = request.getParameter("detailAddress");
		String extraAdd = request.getParameter("extraAddress");
		String address = postcode + " " + add + " " + detailAdd + " " + extraAdd;
		String id = request.getParameter("id");
		System.out.println(id);
		System.out.println(address);
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("passwd"));
		vo.setName(request.getParameter("name"));
		vo.setEmail(request.getParameter("email"));
		vo.setPhone(request.getParameter("phone"));
		vo.setAddress(address);
		int n = dao.customerInsert(vo);
		String message = "입력이 실패했습니다.";
		if(n > 0) {
			message ="회원가입이 정상적으로 이루어졌습니다.";
		}
		request.setAttribute("message", message);
		return "customer/customerJoin.tiles";
	}
}
