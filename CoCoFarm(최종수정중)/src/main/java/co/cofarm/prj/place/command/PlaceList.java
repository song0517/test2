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

public class PlaceList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PlaceService service = new PlaceServiceImpl();
		List<PlaceVO> vo = new ArrayList<PlaceVO>();
		
		vo = service.placeSelectList();
		
		
		request.setAttribute("places", vo);
		
		return "place/placeList.tiles";
	}

}
