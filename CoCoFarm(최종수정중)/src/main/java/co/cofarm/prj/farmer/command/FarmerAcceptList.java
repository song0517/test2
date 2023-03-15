package co.cofarm.prj.farmer.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.farmer.service.FarmerService;
import co.cofarm.prj.farmer.service.impl.FarmerServiceImpl;
import co.cofarm.prj.farmer.vo.FarmerVO;

public class FarmerAcceptList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 농업인 승인 대기 리스트
		FarmerService dao = new FarmerServiceImpl();
		List<FarmerVO> list = new ArrayList<>();
		list = dao.farmerAcceptList();
		System.out.println(list);
		request.setAttribute("list", list);
		return "farmer/farmerAcceptList.tiles";
	}

}
