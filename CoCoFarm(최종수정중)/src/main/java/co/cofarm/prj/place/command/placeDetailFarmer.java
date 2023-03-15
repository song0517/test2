package co.cofarm.prj.place.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.place.service.PlaceService;
import co.cofarm.prj.place.service.impl.PlaceServiceImpl;
import co.cofarm.prj.place.vo.PlaceVO;

public class placeDetailFarmer implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		
		PlaceService service = new PlaceServiceImpl();
		PlaceVO vo = new PlaceVO();
		vo = service.placeSelectFarm(id);
		
		request.setAttribute("farms", vo);
		System.out.println(vo);
		
		return "place/placeDetailFarmer.tiles";
	}

}
