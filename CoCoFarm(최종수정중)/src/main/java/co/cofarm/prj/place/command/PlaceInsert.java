package co.cofarm.prj.place.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.place.service.PlaceService;
import co.cofarm.prj.place.service.impl.PlaceServiceImpl;
import co.cofarm.prj.place.vo.PlaceVO;

public class PlaceInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String saveDir = request.getSession().getServletContext().getRealPath("/productUpload/");
		System.out.println(saveDir);
		
		String encod = "UTF-8";
		int maxSize = 8*1024*1024;
		
		MultipartRequest mr = new MultipartRequest (
				request, //요청정보
				saveDir, //저장위치
				maxSize, //파일크기
				encod, //인코딩방식
				new DefaultFileRenamePolicy()//리네임 정책.	
		);
		
		String pfile = mr.getFilesystemName("image");
		String ofile = mr.getOriginalFileName("image");	
		String farmPlace = mr.getParameter("farmPlace");
		String farmName = mr.getParameter("farmName");
		String farmId = mr.getParameter("id");
		String farmAdress = mr.getParameter("farmAdress");
		String farmPhone = mr.getParameter("farmPhone");
		String farmProduct = mr.getParameter("farmProduct");
		String farmContent = mr.getParameter("farmContent");
		
		double farmLat = Double.parseDouble(mr.getParameter("farmLat"));
		double farmLon = Double.parseDouble(mr.getParameter("farmLon"));
		
		PlaceService service = new PlaceServiceImpl();
		PlaceVO voList = new PlaceVO();
		
		voList.setFarmPlace(farmPlace);
		voList.setFarmName(farmName);
		voList.setFarmId(farmId);
		voList.setFarmAddress(farmAdress);
		voList.setFarmPhone(farmPhone);
		voList.setFarmProduct(farmProduct);
		voList.setFarmContent(farmContent);
		voList.setFarmImage("productUpload"+"\\"+pfile);
		voList.setFarmImageSave(ofile);
		voList.setFarmLat(farmLat);
		voList.setFarmLon(farmLon);
		
		int r = service.placeInsert(voList);
		String message ="가게 정보 등록을 실패했습니다.";
		if(r>0) {
			message = "가게 정보 등록이 완료되었습니다!";
		}
		request.setAttribute("message", message);
		
		List<PlaceVO> vo = new ArrayList<PlaceVO>();
		vo = service.placeSelectList();
		request.setAttribute("places", vo);
		
		return "place/placeList.tiles";
	}

}
