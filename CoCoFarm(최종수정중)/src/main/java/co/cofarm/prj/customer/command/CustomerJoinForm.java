package co.cofarm.prj.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;

public class CustomerJoinForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일반회원가입 폼 호출
		return "customer/customerJoinForm.tiles";
	}

}
