package co.cofarm.prj.farmer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.customer.service.CustomerService;
import co.cofarm.prj.customer.service.impl.CustomerServiceImpl;

public class farmerAccept implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 농업인으로 신청한 사람 회원정보로 가서 권한 바꿔주기
		System.out.println("농업인 등록");
		CustomerService dao = new CustomerServiceImpl();//권한정보는 일반회원에있어서
		String btnid = request.getParameter("btnId");
		int n = dao.customerToFarmer(btnid);
		String result = "1";
		if(n > 0) { // 성공했을 시 result값에 0넣어서 보내기.
			result = "0";
		}
		return "ajax:" + result;
	}

}
