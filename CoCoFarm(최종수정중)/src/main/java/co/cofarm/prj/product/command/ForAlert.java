package co.cofarm.prj.product.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;

public class ForAlert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 상품 입력시 성공 alert창 띄우기 
		String msg = request.getParameter("msg");
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", "forAlert.do");
		return "product/forAlert.tiles";
	}

}
