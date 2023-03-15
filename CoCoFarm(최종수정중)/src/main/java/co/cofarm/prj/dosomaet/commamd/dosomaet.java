package co.cofarm.prj.dosomaet.commamd;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;

public class dosomaet implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		return "dosomaet/dosomaet.tiles";
	}

}
