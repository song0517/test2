package co.cofarm.prj.bag.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.cofarm.prj.bag.service.BagService;
import co.cofarm.prj.bag.service.impl.BagServiceImpl;
import co.cofarm.prj.bag.vo.BagVO;
import co.cofarm.prj.common.Command;

public class bagInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		String saveshop = request.getSession().getServletContext().getRealPath("/shopping");
		System.out.println(saveshop);

		String encod = "UTF-8";
		int maxSize = 8*1024*1024;
		
		MultipartRequest multi = new MultipartRequest(
				request, 
				saveshop,
				maxSize,
				encod,
				new DefaultFileRenamePolicy()
				
		);
		
		int quantity = Integer.parseInt(request.getParameter("quantity")); // 개수
		String productName = request.getParameter("prodcutName");
		int price = Integer.parseInt(request.getParameter("price"));
		
		BagService dao = new BagServiceImpl();
		dao.bagInsert(new BagVO(productName, quantity, price));
		
		
		System.out.println("장바구니 들어감!!!!!!");

		
		
		return "bagList.do";

		
		
	}
}
