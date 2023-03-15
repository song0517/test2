package co.cofarm.prj.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.customer.service.CustomerService;
import co.cofarm.prj.customer.service.impl.CustomerServiceImpl;
import co.cofarm.prj.customer.vo.CustomerVO;

public class CustomerUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일반회원 수정할 정보 받아와서 처리
		CustomerService dao = new CustomerServiceImpl();
		CustomerVO vo = new CustomerVO();
		String postcode = request.getParameter("postcode");
		String add = request.getParameter("address");
		String detailAdd = request.getParameter("detailAddress");
		String extraAdd = request.getParameter("extraAddress");
		String address = postcode + " " + add + " " + detailAdd + " " + extraAdd;
		System.out.println(address);
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("passwd"));
		vo.setName(request.getParameter("name"));
		vo.setEmail(request.getParameter("email"));
		vo.setPhone(request.getParameter("phone"));
		vo.setAddress(address);
		int n = dao.customerUpdate(vo);
		String message = "회원정보 수정이 실패하였습니다.";
		if(n > 0) {
			message ="회원정보 수정이 완료되었습니다.";
		}
		request.setAttribute("message", message);
		return "mypage/myPageMessage.tiles";
	}

}
