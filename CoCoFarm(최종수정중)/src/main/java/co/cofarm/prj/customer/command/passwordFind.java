package co.cofarm.prj.customer.command;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.RandomStringUtils;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.customer.service.CustomerService;
import co.cofarm.prj.customer.service.impl.CustomerServiceImpl;
import co.cofarm.prj.customer.vo.CustomerVO;

public class passwordFind implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 아이디를 받아와서 거기에 대한 이메일 값을 얻어오고.. 메일보내야함.
		CustomerService dao = new CustomerServiceImpl();
		String id = request.getParameter("id");   //입력한 아이디값 받아오기
		CustomerVO result = dao.customerSelect(id);  //id로 검색함.
	
		String crtfcNo = RandomStringUtils.randomNumeric(6); 
		System.out.println(result);
		System.out.println(crtfcNo);
		String message = "변경된 비밀번호를 발송하였습니다.";
		if(result != null) {
			dao.passwordChange(id, crtfcNo); //비번을 난수여섯자리로 바꾸기
			String title = "CoCoFarm에서 변경된 비밀번호를 알려드립니다.";
			String content = result.getName()+"님 "+crtfcNo+"로 비밀번호가 변경되었습니다.";
			dao.sendMail("CoCoFarm", result.getEmail(), title, content);
			System.out.println("메일발송");
			
//			HttpUtil.forward(req, resp, "login/sendPWSucess.tiles");
			request.setAttribute("message", message);
			return "customer/sendPassword.tiles"; 
		} else {
			message = "아이디가 존재하지 않습니다.";
			request.setAttribute("message", message);
			return "customer/sendPassword.tiles";
		}
		
	}
	
}
