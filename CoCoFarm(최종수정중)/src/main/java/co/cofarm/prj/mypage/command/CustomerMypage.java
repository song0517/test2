package co.cofarm.prj.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;

public class CustomerMypage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 일반회원 마이페이지로 이동
		return "mypage/myPage.tiles";
	}

}
