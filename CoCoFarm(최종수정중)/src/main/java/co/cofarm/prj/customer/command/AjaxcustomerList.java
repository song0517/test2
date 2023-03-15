package co.cofarm.prj.customer.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.cofarm.prj.common.Command;
import co.cofarm.prj.customer.service.CustomerService;
import co.cofarm.prj.customer.service.impl.CustomerServiceImpl;
import co.cofarm.prj.customer.vo.CustomerVO;

public class AjaxcustomerList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CustomerService dao = new CustomerServiceImpl();
		List<CustomerVO> customers = new ArrayList<>();
		ObjectMapper objectMapper = new ObjectMapper(); //list를 json으로
		
		String auth = request.getParameter("author");
		String list = null ;
		System.out.println(auth);
		customers = dao.customerSelectList(auth);
		System.out.println(customers);
		try {
			list = objectMapper.writeValueAsString(customers); //json을 String으로 변환
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return "ajax:" + list;
	}
}
