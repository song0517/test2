package co.cofarm.prj.place.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.place.service.PlaceService;
import co.cofarm.prj.place.service.impl.PlaceServiceImpl;
import co.cofarm.prj.place.vo.PlaceVO;

public class PlaceDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int farmCode = Integer.parseInt(request.getParameter("farmCode"));
		
		PlaceService service = new PlaceServiceImpl();
		int r = service.placeDelete(farmCode);
		String message = "정보 삭제를 실패했습니다.";
		if(r > 0) {
			message ="정보삭제가 정상적으로 이루어졌습니다.";
		}
		request.setAttribute("message", message);
		
		return "main/main.tiles";
	}

}
