package co.cofarm.prj.market.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.market.service.MarketService;
import co.cofarm.prj.market.service.impl.MarketServiceImpl;
import co.cofarm.prj.market.vo.MarketVO;
import co.cofarm.prj.place.service.PlaceService;
import co.cofarm.prj.place.service.impl.PlaceServiceImpl;
import co.cofarm.prj.place.vo.PlaceVO;

public class MarketInsert implements Command {

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
		String farmerId = mr.getParameter("id");
		String marketName = mr.getParameter("marketName");
		String marketPhone = mr.getParameter("marketPhone");
		String marketAdress = mr.getParameter("marketAdress");
		String marketContent = mr.getParameter("marketContent");
		double marketLat = Double.parseDouble(mr.getParameter("marketLat"));
		double marketLon = Double.parseDouble(mr.getParameter("marketLon"));
		
		
		MarketService service = new MarketServiceImpl();
		MarketVO vo = new MarketVO();
		
		vo.setFarmerId(farmerId);
		vo.setMarketName(marketName);
		vo.setMarketPhone(marketPhone);
		vo.setMarketAdress(marketAdress);
		vo.setMarketContent(marketContent);
		vo.setMarketLat(marketLat);
		vo.setMarketLon(marketLon);
		vo.setMarketImage("productUpload"+"\\"+pfile);
		vo.setMarketImageSave(ofile);
		
		int r = service.marketInsert(vo);
		String message ="가게 정보 등록을 실패했습니다.";
		if(r>0) {
			message = "가게 정보 등록이 완료되었습니다!";
		}
		request.setAttribute("message", message);

		return "market/marketInsert.tiles";
	}

}
