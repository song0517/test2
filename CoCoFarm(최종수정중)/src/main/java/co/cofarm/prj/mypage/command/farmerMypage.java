package co.cofarm.prj.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;

public class farmerMypage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 농업인 마이페이지.jsp로 고고
		return "mypage/farmerMypage.tiles";
	}

}
