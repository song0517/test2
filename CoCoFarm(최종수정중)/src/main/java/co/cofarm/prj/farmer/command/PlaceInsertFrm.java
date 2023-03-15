package co.cofarm.prj.farmer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.farmer.service.FarmerService;
import co.cofarm.prj.farmer.service.impl.FarmerServiceImpl;
import co.cofarm.prj.farmer.vo.FarmerVO;
import co.cofarm.prj.place.service.PlaceService;
import co.cofarm.prj.place.service.impl.PlaceServiceImpl;
import co.cofarm.prj.place.vo.PlaceVO;

public class PlaceInsertFrm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FarmerService dao = new FarmerServiceImpl();
		String id = request.getParameter("id");
		FarmerVO vo = dao.farmerFind(id);
		
		request.setAttribute("farmer", vo);
		System.out.println(vo);
		
		PlaceService dao2 = new PlaceServiceImpl();
		PlaceVO vo2 = dao2.placeSelectFarm(id);
		request.setAttribute("farmerCheck", vo2);
		System.out.println(vo2);
		
		return "place/placeInsertFrm.tiles";
	}

}
