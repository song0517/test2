package co.cofarm.prj.customer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.customer.service.CustomerService;
import co.cofarm.prj.customer.service.impl.CustomerServiceImpl;
import co.cofarm.prj.customer.vo.CustomerVO;

public class CustomerDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CustomerService dao =  new CustomerServiceImpl();
		CustomerVO vo = new CustomerVO();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
		vo.setId(id);
		int n = dao.customerDelete(vo);
		String message = "회원탈퇴에 실패하였습니다.";
		if(n > 0) {
			message = "회원탈퇴를 완료하였습니다.";
		} 
		request.setAttribute("message", message);
		return "mypage/myPageMessage.tiles";
	}

}
