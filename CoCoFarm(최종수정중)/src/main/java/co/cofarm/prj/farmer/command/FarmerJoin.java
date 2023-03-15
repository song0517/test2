package co.cofarm.prj.farmer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.farmer.service.FarmerService;
import co.cofarm.prj.farmer.service.impl.FarmerServiceImpl;
import co.cofarm.prj.farmer.vo.FarmerVO;

public class FarmerJoin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 농업인 폼에서 받아온 정보로 농업인 회원가입
		FarmerService dao = new FarmerServiceImpl();
		FarmerVO vo = new FarmerVO();
		String postcode = request.getParameter("postcode");
		String add = request.getParameter("address");
		String detailAdd = request.getParameter("detailAddress");
		String extraAdd = request.getParameter("extraAddress");
		String address = postcode + " " + add + " " + detailAdd + " " + extraAdd;
		System.out.println(address);
		vo.setId(request.getParameter("id"));
		vo.setFarmName(request.getParameter("farmname"));
		vo.setFarmPhone(request.getParameter("farmphone"));
		vo.setFarmAddress(address);
		
		int farmAcc = Integer.parseInt(request.getParameter("farmacc"));
		System.out.println(farmAcc);
		vo.setFarmAcc((farmAcc));
		
		int n = dao.farmerInsert(vo);
		String message = "농업인 등록에 실패했습니다.";
		if(n > 0) {
			message ="농업인 등록에 성공하셨습니다. 승인을 기다려주세요.";
		}
		request.setAttribute("message", message);
		return "mypage/myPageMessage.tiles";
	}

}
