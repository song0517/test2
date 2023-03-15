package co.cofarm.prj.product.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.product.service.ProductService;
import co.cofarm.prj.product.service.impl.ProductServiceImpl;
import co.cofarm.prj.product.vo.ProductVO;

public class InputProduct implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//상품 등록
		String saveDir = request.getSession().getServletContext().getRealPath("/productUpload/");
		System.out.println(saveDir);
		String encod = "UTF-8";
		int maxSize = 8 * 1024 * 1024; //8메가 제한
		
		MultipartRequest mr = new MultipartRequest(
				request, //요청정보
				saveDir, //저장위치
				maxSize, //파일크기
				encod, //인코딩방식
				new DefaultFileRenamePolicy()//리네임 정책.			
			);
		
		//String fileName = mr.getFilesystemName("image");
		String pfile = mr.getFilesystemName("image"); //경로?를위한 파일 이름?
		String ofile = mr.getOriginalFileName("image"); //이용자가 올릴떄 파일이름.
		
		//세션가져오기
		//HttpSession session = request.getSession();
		
		//String id = (String) session.getAttribute("id");
		
		String id = mr.getParameter("id");
		String productClass = mr.getParameter("productClass");
		String name = mr.getParameter("name");
		
		String content = mr.getParameter("content");
		int price = Integer.parseInt(mr.getParameter("price"));
		
		System.out.println(id + productClass + name + content + price);
		
		
		ProductService service = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		vo.setProductClass(productClass);
		vo.setProductName(name);
		vo.setProductContent(content);
		vo.setProductPrice(price);
		vo.setProductImage1("productUpload"+"\\"+pfile); //경로를 만들어주기
		vo.setProductImage2(ofile);
		vo.setFarmerId(id);
		int r = service.productInsert(vo);
		String message = "상품 등록이 완료되었습니다! 🎉";
		
		if(r>0) {
			request.setAttribute("msg", message);
			return "product/forAlert.tiles";
		}
		
		return "main/main.tiles";
	}

}
