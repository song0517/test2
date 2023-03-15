package co.cofarm.prj.farmer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;

public class FarmerJoinForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 농업인 회원가입 폼으로 보내기
		return "farmer/farmerJoinForm.tiles";
	}

}
