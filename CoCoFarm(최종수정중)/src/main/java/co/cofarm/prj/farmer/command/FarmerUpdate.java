package co.cofarm.prj.farmer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.farmer.service.FarmerService;
import co.cofarm.prj.farmer.service.impl.FarmerServiceImpl;
import co.cofarm.prj.farmer.vo.FarmerVO;

public class FarmerUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 농장정보 업데이트 처리
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
		vo.setFarmAcc(Integer.parseInt(request.getParameter("farmacc")));
		int n = dao.farmerUpdate(vo);
		String message ="농장 정보 수정 실패";
		if(n>0) {
			message = "농장 정보 수정 완료";
		}
		request.setAttribute("message", message);
		return "mypage/myPageMessage.tiles";
	}

}
