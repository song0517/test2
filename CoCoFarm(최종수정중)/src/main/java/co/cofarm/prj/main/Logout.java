package co.cofarm.prj.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.cofarm.prj.common.Command;

public class Logout implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그아웃 처리 -> 세션지우기
		HttpSession session = request.getSession();
		String message = (String) session.getAttribute("name");
		message = message.concat("님 안녕히가세요!");
		request.setAttribute("message", message);
		session.invalidate(); //세션 자체 없애기
		return "main/main.tiles";
	}

}
