package co.cofarm.prj.place.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.place.service.PlaceService;
import co.cofarm.prj.place.service.impl.PlaceServiceImpl;
import co.cofarm.prj.place.vo.PlaceVO;

public class PlaceDetail implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("연결성공했는가");
		int farmCode = Integer.parseInt(request.getParameter("farmCode"));
		System.out.println(farmCode);
		
		PlaceService service = new PlaceServiceImpl();
		PlaceVO vo = new PlaceVO();
		vo = service.placeSelect(farmCode);
		
		request.setAttribute("place", vo);
		
		return "place/placeDetail.tiles";
	}

}
