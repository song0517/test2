package co.cofarm.prj.place.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.board.vo.BoardVO;
import co.cofarm.prj.common.Command;
import co.cofarm.prj.place.vo.PlaceVO;

public class PlaceUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("업데이트");
		int farmCode = Integer.parseInt(request.getParameter("farmCode"));
		System.out.println(farmCode);
		String farmPlace = request.getParameter("farmPlace");
		
		String farmId = request.getParameter("farmId");
		String farmName  = request.getParameter("farmName");
		String farmAddress  = request.getParameter("farmAddress");  
		String farmPhone  = request.getParameter("farmPhone");
		String farmProduct  = request.getParameter("farmProduct");
		String farmContent  = request.getParameter("farmContent");
		
		PlaceVO vo = new PlaceVO(farmCode, farmId, farmPlace, farmAddress, farmName, farmPhone, null, farmContent, null, null, 0, 0);
		request.setAttribute("updatePlace", vo);
		
		return "place/placeUpdateForm.tiles";
	}
}
