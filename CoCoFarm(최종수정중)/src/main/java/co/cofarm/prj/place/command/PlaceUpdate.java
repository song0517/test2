package co.cofarm.prj.place.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.place.service.PlaceService;
import co.cofarm.prj.place.service.impl.PlaceServiceImpl;
import co.cofarm.prj.place.vo.PlaceVO;

public class PlaceUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PlaceService service = new PlaceServiceImpl();
		
		int farmCode = Integer.parseInt(request.getParameter("farmCode"));
		System.out.println("0" + farmCode);
		
		String farmPlace = request.getParameter("farmPlace"); 
		System.out.println("1" + farmPlace);
		
		String postcode = request.getParameter("postcode");
		String add = request.getParameter("address");
		String detailAdd = request.getParameter("detailAddress");
		String extraAdd = request.getParameter("extraAddress");
		String farmAdress = postcode + " " + add + " " + detailAdd + " " + extraAdd;  
		System.out.println("2" + farmAdress);
		
		String farmPhone  = request.getParameter("farmPhone");
		System.out.println("3" + farmPhone);
		
		String farmProduct  = request.getParameter("farmProduct");
		System.out.println("4" + farmProduct);
		
		String farmContent  = request.getParameter("farmContent");
		System.out.println("5" + farmContent);
		
		
		//PlaceVO vo = new PlaceVO(farmCode, farmPlace, null, farmAdress, farmPhone, farmProduct, farmContent, null, null);
		
		//int r = service.placeUpdate(vo);
		
		String message ="가게 정보 수정을 실패했습니다.";
		/*if(r>0) {
			message = "가게 정보 수정이 완료되었습니다!";
		}
		request.setAttribute("message", message);*/
		
		return "main/main.tiles";
	}

}
