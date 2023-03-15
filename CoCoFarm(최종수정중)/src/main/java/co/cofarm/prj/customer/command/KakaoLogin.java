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

public class KakaoLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 form에서 넘어와서 로그인 처리하는 페이지
		CustomerService dao = new CustomerServiceImpl();
		CustomerVO customer = new CustomerVO();
		HttpSession session = request.getSession();
		
		String id = request.getParameter("kakaoId");
		System.out.println(id);
		customer = dao.customerSelect(id);
		System.out.println(customer);
		String message = "카카오톡으로 로그인 실패";
		if (customer != null) {
			session.setAttribute("id", customer.getId());
			session.setAttribute("name", customer.getName());
			session.setAttribute("password", customer.getPassword());
			session.setAttribute("email", customer.getEmail());
			session.setAttribute("phone", customer.getPhone());
			session.setAttribute("address", customer.getAddress());
			session.setAttribute("auth", customer.getAuth());
			message = "카카오톡 로그인 성공!";
			request.setAttribute("message", message);
			return "main/main.tiles"; // 성공 시 메인으로 가기
		} else {
			request.setAttribute("kakaoAccount", id);
			return "customer/kakaoJoinForm.tiles";// 실패하면 가입창으로 (우선 임시로 수정창으로감)
		}
	}
}
