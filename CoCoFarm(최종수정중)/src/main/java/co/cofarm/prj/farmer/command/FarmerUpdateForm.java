package co.cofarm.prj.farmer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.farmer.service.FarmerService;
import co.cofarm.prj.farmer.service.impl.FarmerServiceImpl;
import co.cofarm.prj.farmer.vo.FarmerVO;

public class FarmerUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FarmerService dao = new FarmerServiceImpl();
		FarmerVO vo = new FarmerVO();
		HttpSession session = request.getSession();
		String sessionId = (String) session.getAttribute("id");
		vo.setId(sessionId);
		System.out.println(sessionId);
		vo = dao.farmerSelect(vo);
		System.out.println(vo);
		System.out.println(vo.getFarmName());
		System.out.println(vo.getFarmPhone());
		System.out.println(vo.getFarmAcc());
		session.setAttribute("farmName", vo.getFarmName());
		session.setAttribute("farmPhone",vo.getFarmPhone());
		session.setAttribute("farmAcc", vo.getFarmAcc());
		return "farmer/farmerUpdateForm.tiles";
	}
}
